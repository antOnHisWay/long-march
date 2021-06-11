<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Wxcity extends Model
{
    use HasFactory;

    protected $table = 'wxcity';

    protected $fillable = ['coupleid', 'userid', 'address', 'longtitude', 'latitude'];

}
