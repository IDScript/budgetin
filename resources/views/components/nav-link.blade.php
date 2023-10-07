@props(['data'])

@php

$active = str_contains($data, request()->path());

$classes = ($active ?? false)
? 'block w-full p-2 text-center text-sky-400 hover:bg-gray-200'
: 'block w-full p-2 text-center text-gray-200 hover:bg-gray-200 hover:text-gray-800';

@endphp

<a wire:navigate {{ $attributes->merge(['class' => $classes]) }}>
    {{ $slot }}
</a>