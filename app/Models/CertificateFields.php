<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CertificateFields extends Model
{
    use HasFactory;
    // public $table = 'certificatefields';
    // primary key
    public $primaryKey = 'certificate_field_id';
    public $fillable = [
        "certificate_id",
        "certificate_field",
    ];

    // disable timestamps
    public $timestamps = false;

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
