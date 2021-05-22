<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Details extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $fillable = ['travel_id', 'start_date', 'finish_date', 'price', 'max_participants'];

    public function travel()
    {
        return $this->belongsTo(Travel::class);
    }

    public function orders()
    {
        return $this->hasMany(Orders::class);
    }
}
