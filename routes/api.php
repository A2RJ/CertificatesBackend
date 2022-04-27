<?php

use App\Http\Controllers\CertificateFieldsController;
use App\Http\Controllers\CertificatesController;
use App\Http\Controllers\CertificateUsersController;
use App\Models\User;
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

Route::get('/users', function () {
    $perPage = request()->has('perPage') ? request('perPage') : 10;
    if (request()->has('search')) {
        $users = User::where('name', 'LIKE', '%' . request('search') . '%')
            ->orWhere('email', 'LIKE', '%' . request('search') . '%')
            ->paginate($perPage);
    } else {
        $users = User::paginate($perPage);
    }
    return response()->json($users);
});

Route::get('/users/{search}', function ($search) {
    return response()->json(User::where('name', 'like', '%' . $search . '%')->orWhere('email', 'like', '%' . $search . '%')->paginate(10));
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
    Route::post('', [CertificatesController::class, 'store']);
    Route::put('/{certificates}', [CertificatesController::class, 'update']);
    Route::delete('/{certificates}', [CertificatesController::class, 'destroy']);
    Route::post('/upload', [CertificatesController::class, 'upload']);
    // certificate fields
    Route::get('/{certificates}/fields', [CertificateFieldsController::class, 'fields']);
    Route::get('/{certificates}/fields/{fields}', [CertificateFieldsController::class, 'field']);
    Route::post('/{certificates}/fields', [CertificateFieldsController::class, 'storeField']);
    Route::put('/{certificates}/fields/{fields}', [CertificateFieldsController::class, 'updateField']);
    Route::delete('/{certificates}/fields/{fields}', [CertificateFieldsController::class, 'destroyField']);
    // certificate users
    Route::get('/{certificates}/users', [CertificateUsersController::class, 'users']);
    Route::get('/{certificates}/users/{users}', [CertificateUsersController::class, 'user']);
    Route::post('/{certificates}/users', [CertificateUsersController::class, 'storeUser']);
    Route::put('/{certificates}/users/{users}', [CertificateUsersController::class, 'updateUser']);
    Route::delete('/{certificates}/users/{users}', [CertificateUsersController::class, 'destroyUser']);
});
