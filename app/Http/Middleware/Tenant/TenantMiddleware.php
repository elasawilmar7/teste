<?php

namespace App\Http\Middleware\Tenant;

use Closure;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Request;

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

        $currentRouteName = $request->path();

        /* if (!session()->has('tenant')) {
            Log::info('sessao NÃO existe');
        }

        if (session()->has('tenant')) {
            Log::info('sessao foi criada');
        } */
        //session()->flush();


        if (!session()->has('tenant') && $currentRouteName != 'login') {
            Log::info('foi para o login');
            return redirect()->route('login');
        }


        return $next($request);
    }
}
