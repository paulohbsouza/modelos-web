<?= $this->extend('layouts/main_layout') ?>
<?= $this->section('conteuuudo') ?>

<header class="container">
    <div class="row">
        <div class="col p-3">
            <h3 class="">TODO List!</h3>
        </div>
        <div class="col p-3 text-right">
            <a href="<?= site_url('main/newJob') ?>" class="btn btn-primary">Nova tarefa</a>
        </div>
    </div>
</header>
<hr/>

<div class="container">
    <div class="row">
        <div class="col">
            <?php if (count($jobs) == 0) : ?>
                <p class="text-center">Não existem tarefas.</p>
            <?php else : ?>
                <table class="table table-striped table-sm">
                    <thead class="thead-dark">
                    <tr>
                        <th class="text-center">Tarefa</th>
                        <th class="text-center">Data de criação</th>
                        <th class="text-center">Data de finalização</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($jobs as $job) : ?>
                        <tr>
                            <td class="text-center"><?= $job->job ?></td>
                            <td class="text-center"><?= $job->datetime_created ?></td>
                            <td class="text-center"><?= $job->datetime_finished ?></td>
                            <td class="text-center">

                                <!-- tarefa realizada -->
                                <?php if(empty($job->datetime_finished)): ?>
                                    <a href="<?= site_url('main/jobdone/'.$job->id_job) ?>" class="btn btn-success btn-sm mx-2"><i class="fa fa-check"></i></a>
                                <?php else: ?>
                                    <button class="btn btn-danger btn-sm mx-2" disabled><i class="fa fa-times"></i></button>
                                <?php endif; ?>

                                <!-- editar tarefa -->
                                <?php if(empty($job->datetime_finished)): ?>
                                    <a href="<?= site_url('main/editjob/'.$job->id_job) ?>" class="btn btn-primary btn-sm mx-2"><i class="fa fa-pencil"></i></a>
                                <?php else: ?>
                                    <button class="btn btn-primary btn-sm mx-2" disabled><i class="fa fa-pencil"></i></button>
                                <?php endif; ?>

                                <!-- eliminar tarefa -->
                                <a href="<?= site_url('main/deletejob/'.$job->id_job) ?>" class="btn btn-primary btn-sm mx-2"><i class="fa fa-trash"></i></a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                    </tbody>
                </table>
            <?php endif; ?>
        </div>
    </div>
</div>
<hr/>
<p class="text-center">Nº de tarefas: <strong><?= count($jobs) ?></strong></p>

<?= $this->endSection() ?>
