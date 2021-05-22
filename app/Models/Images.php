<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Images extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $fillable = ['travel_id','image'];

    public function travel()
    {
        return $this->belongsTo(Travel::class);
    }
}
