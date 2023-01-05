<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use App\Models\Cliente;
use App\Tenant\ManagerTenant;
use LogisticsGame\Models\User;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function login(Request $request)
    {
        $manager = app(ManagerTenant::class);
        $cliente = Cliente::where('bd_database', $request->id)->First();
        // verifica se existe Cliente
        if (!$cliente) {
            return redirect()->back()->with('flash_message', 'Cliente não encontrado');
        }
        // muda o banco de dados
        $manager->setConnection($cliente);
        $manager->setFileSystems($cliente);
        // faz autenticação
        $credentials = $request->only('email', 'password');
        if (Auth::attempt($credentials)) {
            session()->put('tenant', $cliente);
            Log::info('entrei');
            return redirect()->route('home');
        } else {
            return redirect()->back()->with('flash_message', 'e-mail ou senha invalido!');
        }
    }
}
