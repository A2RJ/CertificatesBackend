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
        $post = [
            'name' => $request->name,
            'first_name' => $request->given_name,
            'last_name' => $request->family_name,
            'picture' => $request->picture,
            'provider' => 'google',
            'provider_id' => $request->sub,
            'locale' => $request->locale,
            'email' => $request->email,
        ];

        $user = User::where('email', $post['email'])->first();
        $user->tokens()->where('name', $request->email)->delete();

        // check if user exists, then return token
        if ($user) {
            return response()->json([
                'token' => $user->createToken($user->email)->plainTextToken,
                'message' => 'User already exists',
            ]);
        } else {
            $user = User::create($post);
            return response()->json([
                'token' => $user->createToken($user->email)->plainTextToken,
                'message' => 'User created',
            ]);
        }
    }

    public function getToken(Request $request)
    {
        $user = User::where('email', $request->email)->first();
        $user->tokens()->where('name', $request->email)->delete();
        return response()->json([
            'token' => $user->createToken($user->email)->plainTextToken,
        ]);
    }
}
