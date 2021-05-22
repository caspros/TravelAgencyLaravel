<?php

namespace App\Http\Controllers;

use App\Models\Details;
use App\Models\Role;
use App\Models\Travel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DetailsController extends Controller
{
    public function __construct(){
        $this->details = new Details();
    }

    public function form(Travel $travel, Details $details, $t, Role $role)
    {
        $this->authorize('view', $role);

        $travelExists = Travel::where('id', $t)->exists();
        abort_unless($travelExists, 404);

        $terms = DB::table('travel')->join('details','details.travel_id','=','travel.id')
            ->where('travel.id', $t)
            ->select( 'details.*')->get();


        return view('admin.travels.create_term', compact('travel', 'details'), ['t'=>$t, 'terms'=>$terms]);
    }

    public function store(Request $request, $t)
    {
        $data = request()->validate([
            'start_date' => 'required',
            'finish_date' => 'required',
            'price' => 'required',
            'max_participants' => 'required',
        ]);

        for($i=0; $i < count($data['price']); $i++)
        {
            $details = $this->details->create([
                'travel_id' => $t,
                'start_date' => $data['start_date'][$i],
                'finish_date' => $data['finish_date'][$i],
                'price' => $data['price'][$i],
                'max_participants' => $data['max_participants'][$i],
            ]);
            if($details)
            {
                DB::commit();
            } else {
                DB::rollback();
            }
        }
        return redirect('/travel/' . $t);
    }

    public function update($t, Request $request)
    {
        foreach($request->id as $key => $value)
        {
            $term = Details::find($value);
            $term->price = $request->price[$key];
            $term->max_participants = $request->max_participants[$key];
            $term->start_date = $request->start_date[$key];
            $term->finish_date = $request->finish_date[$key];
            $term->save();
        }

        return redirect("/travel/{$t}");
    }

    public function delete($d)
    {
        try {
            $details = DB::table('details')->where('id','=',$d)->delete();
            if($details) {
                DB::commit();
            } else {
                DB::rollback();
            }
            return redirect()->back();
        }
        catch (\Exception $ex){
            DB::rollback();
            return redirect()->back();
        }
    }
}
