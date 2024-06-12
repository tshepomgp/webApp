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
	Schema::create('pricing_tables', function(Blueprint $table) {
		$table->bigIncrements('id');
		$table->text('OS')->nullable();
		$table->text('Cores')->nullable();
		$table->text('RAM')->nullable();
		$table->text('Storage')->nullable();
		$table->text('Cost')->nullable();
		$table->text('Selling_price')->nullable();
		$table->text('Azure_Price')->nullable();
		$table->text('Azure_instance')->nullable();
		$table->text('diff')->nullable();
		$table->text('total_MRR')->nullable();
		$table->text('additional_disk')->nullable();
		$table->text('additional_size')->nullable();
		$table->text('additional_cost')->nullable();
		$table->text('additional_price')->nullable();
		$table->text('additional_azurecost')->nullable();
		 $table->text('additional_diff')->nullable();

		$table->timestamps();

	
	
	
	});
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
    }
};
