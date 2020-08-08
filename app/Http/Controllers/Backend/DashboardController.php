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
}