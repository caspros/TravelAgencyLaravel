<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('details', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('travel_id');
            $table->dateTime('start_date')->nullable();
            $table->dateTime('finish_date')->nullable();
            $table->float('price')->nullable();
            $table->integer('max_participants')->nullable();
            $table->timestamps();

            $table->foreign('travel_id')->references('id')->on('travel')->onUpdate('cascade')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('details');
    }
}
