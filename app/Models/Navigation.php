<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Navigation extends Model
{
    use HasFactory;

    protected $fillable = [
        'nav', 'icon', 'priority'
    ];

    public function article()
    {
        return $this->belongsTo(User::class);
    }
}
