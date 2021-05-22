<?php

use App\Http\Controllers\DetailsController;
use App\Http\Controllers\ImagesController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\TravelController;
use App\Http\Controllers\PostsController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\OrdersController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Auth::routes();

Route::get('/home', [TravelController::class, 'index']);
Route::get('/', [TravelController::class, 'index']);
Route::get('/blog', [PostsController::class, 'index']);
Route::get('/travels', [TravelController::class, 'travel_list']);
Route::get('/blog/post/{p}', [PostsController::class, 'show']);
Route::get('/contact', [HomeController::class, 'contact']);
Route::get('/about', [HomeController::class, 'about']);


Route::prefix('profile')->group(function () {
    Route::get('/{user}' , [ProfileController::class, 'index'])->name('profile.show');
    Route::get('/{user}/edit' , [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/{user}' , [ProfileController::class, 'update'])->name('profile.update');
});

Route::get('/order/{o}' , [OrdersController::class, 'preview'])->name('orders.preview')->middleware('auth');
Route::get('/orders/{user}' , [OrdersController::class, 'index'])->name('orders.index');
Route::get('/order_confirm/' , [OrdersController::class, 'order_confirm']);
Route::post('/order_created/', [OrdersController::class, 'store']);


Route::prefix('adminPanel')->group(function () {
    //Panel routes
    Route::get('/', [RoleController::class, 'index'])->name('admin.index');

    //Travel listing + CRUD
    Route::get('/travels', [TravelController::class, 'list']);
    Route::get('/travel/create', [TravelController::class, 'create']);
    Route::post('/travel/', [TravelController::class, 'store']);
    Route::get('/travel/{t}/edit', [TravelController::class, 'edit']);
    Route::patch('/travel/updateTravel/{t}', [TravelController::class, 'update'])->name('travel.update');
    Route::patch('/travel/updateDetails/{t}', [DetailsController::class, 'update'])->name('details.update');
    Route::get('/travel/{t}/delete', [TravelController::class, 'delete']);
    Route::get('/travel/detailsDelete/{d}/delete' , [DetailsController::class, 'delete']);

    //Upload images to gallery
    Route::get('/travel/{t}/add_images_form', [ImagesController::class, 'index'])->name('images.index');
    Route::post('/travel/{t}/images_uploaded', [ImagesController::class, 'store'])->name('images.store');

    //Add new term to travel
    Route::get('/travel/{t}/add_term_form', [DetailsController::class, 'form'])->name('details.form');
    Route::post('/travel/{t}/term_added', [DetailsController::class, 'store'])->name('details.store');

    //Post listing + CRUD
    Route::get('/post/create', [PostsController::class, 'create'])->name('posts.create');
    Route::post('/post/', [PostsController::class, 'store'])->name('posts.store');
    Route::get('/posts', [PostsController::class, 'list'])->name('posts.list');
    Route::get('/post/{p}/edit', [PostsController::class, 'edit']);
    Route::patch('/post/{p}', [PostsController::class, 'update'])->name('posts.update');
    Route::get('/post/{p}/delete', [PostsController::class, 'delete']);

    //Orders
    Route::get('/order/{o}' , [OrdersController::class, 'show_admin']);
    Route::get('/order/{o}/delete' , [OrdersController::class, 'delete']);
    Route::get('/order/{o}/edit' , [OrdersController::class, 'edit']);
    Route::patch('/order/{o}/order_updated', [OrdersController::class, 'update']);
    Route::get('/orders', [OrdersController::class, 'list'])->name('orders.list');
});




Route::get('/travel/{id}' , [TravelController::class, 'show_travel'])->name('travel.show_travel');
