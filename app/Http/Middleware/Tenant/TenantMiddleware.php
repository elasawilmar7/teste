<?php

namespace App\Http\Middleware\Tenant;

use Closure;

class TenantMiddleware
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
        //dd('Aqui');
        if (session()->has('tenant')) {
            dd('deu certo');
        }
        return $next($request);
    }
}
