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
        if(Auth::user()->site_id == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f') {
            return 'cms/config';
        } elseif(Auth::user()->site_id == '8689caab-d1d0-4b99-a814-d6e2d0b56361') {
            return '/cms/main';
        } elseif(Auth::user()->site_id == '85cd37d3-e818-4e04-b294-3491feb60285') {
            return '/cms/perdagangan-dalam-negeri';
        } elseif(Auth::user()->site_id == '745572a6-c3a9-491a-b069-966d9cfa7054') {
            return '/cms/perdagangan-luar-negeri';
        } elseif(Auth::user()->site_id == '4c565b80-f7e9-4421-81be-a831ae48edf2') {
            return '/cms/perundingan-perdagangan';
        } elseif(Auth::user()->site_id == 'e2fa0b3f-84e2-4046-ae68-fe5f987cbe7b') {
            return '/cms/perlindungan-konsumen';
        } elseif(Auth::user()->site_id == 'bc5397fc-f875-4326-846f-315e6e6fd0ba') {
            return '/cms/pengembangan-ekspor';
        } elseif(Auth::user()->site_id == '92876445-2b7c-4e2f-bb43-d3b71b608e4e') {
            return '/cms/pusat-pengembangan-sumber-daya-kemetrologian';
        }elseif(Auth::user()->site_id == '2da488d4-a8e7-499a-b6e7-360ff17f9585') {
            return '/cms/badan-pengembangan-pengkajian-perdagangan';
        } elseif(Auth::user()->site_id == 'd59ba15e-5abf-4572-9992-64950d4f65ea') {
            return 'cms/pengamanan-perdagangan';
        } elseif(Auth::user()->site_id == 'ee5c63f5-58b4-4ca5-9acb-09de683f6549') {
            return 'cms/anti-dumping';
        } elseif(Auth::user()->site_id == 'a0fe8237-c432-4d27-8edd-669cb9719278') {
            return 'cms/inspektorat-jenderal';
        } else{
            return 'cms/config';
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
