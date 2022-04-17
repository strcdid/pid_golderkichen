<?php

use App\Http\Controllers\CounterController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\DB;

use App\Http\Controllers\KontakController;
use App\Http\Controllers\SEOController;

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


Route::get('/', [SEOController::class, 'index'])->name('index');

Route::get('/about', function () {
    return view('view/about');
});

Route::get('/service', function () {
    return view('view/service');
});

Route::get('/service/detail', function () {
    if (empty($_GET['id'])){
        return redirect('/service');
    }else{
        return view('view/servicedetail');
    }
});

Route::get('/portfolio/detail', function () {
    if (empty($_GET['id'])){
        return redirect('/portofolio');
    }else{
        return view('view/portfoliodetail');
    }
});


Route::get('/portofolio', function () {
    return view('view/portofolio');
});

Route::get('/catalog', function () {
    return view('view/catalog');
});

Route::get('/make', function () {
    return view('onlink/section1');
});

Route::get('Contac', [KontakController::class, 'index']);
Route::get('contact', [KontakController::class, 'index'])->name('kontak');
Route::post('otpos', [KontakController::class, 'store'])->name('kontik');
Route::post('counter', [CounterController::class, 'index'])->name('counter');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
