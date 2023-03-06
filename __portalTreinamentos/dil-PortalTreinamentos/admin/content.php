<!-- Content -->

<div class="content">
    <?php include "sidebar.php"; ?>

    <div class="ant-layout">
        <?php
        $pg = isset($_GET['pg']) ? $_GET['pg'] : '';
        switch ($pg) {
            case 'nada':
                include "pages/#.php";
                break;
            case 'nada':
                include "pages/#.php";
                break;
            default:
                include "pages/home.php";
                break;
        }
        include "footer.php";
        ?>
    </div>

</div>
</div>