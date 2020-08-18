<?php

namespace Sixceed\Http\Controllers\Backend;

use Illuminate\Http\Request;
use Sixceed\Http\Controllers\Controller;
use Artisan;

class MaintenanceController extends Controller
{
    public function backupIndex(Request $request)
    {
    	return view ('backend.pages.backup');
    }

    public function backupCreate()
    {
            // start the backup process
            Artisan::call('backup:run');
            $output = Artisan::output();
            
             \LogActivity::addToLog('Website berhasil dibackup');
            $notification = array (
            'message' => 'Website berhasil dibackup',
            'alert-type' => 'success'
            );
            
            return redirect()->back()->with($notification);
    }
}
