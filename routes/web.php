<?php

use App\Http\Controllers\API\Google;
use App\Http\Controllers\ReplaceConvertController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use SimpleSoftwareIO\QrCode\Facades\QrCode;

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

Route::get('/google', [Google::class, 'redirectToGoole']);
Route::get('/callback/google', [Google::class, 'handleGoogleCallback']);

Route::get('/', function () {
    return view('welcome');
});

Route::get('/qr', function (Request $request) {
    QrCode::generate('Make me into a QrCode!', public_path('qr_code.svg'));
    echo '<img src="'.asset('qr_code.svg').'">';
});

Route::get('/createCertificates', [ReplaceConvertController::class, 'createCertificates']);
Route::get('/replaceWord', [ReplaceConvertController::class, 'replaceWord']);
