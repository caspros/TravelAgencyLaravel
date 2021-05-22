<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Gate;

class Orders extends Model
{
    use HasFactory;

    protected $fillable = ['payment_status', 'payment_date', 'user_id', 'details_id', 'participants', 'price'];

    public function details()
    {
        return $this->belongsTo(Details::class);
    }

    public function users()
    {
        return $this->belongsTo(User::class);
    }
}
