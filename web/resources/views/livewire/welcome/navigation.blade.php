<div class="z-10 p-6 text-right sm:fixed sm:right-0 sm:top-0">
  @auth
    <a class="font-semibold text-gray-600 hover:text-sky-500 focus:rounded-sm focus:outline focus:outline-2 focus:outline-red-500 dark:text-sky-400 dark:hover:text-white"
      href="{{ url("/home") }}" wire:navigate>Dashboard</a>
  @else
    <a class="font-semibold text-gray-600 hover:text-sky-500 focus:rounded-sm focus:outline focus:outline-2 focus:outline-red-500 dark:text-sky-400 dark:hover:text-white"
      href="{{ route("login") }}" wire:navigate>Log in</a>
    @if (Route::has("register"))
      <a class="ml-4 font-semibold text-gray-600 hover:text-sky-500 focus:rounded-sm focus:outline focus:outline-2 focus:outline-red-500 dark:text-sky-400 dark:hover:text-white"
        href="{{ route("register") }}" wire:navigate>Register</a>
    @endif
  @endauth
</div>
