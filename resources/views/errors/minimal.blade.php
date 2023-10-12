<!DOCTYPE html>
<html lang="{{ str_replace("_", "-", app()->getLocale()) }}">

<head>
  <meta charset="utf-8">
  <meta http-equiv="refresh" content="3;url=/home" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>@yield("title") | {{ config("app.name", "BudgetIn") }}</title>
  <link type="image/x-icon" href="https://github.com/KAnggara75.png" rel="shortcut icon">
  @vite(["resources/css/app.css", "resources/js/app.js"])
</head>

<body class="antialiased">
  <div class="items-top relative flex min-h-screen justify-center bg-gray-100 dark:bg-gray-900 sm:items-center sm:pt-0">
    <div class="mx-auto max-w-xl sm:px-6 lg:px-8">
      <div class="flex items-center pt-8 sm:justify-start sm:pt-0">
        <div class="border-r border-gray-400 px-4 text-lg tracking-wider text-gray-500">
          @yield("code")
        </div>
        <div class="ml-4 text-lg uppercase tracking-wider text-gray-500">
          @yield("message")
        </div>
      </div>
    </div>
  </div>
</body>

</html>
