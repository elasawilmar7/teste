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

        if (session()->has('tenant') && $currentRouteName == 'login') {
            $manager = app(ManagerTenant::class);
            $cliente = session()->get('tenant');

            Log::info('re conectar ' . $currentRouteName);
            $manager->setConnection($cliente);
            $manager->setFileSystems($cliente);

            return $next($request);
        }
        //session()->flush();
        // dump($request->url());
        // dd($currentRouteName);

        /* if (!session()->has('tenant') && $currentRouteName != 'login') {
            Log::info('foi para o login');
            return redirect()->route('login');
        } */


        return $next($request);
    }
}
