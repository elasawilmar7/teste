<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Ramsey\Uuid\Uuid;

class Cliente extends Model
{
    protected $fillable = [
        'name',
        'domain',
        'bd_database',
        'bd_hostname',
        'bd_username',
        'bd_password'
    ];
    public static function boot()
    {
        parent::boot();

        self::creating(function ($model) {
            $model->uuid = (string) Uuid::uuid1();
        });
    }
}
