<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    use HasFactory;

    const ACTIVE = 'is_active';

    /**
     * @var array
     * @see GuardsAttributes::$fillable
     */
    public $fillable = [
        'title',
        'content',
        'preview',
        'is_active',
    ];

    /**
     * @var array
     * @see HasAttributes::$casts
     */
    protected $casts = [
        'id'        => 'integer',
        'title'     => 'string',
        'preview'   => 'string',
        'content'   => 'string',
        'is_active' => 'boolean',
    ];

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id', 'id');
    }
}
