<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;

class FrontBanner extends Model
{
    protected $fillable = [
        'posiiton',
        'type',
        'title',
        'image',
        'description',
        'position',
        'link',
        'created_by',
        'updated_by',
    ];

    public function Creator()
    {
        return $this->belongsTo(User::class,'created_by');
    }

    public function Updater()
    {
        return $this->belongsTo(User::class,'updated_by');
    }
}
