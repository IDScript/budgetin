<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
	/**
	 * Run the migrations.
	 */
	public function up(): void
	{
		Schema::create('wallets', function (Blueprint $table) {
			$table->id();
			$table->string('wallet_name');
			$table->string('wallet_icon');
			$table->bigInteger('wallet_balance');
			$table->string('user_email');
			$table->foreign('user_email')
				->references('email')
				->on('users')
				->onCascade('delete');
			$table->timestamps();
			$table->softDeletes();
		});
	}

	/**
	 * Reverse the migrations.
	 */
	public function down(): void
	{
		Schema::dropIfExists('wallets');
	}
};
