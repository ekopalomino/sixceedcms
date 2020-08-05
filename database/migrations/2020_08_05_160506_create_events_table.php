<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEventsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('events', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->uuid('site_id');
            $table->integer('event_type');
            $table->datetime('date_from');
            $table->datetime('date_to');
            $table->integer('country_id');
            $table->string('location')->nullable();
            $table->string('brocure')->nullable();
            $table->string('link')->nullable();
            $table->uuid('status_id');
            $table->uuid('created_by');
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('events');
    }
}
