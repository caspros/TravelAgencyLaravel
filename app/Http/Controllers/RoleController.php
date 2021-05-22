<?php

namespace App\Http\Controllers;

use App\Models\Orders;
use App\Models\Travel;
use App\Models\Details;
use App\Models\User;
use App\Models\Role;
use Carbon\Carbon;
use Cviebrock\EloquentSluggable\Services\SlugService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Intervention\Image\Facades\Image;

class RoleController extends Controller
{
    public function index(Role $role, Travel $travel, Details $details)
    {
        $this->authorize('view', $role);
        $orders = DB::table('orders')->get();
        $last24hOrders = Orders::where("created_at",">", Carbon::now()->subDay())->get();
        $last30DaysOrders = Orders::where("created_at",">", Carbon::now()->subMonths(3))->get();
        $usersAmount = DB::table('users')->get();
        $travelsAmount = DB::table('travel')->get();
        $detailsAmount = DB::table('details')->get();

        return view('admin.index', compact( 'travel', 'details'),
            ['orders'=>$orders ,'last30DaysOrders'=>$last30DaysOrders, 'last24hOrders'=>$last24hOrders,
                'usersAmount'=>$usersAmount, 'travelsAmount'=>$travelsAmount, 'detailsAmount'=>$detailsAmount]);
    }
}
