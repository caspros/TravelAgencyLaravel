<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;
use Cviebrock\EloquentSluggable\Sluggable;

class Travel extends Model
{
    use HasFactory, Sluggable;

    protected $guarded = [];

    protected $fillable = ['title', 'slug','short_description','description','program', 'image'];

    protected static function boot()
    {
        parent::boot();
    }

    public function details()
    {
        return $this->hasMany(Details::class);
    }

    public function images()
    {
        return $this->hasMany(Images::class);
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
