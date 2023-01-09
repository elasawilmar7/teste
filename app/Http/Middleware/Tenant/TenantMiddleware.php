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
        //Log::info($currentRouteName);
        //session()->flush();
        $cart = session()->get('tenant');

        /* if (!session()->has('tenant')) {
            Log::info('passei aqui primeiroBBB');
        } */
        Log::info($cart);
        if (is_null($cart)) {
            Log::info('nulo');
        }

        //if (!session()->has('tenant') && $currentRouteName != 'login') {
        if ($cart == null && $currentRouteName != 'login') {
            //dd('oko');
            //Log::info('passei aqui');
            return redirect()->route('login');
        }


        //Log::info($cart);

        // dd($request);
        return $next($request);
    }
}
