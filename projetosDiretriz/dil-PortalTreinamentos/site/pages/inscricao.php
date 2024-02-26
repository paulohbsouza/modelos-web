<!-- Inscrição / Turmas -->

<section>
    <div class="inscricao-content">
        <div class="inscricao-title">
            <h1 class="inscricao-title-display font-display">Turmas Abertas</h1>
            <p class="inscricao-title-subtitle">Treinamentos <?= date('Y'); ?></p>
        </div>

        <div class="bloco-inscricao">
            <div class="imagem-bloco">
                <img src="./assets/img/banner-insc-01.png" class="img-fluid" alt="">
            </div>
            <div class="descricao-bloco">
                <div class="turma-bloco">
                    <h3>Turma única</h3>
                    <div class="badge">controladoria</div>
                </div>
                <div class="titulo-bloco">Instrumentos Jurídicos praticados pela Administração Pública com foco no MROSC</div>
                <div class="periodo-bloco">Inscrições de 08/07/2021 até 19/07/2021</div>
                <div class="texto-bloco">
                    <p><span>Data: </span>21/07/2021</p>
                    <p><span>Horário: </span>14h às 26h</p>
                    <p><span>Local: </span>Plataforma ZOOM</p>
                    <p><span>Ministrantes: </span>Marco Aurélio Valim e Mirella Meri Mendonça Silva</p>
                    <p><span>Investimento: </span>2h de faturamento (podendo participar até 2 ( duas ) pessoas. Caso haja mais de dois participantes, será acrescido com uma nova inscrição, adicionando mais 2 horas...</p>
                    <p><span>Objetivo: </span>Orientar gestores e servidores quanto a execução e o gerenciamento no i.Maq dos contratos praticados pela Administração Pública com foco no MROSC.</p>
                    <div>
                        <span>Conteúdo: </span>
                        <ul>
                            <li><i class='material-icons'>done</i> Conceituação do MROSC - Lei 13.019/2014</li>
                            <li><i class='material-icons'>done</i> O que muda com a Lei nº 13.019/2014?</li>
                            <li><i class='material-icons'>done</i> Outros Instrumentos Jurídicos</li>
                            <li><i class='material-icons'>done</i> Aplicação e gerenciamento no i.Maq</li>
                            <li><i class='material-icons'>done</i> Prestação de Contas no SICOM</li>
                        </ul>
                    </div>
                    <p><span>Público-alvo: </span>Contadores, Controladores Internos, Tesoureiros, Jurídico e responsáveis pela celebração dos contratos.</p>
                </div>
                <div class="botao-bloco">
                    <a href="#" class="btn btn-drtzSecondary btn-lg" onclick="document.getElementById('modal-form-inscricao').style.display='block'">Inscrição</a>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="modal" id="modal-form-inscricao">
    <div class="form-inscricao modal-stop">
        <form action="">
            <h5>Insira seu usuário e senha</h5>
            <input type="text" name="" id="" placeholder="Usuário">
            <input type="password" name="" id="" placeholder="Senha">
            <span class="checkbox"><input type="checkbox" name="lembrar" id=""><label for="lembrar">Lembrar-me</label></span>
            <a href="" class="btn btn-drtzSecondary btn-lg">Login</a>
            <a href="" class="link-drtz text">Esqueci a senha</a>
        </form>
    </div>
</div>