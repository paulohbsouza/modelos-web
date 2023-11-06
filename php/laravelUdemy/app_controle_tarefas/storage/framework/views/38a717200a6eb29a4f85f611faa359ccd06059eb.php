<?php $__env->startComponent('mail::message'); ?>
# Introdução

The body of your message.

<?php $__env->startComponent('mail::panel'); ?>
    Texto Botão <br/>
    Texto Botão <br/>
    Texto Botão
<?php echo $__env->renderComponent(); ?>

<?php $__env->startComponent('mail::button', ['url' => '']); ?>
Texto Botão
<?php echo $__env->renderComponent(); ?>

Obrigado,<br>
<?php echo e(config('app.name')); ?>

<?php echo $__env->renderComponent(); ?>
<?php /**PATH C:\laragon\www\modelos-web\php\laravelUdemy\app_controle_tarefas\resources\views/emails/mensagem-teste.blade.php ENDPATH**/ ?>