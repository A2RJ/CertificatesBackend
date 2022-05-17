<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToCertificateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('certificate_users', function (Blueprint $table) {
            $table->foreign(['certificate_id'], 'certificatesusers')->references(['id_certificate'])->on('certificates')->onUpdate('CASCADE')->onDelete('CASCADE');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('certificate_users', function (Blueprint $table) {
            $table->dropForeign('certificatesusers');
        });
    }
}
