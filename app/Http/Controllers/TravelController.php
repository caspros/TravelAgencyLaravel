<?php

namespace App\Http\Controllers;

use App\Models\Images;
use App\Models\Orders;
use App\Models\Posts;
use App\Models\Role;
use App\Models\Travel;
use App\Models\Details;
use App\Models\User;
use Carbon\Carbon;
use Cviebrock\EloquentSluggable\Services\SlugService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;
use mysql_xdevapi\Exception;

class TravelController extends Controller
{
    protected $travel, $details;
    public function __construct(){
        $this->travel = new Travel();
        $this->details = new Details();
    }

    public function index(Travel $travel)
    {
        $data = DB::table('travel')
            ->join('details','details.travel_id','=','travel.id')
            ->groupBy('travel.id')
            ->take(4)->get();
        $data2 = DB::table('travel')
            ->join('details','details.travel_id','=','travel.id')
            ->groupBy('travel.id')
            ->orderBy('travel.id','desc')
            ->take(4)->get();

        $post = DB::table('posts')->orderBy('created_at','DESC')->first();
        return view('home', compact('travel'), ['data'=>$data, 'data2'=>$data2, 'post'=>$post]);
    }

    public function travel_list(Travel $travel, Details $details)
    {
        $currentTime = Carbon::now()->toDateTimeLocalString();
        $data = DB::table('travel')->paginate(8);
        $data_terms = DB::table('travel')
            ->join('details','details.travel_id','=','travel.id')
            ->whereDate('start_date','>=',$currentTime)
            ->orderBy('start_date','ASC')->get();
        return view('travel.index', compact('travel', 'details', 'data'), ['data_terms'=>$data_terms]);
    }

    public function list(Role $role)
    {
        $this->authorize('view', $role);
        $data = DB::table('travel')
            ->join('details','details.travel_id','=','travel.id')
            ->groupBy('travel.id')
            ->paginate(7);

        return view('admin.travels.index', compact('data'));
    }

    public function create(Role $role, Travel $travel)
    {
        $this->authorize('view', $role);
        return view('admin.travels.create', compact('travel'));
    }

    public function store()
    {
        $data = request()->validate([
            'title' => 'required',
            'short_description' => 'required',
            'description' => 'required',
            'program' => 'required',
            'image' => ['required', 'image'],
            'price' => 'required',
            'max_participants' => 'required',
            'start_date' => 'required',
            'finish_date' => 'required',
        ]);

        $imagePath = request('image')->store('uploads', 'public');

        $image = Image::make(public_path("storage/{$imagePath}"))->fit(1200, 1200);
        $image->save();

        try{
            $this->travel->slug = SlugService::createSlug(Travel::class, 'slug', $data['title']);

            $travel = $this->travel->create([
                'title' => $data['title'],
                'slug' => $this->travel->slug,
                'short_description' => $data['short_description'],
                'description' => $data['description'],
                'program' => $data['program'],
                'image' => $imagePath,
            ]);

            $details = $this->details->create([
                'travel_id' => $travel->id,
                'price' => $data['price'],
                'max_participants' => $data['max_participants'],
                'start_date' => $data['start_date'],
                'finish_date' => $data['finish_date'],
            ]);
            if($travel && $details)
            {
                DB::commit();
            } else {
                DB::rollback();
            }
            return redirect('/travel/' . $travel->id);
        }
        catch (\Exception $ex){
            DB::rollback();
            return redirect()->back();
        }
    }

    public function show_travel(Travel $travel, $t, Role $role, Orders $orders)
    {
        $travelExists = Travel::where('id', $t)->exists();
        abort_unless($travelExists, 404);

        $currentTime = Carbon::now()->toDateTimeLocalString();

        $images = $travel->Find($t)->images()->get();
        $terms = $travel->Find($t)->details()->whereDate('start_date','>=',$currentTime)
            ->orderBy('start_date','ASC')->get();

        return view('travel.travel', compact('travel', 'role', 'orders'), ['images'=>$images, 'terms'=>$terms, 't'=>$t]);
    }

    public function edit(Role $role, Travel $travel, $t)
    {
        $this->authorize('view', $role);
        $travelExists = Travel::where('id', $t)->exists();
        abort_unless($travelExists, 404);

        $terms = $travel->Find($t)->details()->get();

        return view('admin.travels.edit', compact('travel'), ['t'=>$t, 'terms'=>$terms]);
    }

    public function update($t)
    {
        $data = request()->validate([
            'title' => 'required',
            'description' => 'required',
            'short_description' => 'required',
            'program' => 'required',
        ]);

        try {
            $travel = DB::table('travel')->where('id', '=', $t)->update($data);
            if($travel)
            {
                DB::commit();
            } else {
                DB::rollback();
            }
            return redirect("/travel/{$t}");
        }
        catch (\Exception $ex){
            DB::rollback();
            return redirect()->back();
        }
    }


    public function delete(Role $role, $t)
    {
        $this->authorize('view', $role);

        try {
            $sumOrders = 0;
            $details_ids = DB::table('details')->where('travel_id','=',$t)->get();

            foreach($details_ids as $d)
            {
                $ordersSelect = DB::table('orders')->where('details_id','=',$d->id)->get();
                $ordersCount = count($ordersSelect);
                $sumOrders+=$ordersCount;
            }

            if($sumOrders==0)
            {
                //main image delete
                $travel_img = DB::table('travel')->where('id','=',$t)->select('image')->get();
                $imagePath="storage/{$travel_img[0]->image}";
                if(File::exists(public_path($imagePath))){
                    File::delete(public_path($imagePath));
                }

                //gallery image delete
                $travel_img = DB::table('images')->where('travel_id','=',$t)->select('image')->get();
                foreach ($travel_img as $img)
                {
                    $imagePath="storage/{$img->image}";
                    if(File::exists(public_path($imagePath))){
                        File::delete(public_path($imagePath));
                    }
                }

                $travel = DB::table('travel')->where('id','=',$t)->delete();
                $details = DB::table('details')->where('travel_id','=',$t)->delete();
            }

            if($travel && $details)
            {
                DB::commit();
            } else {
                DB::rollback();
            }
            return redirect('adminPanel/travels');
        }
        catch (\Exception $ex){
            DB::rollback();
            return redirect()->back();
        }
    }

    public static function getIdFromUrl()
    {
        $lastSegment = basename(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH));
        $id = $lastSegment;

        return $id;
    }

    public function checkSlug(Request $request)
    {
        $slug = SlugService::createSlug(Travel::class, 'slug', $request->title);

        return response()->json(['slug' => $slug]);
    }
}
