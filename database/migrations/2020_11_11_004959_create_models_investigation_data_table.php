<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateModelsInvestigationDataTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('investigation_data', function (Blueprint $table) {
            $table->uuid('id');
            $table->integer('investigation_category');
            $table->bigInteger('product_id');
            $table->datetime('start_date');
            $table->datetime('end_date')->nullable();
            $table->text('description');
            $table->text('status');
            $table->text('notes');
            $table->uuid('created_by');
            $table->uuid('updated_by')->nullable();
            $table->primary('id');
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
        Schema::dropIfExists('models_investigation_data');
    }
}
