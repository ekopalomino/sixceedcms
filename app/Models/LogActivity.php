<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;

class LogActivity extends Model
{
    protected $fillable = [
    	'subject',
    	'url',
    	'method',
    	'ip',
    	'agent',
		'user_id',
		'site_id',
	];
	
	public function Creator()
	{
		return $this->belongsTo(User::class,'user_id');
	}

	public function Sites()
	{
		return $this->belongsTo(Site::class,'site_id');
	}
}
