<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\UserSetting;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call([
            UserSeeder::class,
            WalletSeeder::class,
            UserSettingSeeder::class,
            NavigationSeeder::class,
        ]);
        User::factory(10)->create();
        UserSetting::factory(10)->create();
    }
}
