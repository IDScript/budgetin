<?php

namespace App\Http\Controllers\Api\Auth;

use Illuminate\Http\Request;
use App\Http\Resources\UserResource;
use App\Http\Controllers\Controller;

class LoginController extends Controller {
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(Request $request) {
        $credentials = $request->validate([
            'email' => ['required'],
            'password' => ['required'],
        ]);

        if (auth()->attempt($credentials)) {
            /** @var \App\Models\User $user **/
            $user = auth()->user();
            $user->tokens()->delete();

            return (new UserResource($user))->additional([
                'token' => $user->createToken($request->email)->plainTextToken,
            ]);
        }

        return response()->json([
            'message' => 'Your credential does not match.',
        ], 401);
    }
}
