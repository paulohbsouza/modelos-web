<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Item extends Model
{
    //
    protected $table = 'produtos';
    protected $fillable = ['nome', 'descricao', 'peso', 'unidade_id', 'fornecedor_id'];

    ///relaconar tabela produto com produtoDetalhe
    public function itemDetalhe ()
    {
        return $this->hasOne('App\ItemDetalhe', 'produto_id', 'id');
    }

    public function fornecedor () 
    {
        return $this->BelongsTo('App\Fornecedor');
    }

    public function pedidos ()
    {
        return $this->belongsToMany('App\Pedido', 'pedidos_produtos', 'produto_id', 'pedido_id');
        /**
         * 3º paramer: representa o nome da FK da tabela mapeada pelo model na tabela de relacionamento
         * 4º paramer: represneta o nome da FK da tabela mapeada pelo model utilizado no relacionametno que estamos implementando
         */
    }
}
