<?php

namespace App\Http\Controllers;

use App\Models\Details;
use App\Models\Orders;
use App\Models\Role;
use App\Models\Travel;
use App\Models\User;
use Illuminate\Auth\Access\Response;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Gate;

class OrdersController extends Controller
{
    protected $orders;
    public function __construct(){
        $this->orders = new Orders();
    }

    public function index(User $user, Orders $orders, Travel $travel, Details $details)
    {
        $this->authorize('view', $user->profile);

        $data = DB::table('orders')->where('user_id','=',$user->id)->paginate(10);

        return view('orders.index', compact('orders','travel','details', 'data'), ['o'=>Auth::user()->id]);
    }

    public function preview(Orders $orders, Details $details, Travel $travel, $o)
    {
        $orderExist = Orders::where('id', $o)->exists();
        abort_unless($orderExist, 404);

        $data = DB::table('orders')->where('id','=',$o)->first();
        $user = Auth::user();
        return $user->id === $data->user_id
            ? view('orders.order', compact('orders', 'details', 'travel'), ['o'=>$o, 'data'=>$data])
            : abort(403);
    }

    public function order_confirm(Request $request, Details $details, Travel $travel, Orders $orders)
    {
        $user = Auth::user();

        return $user
            ? view('orders.create', compact('request', 'details', 'travel', 'orders'))
            : view('auth.login');
    }

    public function store(Details $details, Orders $orders)
    {
        $data = request()->validate([
            'details_id' => 'required',
            'participants' => 'required',
            'price' => 'required',
            'user_id' => 'required',
        ]);

        try{
            if(($details->find($data['details_id'])->max_participants)-($orders->where('details_id','=',$data['details_id'])->sum('participants'))>=($data['participants']))
            {
                $order = $this->orders->create([
                    'payment_status' => 'brak wpłaty',
                    'user_id' => $data['user_id'],
                    'details_id' => $data['details_id'],
                    'participants' => $data['participants'],
                    'price' => $data['price']
                ]);
            }
            else
            {
                $order = false;
            }

            if($order)
            {
                DB::commit();
            } else {
                DB::rollback();
            }
            return redirect('/order/' . $order->id);
        }
        catch (\Exception $ex){
            DB::rollback();
            return redirect()->back();
        }
    }

    public function show_admin(Role $role, $o, Orders $order, Travel $travel, Details $details)
    {
        $this->authorize('view', $role);

        $orderExists = Orders::where('id', $o)->exists();
        abort_unless($orderExists, 404);

        return view('admin.orders.order', compact('order', 'travel', 'details'), ['o'=>$o]);
    }

    public function list(Role $role, Orders $order, User $user, Details $details, Travel $travel)
    {
        $this->authorize('view', $role);

        $data = DB::table('orders')->orderBy('created_at','DESC')->paginate(15);
        return view('admin.orders.index', compact('order', 'user','travel','details', 'data'));
    }

    public function edit(Role $role, Orders $orders, $o)
    {
        $this->authorize('view', $role);
        return view('admin.orders.edit', compact('orders'), ['o'=>$o]);
    }

    public function update($o)
    {
        $data = request()->validate([
            'payment_status' => 'required',
            'payment_date' => 'required',
        ]);

        try {
            $order = DB::table('orders')->where('id', '=', $o)->update($data);
            if($order) {
                DB::commit();
            } else {
                DB::rollback();
            }
            return redirect("/adminPanel/orders/");
        }
        catch (\Exception $ex){
            DB::rollback();
            return redirect()->back();
        }
    }

    public function delete($o, Role $role)
    {
        $this->authorize('view', $role);

        try {
            $order = DB::table('orders')->where('id','=',$o)->delete();
            if($order) {
                DB::commit();
            } else {
                DB::rollback();
            }
            return redirect('adminPanel/orders');
        }
        catch (\Exception $ex){
            DB::rollback();
            return redirect()->back();
        }
    }

}
