<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRegulasiDagrisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('regulasi_dagris', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('tahun');
            $table->smallInteger('id_kelompok')->nullable();
            $table->string('no_regulasi');
            $table->string('judul');
            $table->string('file');
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
        Schema::dropIfExists('regulasi_dagris');
    }
}
