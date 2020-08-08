<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOfficialTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('official_translations', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('official_id')->unsigned();
            $table->string('locale')->index();
            $table->string('title');
            $table->string('slug')->unique();
            $table->unique(['official_id', 'locale']);
            $table->foreign('official_id')->references('id')->on('officials')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('official_translations');
    }
}
