<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRegionalTradeOfficesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('regional_trade_offices', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('city_id');
            $table->text('address');
            $table->string('phone');
            $table->string('fax');
            $table->string('website');
            $table->string('email');
            $table->bigInteger('official_1');
            $table->bigInteger('official_2')->nullable();
            $table->float('latitude');
            $table->float('longitude');
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
        Schema::dropIfExists('regional_trade_offices');
    }
}
