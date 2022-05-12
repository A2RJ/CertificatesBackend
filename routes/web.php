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
    // QrCode::generate('Make me into a QrCode!', public_path('qr_code.svg'));
    // echo QrCode::generate('Make me into a QrCode!');
    return view('qr');
});

Route::post('/qrpost', function (Request $request) {
    // check if request has dataURL and is filetype image/png
    if ($request->has('dataURL')) {
        // get dataURL from request
        $dataURL = $request->input('dataURL');
        // get filetype from dataURL
        $filetype = substr($dataURL, 5, strpos($dataURL, ';') - 5);
        // get base64 encoded image from dataURL
        $base64 = substr($dataURL, strpos($dataURL, ',') + 1);
        // get image from base64 encoded image
        $image = base64_decode($base64);
        // get image filename
        $filename = time() . '.' . $filetype;
        // get image path
        $path = public_path('qr_code.png');
        // save image
        file_put_contents($path, $image);
        // return image path
        return $path;
    }
    // return error message
    return 'Error: invalid filetype or dataURL not found';
});

Route::get('/createCertificates', [ReplaceConvertController::class, 'createCertificates']);
Route::get('/replaceWord', [ReplaceConvertController::class, 'replaceWord']);
