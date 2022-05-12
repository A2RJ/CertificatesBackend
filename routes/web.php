<?php

use App\Http\Controllers\API\Google;
use App\Http\Controllers\UtilsController;
use Illuminate\Support\Facades\Route;

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
    return view('welcome');
});

Route::get('/google', [Google::class, 'redirectToGoole']);
Route::get('/callback/google', [Google::class, 'handleGoogleCallback']);

Route::get('/generateBarcode', [UtilsController::class, 'generateBarcode']);
Route::get('/postBarcode', [UtilsController::class, 'postBarcode']);

Route::get('/createCertificates', [UtilsController::class, 'createCertificates']);
Route::get('/replaceWord', [UtilsController::class, 'replaceWord']);
