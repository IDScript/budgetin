<?php

namespace App\Livewire\Layout;

use Livewire\Component;

class Navigation extends Component
{
    public $navs;
 
    public function mount($navs = null)
    {
        $this->navs = $navs;
    }
    
    public function render()
    {
        return view('livewire.layout.navigation');
    }
}
