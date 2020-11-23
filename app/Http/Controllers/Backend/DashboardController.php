<?php

namespace Sixceed\Http\Controllers\Backend;

use Illuminate\Http\Request;
use Sixceed\Http\Controllers\Controller;
use Sixceed\Models\User;
use Sixceed\Models\Site;
use Sixceed\Models\Status;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use DB;
use Auth;
use Hash;

class DashboardController extends Controller
{
    public function ppsdk()
    {
        return view('backend.dashboard.ppsdk');
    }

    public function dagri()
    {
        return view('backend.dashboard.dagri');
    }

    public function bppp()
    {
        return view('backend.dashboard.bppp');
    }

    public function daglu()
    {
        return view('backend.dashboard.daglu');
    }

    public function itjen()
    {
        return view('backend.dashboard.itjen');
    }

    public function ppi()
    {
        return view('backend.dashboard.ppi');
    }

    public function pktn()
    {
        return view('backend.dashboard.pktn');
    }

    public function kpp()
    {
        return view('backend.dashboard.kpp');
    }

    public function djpen()
    {
        return view('backend.dashboard.djpen');
    }

    public function kadi()
    {
        return view('backend.dashboard.kadi');
    }
}