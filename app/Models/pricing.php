<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class pricing extends Model
{
	
	use HasFactory;
	protected $table = 'pricing_tables';
	protected $guarded = [];	
}
