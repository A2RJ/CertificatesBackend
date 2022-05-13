<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Laravel\Socialite\Facades\Socialite;
// use Socialite;

class Google extends Controller
{
    public function redirectToGoole()
    {
        return Socialite::driver('google')->redirect();
    }

    public function handleGoogleCallback()
    {
        try {
            $user = Socialite::driver('google')->user();
            return response()->json($user);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    public function verify(Request $request)
    {
        // periksa apakah token (dari jwt params di nextjs) valid
        // $token = $request->input('token');
        // $user = Socialite::driver('google')->userFromToken($token);
        // return response()->json($user);

        // check is user valid
        $user = User::where('email', $request->input('email'))->first();
        if (!$user) {
            return response()->json(['error' => 'User not found'], 404);
        } else {
            $user['token'] = "Token";
            return response()->json($user);
        }
    }
}
