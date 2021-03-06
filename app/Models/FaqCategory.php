<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;

class FaqCategory extends Model
{
    protected $fillable = [
        'category_name',
        'created_by',
        'updated_by',
        'site_id',
    ];

    public function Creator()
    {
        return $this->belongsTo(User::class,'created_by');
    }

    public function Updater()
    {
        return $this->belongsTo(User::class,'updated_by');
    }

    public function Sites()
    {
        return $this->belongsTo(Site::class,'site_id');
    }
}
