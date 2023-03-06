<!-- Content -->

<div class="content">
    <?php

    $pg = isset($_GET['pg']) ? $_GET['pg'] : '';

    switch ($pg) {

        case 'inscr':
            include "pages/inscricao.php";
            break;

        case 'hist':
            include "pages/historico.php";
            break;

        default:
            include "pages/home.php";
            break;
    }

    ?>
</div>