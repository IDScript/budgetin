<?php

use App\Models\User;

test('navigation menu can be rendered', function () {
	$user = User::factory()->create();

	$this->actingAs($user);

	$response = $this->get('/home');

	$response
			->assertSeeVolt('layout.navigation')
			->assertOk();
});