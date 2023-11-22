<!DOCTYPE html>
<html lang="{{ str_replace("_", "-", app()->getLocale()) }}">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  {{-- App icon --}}
  <link type="image/x-icon" href="https://github.com/KAnggara75.png" rel="shortcut icon">
  <title>Laravel x Tailwind CSS</title>
  @vite("resources/css/app.css")
</head>

<body class="antialiased">
  <div
    class="items-top relative flex min-h-screen justify-center bg-gray-100 py-4 dark:bg-gray-900 sm:items-center sm:pt-0">
    <livewire:welcome.navigation />
    <div class="invisible mx-auto max-w-6xl sm:px-6 md:visible lg:px-8">
      <div class="mt-4 flex justify-center sm:items-center sm:justify-between">
        <div
          class="ml-4 text-center text-2xl text-sky-400 hover:text-gray-900 focus:rounded-sm focus:outline focus:outline-2 focus:outline-red-500 dark:hover:text-sky-200">
          Laravel v{{ Illuminate\Foundation\Application::VERSION }} x
          Tailwind CSS
          <?php
          $packageJSON = json_decode(file_get_contents(base_path() . "/package.json"));
          $v = $packageJSON->devDependencies->tailwindcss;
          $out = str_replace("^", "v", $v);
          echo $out;
          ?>
          (PHP v{{ PHP_VERSION }})
        </div>
      </div>
    </div>
  </div>
</body>

</html>
