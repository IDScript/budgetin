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
            'link' => 'home',
            'priority' => '0',
            'user_role' => 'member'
        ]);
        Navigation::create([
            'nav' => "Wallet",
            'icon' => 'account_balance_wallet',
            'link' => 'wallet',
            'priority' => '1',
            'user_role' => 'member'
        ]);
        Navigation::create([
            'nav' => "Report",
            'icon' => 'home_storage',
            'link' => 'report',
            'priority' => '2',
            'user_role' => 'member'
        ]);
        Navigation::create([
            'nav' => "Setting",
            'icon' => 'settings',
            'link' => 'settings',
            'priority' => '3',
            'user_role' => 'member'
        ]);
        Navigation::create([
            'nav' => "Account",
            'icon' => 'person',
            'link' => 'profile',
            'priority' => '4',
            'user_role' => 'member'
        ]);
        Navigation::create([
            'nav' => "Account",
            'icon' => 'person',
            'link' => 'profile',
            'priority' => '4',
            'user_role' => 'admin'
        ]);
    }
}
