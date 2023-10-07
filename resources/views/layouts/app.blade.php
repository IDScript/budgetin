<!DOCTYPE html>
<html lang="{{ str_replace("_", "-", app()->getLocale()) }}">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <title>{{ $title ?? "BudgetIn" }} | {{ config("app.name", "BudgetIn") }}</title>
  <!-- Fonts -->
  <link href="https://fonts.bunny.net" rel="preconnect">
  <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />
  {{-- App Icon --}}
  <link type="image/x-icon" href="https://github.com/KAnggara75.png" rel="shortcut icon">
  {{-- Icons --}}
  <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@24,400,1,0"
    rel="stylesheet" />
  <!-- Scripts -->
  @vite(["resources/css/app.css", "resources/js/app.js"])
</head>

<body class="font-sans antialiased">
  <div class="min-h-screen bg-gray-100 dark:bg-gray-900">
    <livewire:layout.navigation :$navs />

    <!-- Page Heading -->
    @if (isset($header))
      <header class="bg-white shadow dark:bg-gray-800">
        <div class="mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8">
          {{ $header }}
        </div>
      </header>
    @endif

    <!-- Page Content -->
    <main>
      {{ $slot }}
    </main>
  </div>
</body>

</html>
