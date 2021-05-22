<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class ProfileController extends Controller
{
    public function index(User $user)
    {
        $this->authorize('view', $user->profile);

        return view('profile.index', compact('user'));
    }


   public function edit(User $user)
    {
        $this->authorize('update', $user->profile);

        return view('profile.edit', compact('user'));
    }

    public function update(User $user)
    {
        $data = request()->validate([
           'first_name' => 'required',
           'last_name' => 'required',
           'city' => 'required',
           'zip_code' => 'required|regex:/^([0-9]{2})(-[0-9]{3})?$/i',
           'address1' => 'required',
           'address2' => 'required',
           'phone' => 'required',
        ]);


        $user->profile->update($data);

        return redirect("/profile/{$user->id}");
    }
}
