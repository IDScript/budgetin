<?php

namespace App\Http\Controllers;

use App\Models\Navigation;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Handle the incoming request.
     */
    public function __invoke(Request $request)
    {
        $nav = Navigation::where('user_id', 1)->orderBy('priority', 'asc')->get();

        return view('home', [
            'nav' => $nav
        ]);
    }
}
