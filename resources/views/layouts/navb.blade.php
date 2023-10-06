<!-- buttom fixed navigation -->
<nav
	class="fixed bottom-0 inset-x-0 bg-white dark:bg-gray-800 flex justify-between text-sm text-gray-900 dark:text-gray-100 uppercase">
	@foreach ($navs as $nav)
	<a href="{{ $nav->link }}" class="w-full block p-2 text-center hover:bg-gray-200 hover:text-gray-800">
		<span class="material-symbols-sharp">
			{{ $nav->icon }}
		</span>
		<p>
			{{ $nav->nav }}
		</p>
	</a>
	@endforeach
</nav>