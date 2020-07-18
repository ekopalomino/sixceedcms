<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDutyCategoryTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('duty_category_translations', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('duty_category_id')->unsigned();
            $table->string('locale')->index();
            $table->string('category_name');
            $table->string('slug');
            $table->unique(['duty_category_id', 'locale']);
            $table->foreign('duty_category_id')->references('id')->on('duty_categories')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('duty_category_translations');
    }
}
