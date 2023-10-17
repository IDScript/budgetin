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
		Schema::create('user_navigations', function (Blueprint $table) {
			$table->id();
			$table->bigInteger('navigations_id')->unsigned();
			$table->foreign('navigations_id')
				->references('id')
				->on('navigations')
				->onDelete('cascade');

			$table->bigInteger('user_id')->unsigned();
			$table->foreign('user_id')
				->references('id')
				->on('users')
				->onDelete('cascade');
			$table->timestamps();
			$table->softDeletes();
		});
	}

	/**
	 * Reverse the migrations.
	 */
	public function down(): void
	{
		Schema::dropIfExists('user_navigations');
	}
};
