<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Enquiry extends Model
{
    protected $table = 'enquiries';
    protected $fillable = ['name','phone','email','address','message'];
    // public $timestamps = false;
}
