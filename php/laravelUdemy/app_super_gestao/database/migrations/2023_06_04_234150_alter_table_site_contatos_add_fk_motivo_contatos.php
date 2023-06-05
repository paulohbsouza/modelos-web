<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterTableSiteContatosAddFkMotivoContatos extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        Schema::table('site_contatos', function (Blueprint $table) {
            $table->unsignedBigInteger('motivo_contatos_id');
        });

        //
        DB::statement('UPDATE site_contatos SET motivo_contatos_id = motivoContato');

        //fk
        Schema::table('site_contatos', function (Blueprint $table) {
            $table->foreign('motivo_contatos_id')->references('id')->on('motivo_contatos');
            $table->dropColumn('motivoContato');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //fk
        Schema::table('site_contatos', function (Blueprint $table) {
            $table->integer('motivoContato');
            $table->dropForeign('site_contatos_motivo_contatos_id_foreign');
        });

        //
        DB::statement('UPDATE site_contatos SET motivoContato = motivo_contatos_id');

        //
        Schema::table('site_contatos', function (Blueprint $table) {
            $table->dropColumn('motivo_contatos_id');
        });
    }
}
