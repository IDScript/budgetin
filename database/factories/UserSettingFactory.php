<?php

namespace Database\Factories;

use App\Models\UserSetting;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\UserSetting>
 */
class UserSettingFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $x = 0;
        $anyUserSetting = UserSetting::select('id')->first();

        if(isset($anyUserSetting)){
            $lastNumber = UserSetting::select('id')->orderByDesc('id')->first();
            $x = $lastNumber->id;
        }
        
        $number = $x + 1;
        return [
            'user_id'=>$number,
            'hide_balance'=> fake()->boolean(),
            'hide_notif'=> fake()->boolean()
        ];
    }
}
