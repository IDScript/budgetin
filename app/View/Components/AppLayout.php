<?php

namespace App\View\Components;

use Illuminate\View\Component;
use App\Models\Navigation;
use Illuminate\View\View;

class AppLayout extends Component
{
    /**
     * Create the component instance.
     */
    public $title;
    public function __construct($title = null)
    {
        $this->title = $title;
    }

    public function render(): View
    {
        $role = auth()->user()->role;
        $navs = Navigation::where('user_role', $role)->orderBy('priority', 'asc')->get();
        return view('layouts.app', [
            'navs' => $navs
        ]);
    }
}
