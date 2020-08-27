<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->uuid('site_id');
            $table->string('type');
            $table->bigInteger('category_id');
            $table->string('source')->nullable();
            $table->string('file')->nullable();
            $table->uuid('reporter_id');
            $table->uuid('status_id');
            $table->string('keywords')->nullable();
            $table->string('description')->nullable();
            $table->smallInteger('peraturan_id')->nullable();
            $table->uuid('created_by');
            $table->uuid('updated_by')->nullable();
            $table->dateTime('published_date')->nullable(); 
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
        Schema::dropIfExists('posts');
    }
}
