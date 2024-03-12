<?php

namespace App\Http\Middleware;

use App\LogAcesso;
use Closure;
use Facade\FlareClient\Http\Response;

class LogAcessoMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        //Pode manipular o $request ou $response
        
        $ip = $request->server->get('REMOTE_ADDR');
        $rota = $request->getRequestUri();

        LogAcesso::create(['log' => "IP $ip requisitou a rota $rota"]);
        //return Response('Chegou e finalizou no middleware');

        //return $next($request);
        $resposta = $next($request);
        //dd($resposta);
        $resposta->setStatusCode(201, 'mensagem teste');
        return $resposta;
    }
}
