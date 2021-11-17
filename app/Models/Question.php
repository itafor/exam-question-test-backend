<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Question extends Model
{
    use HasFactory, SoftDeletes;

    protected  $fillable = ['category_id', 'question'];

    public function options()
    {
     return	$this->hasMany(Option::class);
    }

    public function category()
    {
    return $this->belongsTo(Category::class, 'category_id', 'id');
    }
}
