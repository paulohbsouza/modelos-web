<h3>Fornecedores</h3>

@php

echo 'test';

@endphp

{{-- @dd($fornecedores) --}}

@if (count($fornecedores) > 0 && count($fornecedores) <= 3)
    <h3>existem alguns fornecedores cadastrados...</h3>
    
    @elseif (count($fornecedores) > 3)
        <h3>existem mais de 3 fornecedores cadastrados...</h3>
    
        @else
            <h3>ainda não existem fornecedores cadastrados...</h3> 
@endif


{{-- @unless executa se a condição for false (if) --}}

Fornecedor: {{ $fornecedores[0] ['nome'] }}
<br/>
Status: {{ $fornecedores[0] ['status'] }}
<br/>
@unless ($fornecedores[0] ['status'] == 'N')
Não. pq é igual a S
@endunless


{{-- operador condicional ternário --}}



