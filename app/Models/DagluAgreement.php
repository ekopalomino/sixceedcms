<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;

class DagluAgreement extends Model
{
    protected $fillable = [
        'title',
        'progress',
        'status_id',
        'created_by',
        'updated_by',
    ];

    public function Create()
    {
        return $this->belongsTo(User::class,'created_by');
    }

    public function Editor()
    {
        return $this->belongsTo(User::class,'updated_by');
    }
}
