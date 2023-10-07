<?php

use App\Models\User;
use App\Providers\RouteServiceProvider;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Validation\Rule;
use Livewire\Volt\Component;

new class extends Component {
    public string $name = "";
    public string $email = "";

    public function mount(): void
    {
        $this->name = auth()->user()->name;
        $this->email = auth()->user()->email;
    }

    public function updateProfileInformation(): void
    {
        $user = auth()->user();

        $validated = $this->validate([
            "name" => ["required", "string", "max:255"],
            "email" => ["required", "email", "max:255", Rule::unique(User::class)->ignore($user->id)],
        ]);

        $user->fill($validated);

        if ($user->isDirty("email")) {
            $user->email_verified_at = null;
        }

        $user->save();

        $this->dispatch("profile-updated", name: $user->name);
    }

    public function sendVerification(): void
    {
        $user = auth()->user();

        if ($user->hasVerifiedEmail()) {
            $path = session("url.intended", RouteServiceProvider::HOME);

            $this->redirect($path);

            return;
        }

        $user->sendEmailVerificationNotification();

        session()->flash("status", "verification-link-sent");
    }

    public function logout(): void
    {
        auth()
            ->guard("web")
            ->logout();

        session()->invalidate();
        session()->regenerateToken();

        $this->redirect("/", navigate: true);
    }
}; ?>

<section>
  <header>
    <h2 class="text-lg font-medium text-gray-900 dark:text-gray-100">
      {{ __("Profile Information") }}
    </h2>
    
    <p class="mt-1 text-sm text-gray-600 dark:text-gray-400">
      {{ __("Update your account's profile information and email address.") }}
    </p>
  </header>

  <form class="mt-6 space-y-6" wire:submit="updateProfileInformation">
    <div>
      <x-text-input class="mt-1 block w-full" id="name" name="name" type="text" wire:model="name" required
        autofocus autocomplete="name" />
      <x-input-error class="mt-2" :messages="$errors->get('name')" />
    </div>

    <div>
      <x-text-input class="mt-1 block w-full" id="email" :placeholder="__('Email')" name="email" type="email" wire:model="email" required
        autocomplete="username" />
      <x-input-error class="mt-2" :messages="$errors->get('email')" />

      @if (auth()->user() instanceof MustVerifyEmail &&
              !auth()->user()->hasVerifiedEmail())
        <div>
          <p class="mt-2 text-sm text-gray-800 dark:text-gray-200">
            {{ __("Your email address is unverified.") }}

            <button
              class="rounded-md text-sm text-gray-600 underline hover:text-gray-900 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 dark:text-gray-400 dark:hover:text-gray-100 dark:focus:ring-offset-gray-800"
              wire:click.prevent="sendVerification">
              {{ __("Click here to re-send the verification email.") }}
            </button>
          </p>

          @if (session("status") === "verification-link-sent")
            <p class="mt-2 text-sm font-medium text-green-600 dark:text-green-400">
              {{ __("A new verification link has been sent to your email address.") }}
            </p>
          @endif
        </div>
      @endif
    </div>
    
    <div class="flex items-center gap-4 justify-between">
      <button
      class="inline-flex items-center rounded-md border border-transparent bg-gray-800 px-4 py-2 text-xs font-semibold uppercase tracking-widest text-white transition duration-150 ease-in-out hover:bg-gray-700 focus:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 active:bg-gray-900 dark:bg-gray-200 dark:text-gray-800 dark:hover:bg-white dark:focus:bg-white dark:focus:ring-offset-gray-800 dark:active:bg-gray-300"
        type="submit">
        {{ __("Update Profile") }}
      </button>
      <x-action-message on="profile-updated">
        {{ __("Saved.") }}
      </x-action-message>
      <button 
        class="inline-flex items-center rounded-md border border-transparent bg-amber-500 px-4 py-2 text-xs font-semibold uppercase tracking-widest text-gray-900 transition duration-150 ease-in-out hover:bg-gray-700 focus:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 active:bg-gray-900 dark:hover:bg-white dark:focus:bg-white dark:focus:ring-offset-gray-800 dark:active:bg-gray-300"
        wire:click="logout">
        {{ __("Log Out") }}
      </button>
    </div>
  </form>
</section>
