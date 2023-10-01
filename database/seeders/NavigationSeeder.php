<?php

namespace Database\Seeders;

use App\Models\Navigation;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class NavigationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Navigation::create([
            'nav' => "Home",
            'icon' => 'home',
            'priority' => '0',
            'user_id' => 1
        ]);
        Navigation::create([
            'nav' => "Setting",
            'icon' => 'settings',
            'priority' => '2',
            'user_id' => 1
        ]);
        Navigation::create([
            'nav' => "Account",
            'icon' => 'person',
            'priority' => '5',
            'user_id' => 1
        ]);
    }
}
