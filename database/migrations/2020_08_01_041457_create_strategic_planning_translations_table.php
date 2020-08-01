<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStrategicPlanningTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('strategic_planning_translations', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('strategic_planning_id');
            $table->string('locale')->index();
            $table->string('title');
            $table->string('slug')->unique();
            $table->unique(['strategic_planning_id', 'locale']);
            $table->foreign('strategic_planning_id')->references('id')->on('strategic_plannings')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('strategic_planning_translations');
    }
}
