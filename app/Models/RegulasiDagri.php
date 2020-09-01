<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;

class RegulasiDagri extends Model
{
    protected $fillable = [
        'tahun',
        'kelompok',
        'no_regulasi',
        'judul',
        'file',
        'created_by',
        'updated_by',
    ];

    public function Creator()
    {
        return $this->belongsTo(User::class,'created_by');
    }

    public function Editor()
    {
        return $this->belongsTo(User::class,'updated_by');
    }
}
