<?php

namespace App\Http\Controllers\Api\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;

class UserDelete extends Controller {
    public function __invoke() {
        User::truncate();

        return response('', 202);
    }
}
