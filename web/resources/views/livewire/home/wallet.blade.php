<?php

use Livewire\Volt\Component;
use App\Models\Wallet;

new class extends Component {
    public $userWallet;
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
        $this->userWallet = Wallet::where("user_email", auth()->user()->email)->get();

        if (isset($this->userWallet)) {
        }
    }

    public function updated(): void
    {
        // $this->userWallet->save();
    }
};

?>

<ul class="divide-y divide-gray-100 text-gray-800 dark:divide-gray-900 dark:text-gray-200" role="list">
  <li class="flex items-center justify-between pb-2">
    <div class="flex min-w-0 gap-x-4">
      <div class="min-w-0 flex-auto">
        <p class="text-sm font-semibold leading-6">Dompet Saya</p>
      </div>
    </div>
    <div class="hidden shrink-0 sm:flex sm:flex-col sm:items-end">
      <a class="text-sm leading-6" wire:navigate href="wallet">Lihat Semua</a>
    </div>
  </li>
  @foreach ($userWallet as $wallet)
    <li class="flex justify-between gap-x-6 py-2">
      <div class="flex min-w-0 gap-x-4">
        <span
          class="material-symbols-sharp flex h-12 w-12 flex-none items-center justify-center rounded-full text-4xl outline outline-2 outline-gray-500 hover:text-cyan-400 hover:outline-cyan-400 dark:outline-gray-200">
          {{ $wallet->wallet_icon }}
        </span>
        <div class="min-w-0 flex-auto">
          <p class="text-sm font-semibold leading-6">{{ $wallet->wallet_name }}</p>
          <p class="mt-1 truncate text-xs leading-5 text-gray-500 dark:text-gray-400">{{ $wallet->user_email }}</p>
        </div>
      </div>
      <div class="hidden shrink-0 sm:flex sm:flex-col sm:items-end">
        <p class="text-sm leading-6">{{ $currancy . number_format($wallet->wallet_balance, 0, ",", ".") }}</p>
        <p class="mt-1 text-xs leading-5 text-gray-500 dark:text-gray-400">
          {{ \Carbon\Carbon::parse($wallet->updated_at)->diffForHumans() }}</p>
        <div class="mt-1 flex items-center gap-x-1.5">
          <div class="flex-none rounded-full bg-emerald-500/20 p-1">
            <div class="h-1.5 w-1.5 rounded-full bg-emerald-500"></div>
          </div>
          <p class="text-xs leading-5 text-gray-500 dark:text-gray-400">Online</p>
        </div>
      </div>
    </li>
  @endforeach
</ul>
