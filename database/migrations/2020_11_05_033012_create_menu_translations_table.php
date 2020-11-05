<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMenuTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('menu_translations', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('menu_id')->unSigned();
            $table->string('locale')->index();
            $table->string('title');
            $table->string('slug')->unique();
            $table->unique(['menu_id', 'locale']);
            $table->foreign('menu_id')->references('id')->on('menus')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('menu_translations');
    }
}
