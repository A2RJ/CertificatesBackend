<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Certificates extends Model
{
    use HasFactory;
    public $fillable = [
        'name',
        'description',
        'file',
        'user_id'
    ];

    /**
     * Get the route key for the model.
     *
     * @return string
     */
    public function getRouteKeyName()
    {
        return 'id_certificate';
    }

    public function fields()
    {
        return $this->hasMany(CertificateFields::class, 'certificate_id', 'id_certificate');
    }

    public function participant()
    {
        return $this->hasMany(CertificateUsers::class, 'certificate_id', 'id_certificate');
    }
}
