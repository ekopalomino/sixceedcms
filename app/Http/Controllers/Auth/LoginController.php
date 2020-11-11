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
        if(Auth::user()->site_id == '48887f82-bea4-47b3-a9de-4c27fdc6b85a') {
            return 'cms/config';
        } elseif(Auth::user()->site_id == '8689caab-d1d0-4b99-a814-d6e2d0b56361') {
            return '/cms/main';
        } elseif(Auth::user()->site_id == '46d017eb-f7aa-450e-80f6-d565f424ce24') {
            return '/cms/perdagangan-dalam-negeri';
        } elseif(Auth::user()->site_id == 'bc6afbb6-7131-49e1-9b63-055d77581da9') {
            return '/cms/perdagangan-luar-negeri';
        } elseif(Auth::user()->site_id == 'aea46a1f-9997-4d3c-838a-2647155f568e') {
            return '/cms/perundingan-perdagangan-internasional';
        } elseif(Auth::user()->site_id == 'fbd007d8-938e-4e89-9246-625cc1879c4f') {
            return '/cms/perlindungan-konsumen';
        } elseif(Auth::user()->site_id == 'cb0f7d61-5371-4683-b16e-a801f36625a3') {
            return '/cms/pengembangan-ekspor';
        } elseif(Auth::user()->site_id == 'd3dae269-6198-4162-aa01-97a4710e1311') {
            return '/cms/pusat-pengembangan-sumber-daya-kemetrologian';
        }elseif(Auth::user()->site_id == '4e370498-4efd-41b4-b597-f7043079594f') {
            return '/cms/badan-pengembangan-pengkajian-perdagangan';
        } elseif(Auth::user()->site_id == '2dacbe2e-5bb9-4a5a-abd6-934070dec943') {
            return 'cms/pengamanan-perdagangan';
        } elseif(Auth::user()->site_id == 'f93db832-df41-48b1-82ba-faf654ab135d') {
            return 'cms/anti-dumping';
        } elseif(Auth::user()->site_id == '65295bda-0aec-4458-a77e-37cf992bff9e') {
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
