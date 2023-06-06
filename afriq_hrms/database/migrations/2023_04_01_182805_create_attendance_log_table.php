<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('attendance_log', function (Blueprint $table) {
            $table->id();
            $table->string('employeeId');
            $table->dateTime('authDateTime');
            $table->date('authDate');
            $table->time('authTime');
            $table->string('direction');
            $table->string('deviceName');
            $table->string('deviceSN');
            $table->string('personName');
            $table->string('cardNo');
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
        Schema::dropIfExists('attendance_log');
    }
};
