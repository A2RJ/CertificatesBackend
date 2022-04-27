<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CertificateFields extends Model
{
    use HasFactory;
    public $fillable = [
        "certificate_id",
        "certificate_field",
        'certificate_value',
    ];
    
    /**
     * Get the route key for the model.
     *
     * @return string
     */
    public function getRouteKeyName()
    {
        return 'certificate_field_id';
    }
}