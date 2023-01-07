    <?php

    /*
     * pesquisa binária vs pesquisa simples
     * 
      a pesquisa binária so funciona quando a lista é ordenada.
      esse script cria um array de números ordenados e depois vamos introduzir um número
      aleatório em uma variavel que esteja no mesmo range do array, depois fazemos a contagem
     * de quantos passos 'O(log n)' / tempo levou para encontrar. considerando um 'ms' para cada passo.
     * 
     * a função "pesquisa_binária" pega um array ordenado e uma item. Se o item
     * está no array, a função retorna sua posição. Dessa maneira, você é capaz
     * de saber por qual ponto do array deve continuar procurando.

     */


    //valor para o tamanho da lista
    $tam_lista = 20;

    //numero a ser encontrado
    $item = 5;

    //criando a lista/vetor
    $lista = array();

    //ordenando os buckets/indices da lista
    for ($i = 1; $i <= $tam_lista; $i++) {
        $lista[] = $i;
    }
    //percorrendo a lista
    foreach ($lista as $v) {
        echo $v . ' ';
    }

    //escrever o valor de um buckets/indice aleatório
    echo "<br/>";
    echo "<br/>";
    echo "Indice aleatório: " . $lista[5];

    //função nativa do php que conta quantos itens existe no array. foi adicionado -1 ao valor final
    echo "<br/>";
    $val_alto = count($lista) - 1;
    echo "Contagem da lista -1: " . $val_alto;

    //tamamho da lista
    echo "<br/>";
    echo "tamanho da lista: " . $tam_lista . " itens!";

    //tamamho da lista
    echo "<br/>";
    echo "item escolhido: " . $item . " !";

    //função / algoritmo da pesquisa 
    function pesquisa_binaria($lista, $item) {

        $val_baixo = 0;
        $val_alto = count($lista) - 1;

        while ($val_baixo <= $val_alto) {

            $meio = ($val_baixo + $val_alto) / 2;
            echo "Meio: " . $meio . "<br/>";

            $chute = $lista[$meio]; //primeiro chute vai direto ao indice/meio
            echo "Primeiro Chute: " . $chute . "<br/>";

            if ($chute == $item) {
                echo "Chute == Item: " . $meio;
                return $meio;
            }
            if ($chute > $item) {
                $val_alto = $meio - 1;
                echo "Val_Alto recebe Meio - 1: " . $val_alto . "<br/>";
            } else {
                $val_baixo = $meio + 1;
                echo "Val_Baixo recebe Meio + 1: " . $val_baixo . "<br/>";
            }

            return false;
        }
    }

    //chamar a função
    echo "<br/>";
    echo "<br/>";
    echo "Resultado";
    echo "<br/>";
    //teste
    //$minha_lista = [1, 3, 5, 7, 9];
    //pesquisa_binaria($minha_lista, 3);

    pesquisa_binaria($lista, $item);
