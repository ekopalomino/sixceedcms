<?php

namespace Sixceed\Models;

use Sixceed\Traits\Uuid;
use Illuminate\Database\Eloquent\Model;

class ContactUs extends Model
{
    use Uuid;

    protected $fillable = [
        'name',
        'email',
        'message',
        'sender_ip',
        'assign_to',
        'site_id',
        'status_id',
    ];

    public $incrementing = false;

    public function Assign()
    {
        return $this->belongsTo(User::class,'assign_to');
    }
}
