<!-- buttom fixed navigation -->
<nav class="fixed inset-x-0 bottom-0 flex justify-between bg-white text-sm uppercase dark:bg-gray-800">
  @foreach ($navs as $nav)
    <x-nav-link href="{{ $nav->link }}" data="{{ $nav->link }}">
      <span class="material-symbols-sharp">
        {{ $nav->icon }}
      </span>
      <p>
        {{ $nav->nav }}
      </p>
    </x-nav-link>
  @endforeach
</nav>
