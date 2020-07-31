<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAboutUsTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('about_us_translations', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('about_us_id')->unsigned();
            $table->string('locale')->index();
            $table->string('welcome_message');
            $table->unique(['about_us_id', 'locale']);
            $table->foreign('about_us_id')->references('id')->on('about_us')->onDelete('cascade');
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
        Schema::dropIfExists('about_us_translations');
    }
}
