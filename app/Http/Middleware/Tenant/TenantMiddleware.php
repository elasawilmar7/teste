<?php

namespace App\Http\Middleware\Tenant;

use Closure;
use Illuminate\Support\Facades\Log;

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
        //$url = $request->getHost();
        $url = $request->url();
        $ses = session()->all();
        Log::info($ses);

        if (session()->has('tenant')) {
            dd('deu certo');
        }
        return $next($request);
    }
}
