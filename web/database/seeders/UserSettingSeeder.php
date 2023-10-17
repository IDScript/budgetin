<?php

namespace Database\Seeders;

use App\Models\UserSetting;
use Illuminate\Database\Seeder;

class UserSettingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        UserSetting::create([
            'user_id'=>1,
            'hide_balance'=>0,
            'hide_notif'=>1
        ]);
    }
}
