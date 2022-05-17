<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToCertificateFieldsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('certificate_fields', function (Blueprint $table) {
            $table->foreign(['certificate_id'], 'certificatesfields')->references(['id_certificate'])->on('certificates')->onUpdate('CASCADE')->onDelete('CASCADE');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('certificate_fields', function (Blueprint $table) {
            $table->dropForeign('certificatesfields');
        });
    }
}
