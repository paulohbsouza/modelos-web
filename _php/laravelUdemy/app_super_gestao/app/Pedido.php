<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pedido extends Model
{
    //
    public function produtos ()
    {
        return $this->belongsToMany('App\Produto', 'pedidos_produtos', 'pedido_id', 'produto_id')->withPivot('id', 'created_at', 'updated_at');
        /**
         * 1º paramer: modelo do relacionamento NxN em relação oo modelo que estamos impelmentando
         * 2º paramer: é a tabela auxiliar que armazena os requisitos de relacionametno
         * 3º paramer: representa o nome da FK da tabea mapeada pelo modelo na tabela de relacionamento
         */
    }
}
