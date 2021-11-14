<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Kalnoy\Nestedset\NodeTrait;

/**
 * @property int $id
 * @property string $title
 * @property int|null $parent_id
 *
 * @property int $depth
 * @property Category $parent
 * @property Category[] $children
 * @property Article[] $articles
 */
class Category extends Model
{
    use HasFactory;

    /**
     * @var array
     * @see GuardsAttributes::$fillable
     */
    public $fillable = [
        'title',
        'parent_id'
    ];

    /**
     * @var array
     * @see HasAttributes::$casts
     */
    protected $casts = [
        'id'        => 'integer',
        'title'     => 'string',
        'parent_id' => 'integer',
    ];

    public function articles()
    {
        return $this->hasMany(Article::class, 'category_id', 'id');
    }

    public function parentArticles(): array
    {
        return $this->parent ? $this->parent->allAttributes() : [];
    }

    public function allAttributes(): array
    {
        return array_merge($this->parentAttributes(), $this->attributes()->orderBy('sort')->getModels());
    }
}
