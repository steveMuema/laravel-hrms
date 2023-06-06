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
        Schema::create('staff_leave_type', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('staff_id')
                ->unsigned()
                ->index();
            
            $table->integer('leave_type_id')
                ->unsigned()
                ->index();
            
            $table->integer('count')
                ->nullable();
                $table->integer('status')
                ->default(0);
            $table->foreign('staff_id')
                ->references('id')
                ->on('staff')
                ->onDelete('cascade');

            $table->foreign('leave_type_id')
                ->references('id')
                ->on('leave_types')
                ->onDelete('cascade');

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
        Schema::dropIfExists('staff_leave_type');
    }
};
