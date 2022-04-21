<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CertificateFields extends Model
{
    use HasFactory;
    public $fillable = [
        "certificate_field_id",
        "certificate_id",
        "certificate_field",
        'certificate_value',
    ];
}
