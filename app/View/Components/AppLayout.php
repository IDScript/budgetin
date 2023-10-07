<?php

namespace App\View\Components;

use Illuminate\View\Component;
use App\Models\Navigation;
use Illuminate\View\View;

class AppLayout extends Component
{
    public function render(): View
    {
        $id = auth()->user()->id;
        $navs = Navigation::where('user_id', $id)->orderBy('priority', 'asc')->get();
        return view('layouts.app', [
            'navs' => $navs
        ]);
    }
}
