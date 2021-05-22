<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\Travel;
use App\Models\Images;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Intervention\Image\Facades\Image;

class ImagesController extends Controller
{
    public function __construct(){
        $this->images = new Images();
    }

    public function index(Role $role, Travel $travel, $t)
    {
        $this->authorize('view', $role);

        $travelExists = Travel::where('id', $t)->exists();
        abort_unless($travelExists, 404);

        $data = Images::all();
        return view('admin.travels.create_images', compact('data', 'travel'), ['t'=>$t]);
    }

    public function create(Images $image)
    {
        return view('admin.create', compact('image'));
    }

    public function store(Request $request, Travel $travel, $t)
    {
        $this->validate($request, [
            'images' => 'required',
            'images.*' => 'image|mimes:jpeg,png,gif,jpg,svg|max:2048'
        ]);

        if($request->hasfile('images'))
        {
            foreach($request->file('images') as $img)
            {
                $imagePath = $img->store('gallery', 'public');
                $image = Image::make(public_path("storage/{$imagePath}"))->fit(1200, 1200);
                $image->save();

                $images = $this->images->create([
                    'travel_id' => $t,
                    'image' => $imagePath,
                ]);
                if($images)
                {
                    DB::commit();
                } else {
                    DB::rollback();
                }
            }
        }

        return redirect('/travel/' . $t);
    }
}
