<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CertificateUsers extends Model
{
    use HasFactory;
    public $fillable = [
        "certificate_user_id",
        "certificate_id",
        "user_id",
        'created_at',
        'updated_at'
    ];
}
