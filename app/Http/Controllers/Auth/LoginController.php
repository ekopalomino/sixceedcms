<?php

namespace Sixceed\Http\Controllers\Auth;

use Sixceed\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Auth;

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
    /*protected $redirectTo = '/home';*/

    protected function redirectTo()
    {
        if(Auth::user()->site_id == '47b71eb9-d8a2-4e89-88fe-97bac68a63b8') {
            return '/apps/main';
        } elseif(Auth::user()->site_id == '10bf5f46-4ece-49bf-ad42-e6eed3f2d0bf') {
            return '/apps/pengembangan-ekspor-nasional';
        } elseif(Auth::user()->site_id == 'b85cb37f-239e-42ba-854b-48c5ba43f6c9') {
            return '/apps/perundingan-perdagangan-internasional';
        } elseif(Auth::user()->site_id == '29db58a0-edb8-4eca-814c-32d45c8aa567') {
            return '/apps/perdagangan-luar-negeri';
        } elseif(Auth::user()->site_id == 'd59a0c3f-e50d-4daa-b39e-bd470b2be04e') {
            return '/apps/perlindungan-konsumen-tertib-niaga';
        } elseif(Auth::user()->site_id == '698e1c25-a948-4d28-a30a-b941d6175369') {
            return '/apps/perdagangan-dalam-negeri';
        } else{
            return 'apps/config';
        }
    }
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
}
