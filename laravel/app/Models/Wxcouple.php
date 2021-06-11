<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Wxcouple extends Model
{
    use HasFactory;

    protected $table='wxcouple';

    protected $fillable = ['fromuserid', 'touserid'];
}
