<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Publication extends Model
{
    use HasFactory;
    protected $fillable = [
        'publications_type_id', 'user_id', 'title', 'tags', 'description', 'publish_date', 'enact_date', 'file', 'highlight', 'view'
    ];

    public function type()
    {
        return $this->belongsTo(PublicationsType::class, 'publications_type_id');
    }
}
