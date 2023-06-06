<?php

namespace App\Http\Middleware;

use Closure;
use Facade\FlareClient\Http\Response;

class AutenticacaoMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, $metodo_autenticacao, $perfil)
    {
        //
        echo $metodo_autenticacao . ' -- ' . $perfil;
        if (false) 
        {
            return $next($request);
        }
        else 
        {
           return Response('Acesso negado! Rota exige autenticação.'); 
        }
    }
}
