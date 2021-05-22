<?php

namespace App\Models;

use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Posts extends Model
{
    use HasFactory, Sluggable;

    protected $guarded = [];

    protected $fillable = ['title', 'slug', 'short_description','long_description_title','long_description','summary_title', 'summary', 'image'];

    protected static function boot()
    {
        parent::boot();
    }

    public function sluggable()
    {
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }
}
