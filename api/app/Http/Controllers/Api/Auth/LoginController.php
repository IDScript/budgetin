<?php

namespace App\Http\Controllers\Api\Auth;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Resources\UserResource;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller {
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(Request $request) {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
            'device' => 'required',
        ]);

        $user = User::where('email', $request->email)->first();
        $user->tokens()->where('expires_at', '<=', now())->delete();

        if (!$user || !Hash::check($request->password, $user->password)) {
            return response()->json([
                'message' => 'Your credential does not match.',
            ], 401);
        }

        return (new UserResource($user))->additional([
            'token' => $user->createToken($request->device, ['*'], now()->addSeconds(30))->plainTextToken,
        ]);
    }
}
