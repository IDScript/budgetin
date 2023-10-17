<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Wallet;

class WalletSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Wallet::create([
            'wallet_name' => "Dana",
            'wallet_icon' => 'person',
            'wallet_balance' => fake()->randomNumber(6, true),
            'user_email' => "kanggara75@gmail.com",
        ]);
        Wallet::create([
            'wallet_name' => "Cash",
            'wallet_icon' => 'wallet',
            'wallet_balance' => fake()->randomNumber(5, true),
            'user_email' => "kanggara75@gmail.com",
        ]);
        Wallet::create([
            'wallet_name' => "ATM",
            'wallet_icon' => 'home',
            'wallet_balance' => fake()->randomNumber(7, true),
            'user_email' => "kanggara75@gmail.com",
        ]);
    }
}
