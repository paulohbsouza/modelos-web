
    <div class="row" id="top">
      <div class="col-md-4">
        <img src="img/logo.png" class="img-fluid float-left" id="img-logo" />
      </div>
      <div class="col-md-8">
        <ul class="nav lead justify-content-end">
          <li class="nav-item">
            <a class="nav-link style-menu" href="http://dotsis.com.br">INÍCIO</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle style-menu" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">SERVIÇOS E PRODUTOS</a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="">Infraestrutura de TI</a>
              <a class="dropdown-item" href="">Desenvolv. de Sites e Sistemas Web</a>
              <a class="dropdown-item" href="">Hospedagem de Sites</a>
            <div class="dropdown-divider"></div>           
	          <a class="dropdown-item disabled" href="">Cloud Backup</a>
            <a class="dropdown-item disabled" href="">Soluções em Software</a>
            <a class="dropdown-item disabled" href="">Licenças Microsoft</a>
            </div>
          </li>
  			  <li class="nav-item">
            <a class="nav-link style-menu" href="">SOBRE NÓS</a>
            <!-- 
              colocar na mesma página: sobre, missão visão e valores (Em coluna), parceiros, cliente e portifólio
             -->
  			  </li>
  			  <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle style-menu" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">CONTATO</a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="https://linktr.ee/dotsis.ti" target="_blank">Atendimento Comercial</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item disabled" href="">Central de Suporte</a>
            </div>
          </li>
			  </ul>
      </div>
    </div>

<?php

  $pg = $_GET['pg'] ?? '';

  switch ($pg) {
    case 'infr':
      include "pg/infr.php";
      break;

    case 'soft':
      include "pg/soft.php";
      break;

    case 'host':
      include "pg/host.php";
      break;

    case 'sobr':
      include "pg/sobr.php";
      break;

    case 'comer':
      include "pg/comer.php";
      break;

    case 'supor':
      include "pg/supor.php";
      break;
    
    default:
      include "pg/home.php";
      break;
  }
  
?>



    <!--
    menu para smart phone

    <div class="pos-f-t">
  <div class="collapse" id="navbarToggleExternalContent">
    <div class="bg-dark p-4">
      <h5 class="text-white h4">Collapsed content</h5>
      <span class="text-muted">Toggleable via the navbar brand.</span>
    </div>
  </div>
  <nav class="navbar navbar-dark bg-dark">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  </nav>
</div>
  -->
