<?php

namespace App\Http\Middleware\Tenant;

use Closure;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\Auth;
use App\Tenant\ManagerTenant;

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

        /* if (Auth::check()) {
            Log::info('Logado');
        } else {
            Log::info('Não Logado'); */
        if (session()->has('tenant')) {
            $manager = app(ManagerTenant::class);
            $cliente = session()->get('tenant');
            //dd($cliente);
            Log::info('re conectar');
            $manager->setConnection($cliente);
            $manager->setFileSystems($cliente);
            return $next($request);
            //return redirect()->route('home');
        }
        //}
        //session()->flush();


        if (!session()->has('tenant') && $currentRouteName != 'login') {
            Log::info('foi para o login');
            return redirect()->route('login');
        }


        return $next($request);
    }
}
