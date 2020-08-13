<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateContactUsProcessesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('contact_us_processes', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->uuid('message_id');
            $table->text('responses');
            $table->uuid('reply_by')->nullable();
            $table->datetime('reply_at')->nullable();
            $table->uuid('sent_by')->nullable();
            $table->datetime('sent_at')->nullable();
            $table->uuid('status_id');
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
        Schema::dropIfExists('contact_us_processes');
    }
}
