<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Wxpicture extends Model
{
    use HasFactory;

    public $table = 'wxpicture';

    protected $fillable = [
        'coupleid', 'userid', 'path'
    ];
}
