<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Wxeventflow extends Model
{
    use HasFactory;

    protected $table = 'wxeventflow';

    protected $fillable = ['coupleid', 'userid', 'eventid', 'name', 'image'];

}
