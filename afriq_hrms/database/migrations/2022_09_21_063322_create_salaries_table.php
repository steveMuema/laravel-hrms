<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSalariesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('salaries', function (Blueprint $table) {
            $table->id();
            $table->string('gross_salary')->nullable();
            $table->string('basic_salary')->nullable();
            $table->string('hardship_allowance')->nullable();
            $table->string('medical_allowance')->nullable();
            $table->string('special_allowance')->nullable();
            $table->string('commuter_allowance')->nullable();
            $table->string('paye_deduction')->nullable();
            $table->integer('staff_id')->unsigned();
            $table->foreign('staff_id')->references('id')->on('staff')->onDelete('cascade');
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
        Schema::dropIfExists('salaries');
    }
}