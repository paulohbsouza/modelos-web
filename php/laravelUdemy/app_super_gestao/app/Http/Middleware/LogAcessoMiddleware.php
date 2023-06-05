<?php

namespace App\Http\Middleware;

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
        return $next($request);
        //return Response('Chegou e finalizou no middleware');
    }
}
