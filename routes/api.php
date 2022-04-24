<?php

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
    if (request()->has('search')) {
        $users = User::where('name', 'LIKE', '%' . request('search') . '%')
            ->orWhere('email', 'LIKE', '%' . request('search') . '%')
            ->paginate(10);
    } else {
        $users = User::paginate(10);
    }
    return response()->json($users);
});

Route::get('/users/{search}', function ($search) {
    return response()->json(User::where('name', 'like', '%' . $search . '%')->orWhere('email', 'like', '%' . $search . '%')->paginate(10));
});
