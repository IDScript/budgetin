<x-app-layout title="Wallet">
  <x-slot name="header">
    <livewire:home.balance />
  </x-slot>
  <div class="p-6 pb-24 sm:pt-12">
    <div class="mx-auto max-w-3xl space-y-6 sm:px-6 lg:px-8">
      <div class="rounded-lg bg-white p-4 shadow dark:bg-gray-800 sm:p-8">
        <livewire:home.wallet />
      </div>
    </div>
  </div>
</x-app-layout>
