<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMainDutyTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('main_duty_translations', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('main_duty_id')->unsigned();
            $table->string('locale')->index();
            $table->string('category');
            $table->string('slug');
            $table->string('position');
            $table->string('mainduty');
            $table->text('function');
            $table->unique(['main_duty_id', 'locale']);
            $table->foreign('main_duty_id')->references('id')->on('main_duties')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('main_duty_translations');
    }
}
