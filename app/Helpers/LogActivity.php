<?php


namespace Sixceed\Helpers;
use Request;
use Sixceed\Models\LogActivity as LogActivityModel;


class LogActivity
{
    public static function addToLog($subject)
    {
    	$log = [];
    	$log['subject'] = $subject;
    	$log['url'] = Request::fullUrl();
    	$log['method'] = Request::method();
    	$log['ip'] = Request::ip();
    	$log['agent'] = Request::header('user-agent');
		$log['user_id'] = auth()->check() ? auth()->user()->id : 1;
		$log['site_id'] = auth()->check() ? auth()->user()->site_id : 1;
    	LogActivityModel::create($log);
    }

    public static function logActivityLists()
    {
		if ((auth()->user()->site_id) == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f') {
			return LogActivityModel::latest()->get();
		} else {
			return LogActivityModel::where('site_id',auth()->user()->site_id)->get();
		}
    	
    }


}