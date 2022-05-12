<?php

use App\Http\Controllers\CertificateFieldsController;
use App\Http\Controllers\CertificatesController;
use App\Http\Controllers\CertificateUsersController;
use App\Http\Controllers\ReplaceConvertController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/', function () {
    return response()->json([
        'message' => 'Welcome to the UTS Services API'
    ]);
});

Route::get('/csrf-token', function () {
    return response()->json(['csrf_token' => csrf_token()]);
});

Route::get('/csrf-cookie', function () {
    return response()->json(['csrf_token' => csrf_token()]);
});

// Route group
Route::group(['prefix' => 'certificates'], function () {
    // certificates
    Route::get('/', [CertificatesController::class, 'index']);
    Route::get('/{certificates}', [CertificatesController::class, 'show']);
    Route::post('/', [CertificatesController::class, 'store']);
    Route::put('/{certificates}', [CertificatesController::class, 'update']);
    Route::delete('/{certificates}', [CertificatesController::class, 'destroy']);
    Route::post('/upload', [CertificatesController::class, 'upload']);
    // certificate fields
    Route::get('/{certificates}/fields', [CertificateFieldsController::class, 'index']); 
    Route::post('/{certificates}/fields', [CertificateFieldsController::class, 'store']);
    Route::delete('/{certificates}/fields/{certificate}', [CertificateFieldsController::class, 'destroy']);
    // certificate users
    Route::get('/{certificates}/users', [CertificateUsersController::class, 'index']);
    Route::get('/{certificates}/users/{users}', [CertificateUsersController::class, 'show']);
    Route::post('/{certificates}/users', [CertificateUsersController::class, 'store']);
    Route::put('/{certificates}/users/{users}', [CertificateUsersController::class, 'update']);
    Route::delete('/{certificates}/users/{users}', [CertificateUsersController::class, 'destroy']);
    // create certificate
    // Route::get('/create/{certificates}/users/{users}', [ReplaceConvertController::class, 'createCertificates']);
    Route::get('/createCertificates', [ReplaceConvertController::class, 'createCertificates']);
});
