<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Option extends Model
{
    use HasFactory, SoftDeletes;

    protected  $fillable = ['question_id', 'option', 'option_type', 'is_correct'];

    public function question()
    {
    	return $this->belongsTo(Question::class, 'category_id', 'id');
    }
}
