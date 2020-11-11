<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;

class Defina extends Model
{
    protected $fillable = [
        'country_id',
        'hs_code',
        'uraian',
        'tarif',
        'created_by',
        'updated_by'
    ];

    public function Countries()
    {
        return $this->belongsTo(Country::class,'country_id');
    }

    public function Creator()
    {
        return $this->belongsTo(User::class,'created_by');
    }

    public function Updater()
    {
        return $this->belongsTo(User::class,'updated_by');
    }
}
