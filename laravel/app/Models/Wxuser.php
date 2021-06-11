<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Wxuser extends Model
{
    use HasFactory;

    protected $table = 'wxuser';

    protected $fillable = ['name', 'email', 'openid', 'password'];

    protected $attributes = [
        'menuroles' => 'user',
    ];
}
