<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;

class StrategicPlanning extends Model implements TranslatableContract
{
    use Translatable;

    public $translatedAttributes = ['title', 'slug'];
    protected $fillable = ['title', 'slug', 'file','created_by','updated_by'];

    public function author()
	{
		return $this->belongsTo(User::class,'created_by');
	}

	public function editor()
	{
		return $this->belongsTo(User::class,'updated_by');
	}
}
