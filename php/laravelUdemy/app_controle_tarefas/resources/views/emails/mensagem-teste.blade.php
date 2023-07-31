@component('mail::message')
# Introdução

The body of your message.

@component('mail::panel')
    Texto Botão <br/>
    Texto Botão <br/>
    Texto Botão
@endcomponent

@component('mail::button', ['url' => ''])
Texto Botão
@endcomponent

Obrigado,<br>
{{ config('app.name') }}
@endcomponent
