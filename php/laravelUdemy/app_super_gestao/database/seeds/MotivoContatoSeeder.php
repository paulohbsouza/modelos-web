<?php

use Illuminate\Database\Seeder;
use App\MotivoContato;

class MotivoContatoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        MotivoContato::create(['motivos_contato' => 'Dúvida']);
        MotivoContato::create(['motivos_contato' => 'Elogio']);
        MotivoContato::create(['motivos_contato' => 'Reclamação']);
    }
}
