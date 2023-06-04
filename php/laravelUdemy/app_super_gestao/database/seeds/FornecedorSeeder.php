<?php

use Illuminate\Database\Seeder;
use App\Fornecedor;
use Illuminate\Support\Facades\DB;

class FornecedorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //instanciando um objeto
        $fornecedor = new Fornecedor();
        $fornecedor->nome = 'Fornecedor100';
        $fornecedor->site = 'fornecedor100.net';
        $fornecedor->uf = 'RS';
        $fornecedor->email = 'contato@fornecedor100.net';
        $fornecedor->save();

        //utilizando médoto create (atenção para o atributo da classe)
        Fornecedor::create([
            'nome' => 'Fornecedor200',
            'site' => 'fornecedor200.com.br',
            'uf' => 'SP',
            'email' => 'email@fornecedor200.com.br'
        ]);

        //método insert
        DB::table('fornecedores')->insert([
            'nome' => 'Fornecedor300',
            'site' => 'fornecedor300.com.br',
            'uf' => 'MG',
            'email' => 'email@fornecedor300.com.br'
        ]);
    }
}
