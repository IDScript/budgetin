<?php

use Livewire\Volt\Component;
use App\Models\UserSetting;

new class extends Component {
    public $userSetting;
    public $hideNotif = false;
    public $isHideBalance = false;

    public string $balance = "";
    public string $currancy = "Rp. ";

    public string $visible = "visibility";

    public string $balance_hide = "*********";
    public string $notif = "notifications_off";
    public string $balance_show = "123.456.789";

    public function mount(): void
    {
        $this->userSetting = UserSetting::where("user_id", auth()->user()->id)->first();

        if (isset($this->userSetting)) {
            $this->hideNotif = $this->userSetting->hide_notif;
            $this->isHideBalance = $this->userSetting->hide_balance;

            if ($this->hideNotif) {
                $this->notif = "notifications_off";
            } else {
                $this->notif = "notifications_active";
            }
        }

        $this->visible = $this->isHideBalance ? "visibility_off" : "visibility";
        $this->balance = $this->isHideBalance ? $this->balance_hide : $this->currancy . $this->balance_show;
    }

    public function notif_switch()
    {
        if ($this->hideNotif) {
            $this->notif = "notifications_active";
        } else {
            $this->notif = "notifications_off";
        }
        $this->hideNotif = !$this->hideNotif;
    }

    public function hide_balance()
    {
        if ($this->isHideBalance == 1) {
            $this->isHideBalance = 0;
            $this->visible = "visibility";
            $this->balance = $this->currancy . $this->balance_show;
        } else {
            $this->isHideBalance = 1;
            $this->visible = "visibility_off";
            $this->balance = $this->balance_hide;
        }

        $this->userSetting->hide_balance = $this->isHideBalance;
    }

    public function dehydrate()
    {
        $this->userSetting->save();
    }
};
?>

<section>
  <div class="flex items-center justify-between text-xl font-semibold leading-tight text-gray-800 dark:text-gray-200">
    <h2 class="flex items-center justify-start text-xl font-semibold leading-tight text-gray-800 dark:text-gray-200">
      <button class="material-symbols-sharp mr-2" wire:click='hide_balance' wire:model="hide_balance">
        {{ $visible }}
      </button>
      <p>{{ $balance }}</p>
    </h2>
    <div class="material-symbols-sharp flex justify-end">
      <button class="" wire:click='notif_switch' wire:model="hide_notif">
        {{ $notif }}
      </button>
    </div>
  </div>
</section>
