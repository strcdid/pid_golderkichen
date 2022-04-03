<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\DB;

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

Route::get('/', function () {
    return view('view/index');
});

Route::get('/about', function () {
    return view('view/about');
});

Route::get('/service', function () {
    return view('view/service');
});

Route::get('/service/detail', function () {
    return view('view/servicedetail');
});

Route::get('/make', function () {
    return view('onlink/section1');
});

Route::get('/load', function () {
    return view('onlink/load');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
