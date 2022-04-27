<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CertificateUsers extends Model
{
    use HasFactory;
    public $fillable = [
        "certificate_id",
        "user_id"
    ];

    /**
     * Get the route key for the model.
     *
     * @return string
     */
    public function getRouteKeyName()
    {
        return 'certificate_user_id';
    }
}
