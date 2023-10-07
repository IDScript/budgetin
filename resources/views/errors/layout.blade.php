<!DOCTYPE html>
<html lang="{{ str_replace("_", "-", app()->getLocale()) }}">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>@yield("title") | {{ config("app.name", "BudgetIn") }}</title>
  <link type="image/x-icon" href="https://github.com/KAnggara75.png" rel="shortcut icon">
  @vite(["resources/css/app.css", "resources/js/app.js"])
</head>

<body>
  <div class="flex-center position-ref full-height">
    <div class="content">
      <div class="title">
        @yield("message")
      </div>
    </div>
  </div>
</body>

</html>
