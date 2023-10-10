<?php

use function Livewire\Volt\{state};
use Livewire\Volt\Component;
use App\Models\User;

new class extends Component {
    public string $name = "";
    public string $email = "";
    public string $balance = "";
    public string $currancy = "Rp. ";
    public string $visible = "visibility";
    public string $balance_hide = "*********";
    public string $notif = "notifications_off";
    public string $balance_show = "123.456.789";

    public function mount(): void
    {
        $this->balance = $this->currancy . $this->balance_show;
        $this->name = auth()->user()->name;
        $this->email = auth()->user()->email;
    }

    public function notif_switch()
    {
        if ($this->notif == "notifications_active") {
            $this->notif = "notifications_off";
        } else {
            $this->notif = "notifications_active";
        }
    }

    public function hide_balance()
    {
        if ($this->visible == "visibility") {
            $this->balance = $this->balance_hide;
            $this->visible = "visibility_off";
        } else {
            $this->balance = $this->currancy . $this->balance_show;
            $this->visible = "visibility";
        }
    }
};
?>

<section>
  <div class="flex items-center justify-between text-xl font-semibold leading-tight text-gray-800 dark:text-gray-200">
    <h2 class="flex items-center justify-start text-xl font-semibold leading-tight text-gray-800 dark:text-gray-200">
      <button class="material-symbols-sharp mr-2" wire:click='hide_balance'>
        {{ $visible }}
      </button>
      <p>{{ $balance }}</p>
    </h2>
    <div class="material-symbols-sharp flex justify-end">
      <button class="" wire:click='notif_switch'>
        {{ $notif }}
      </button>
    </div>
  </div>
</section>
