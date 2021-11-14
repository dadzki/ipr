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
 * @property Posts[] $posts
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
    ];

    /**
     * @var array
     * @see HasAttributes::$casts
     */
    protected $casts = [
        'id'        => 'integer',
        'title'     => 'string',
    ];

    public function posts()
    {
        return $this->hasMany(Posts::class, 'category_id', 'id');
    }

    public function parentPosts(): array
    {
        return $this->parent ? $this->parent->allPosts() : [];
    }

    public function allPosts(): array
    {
        return array_merge($this->parentPosts(), $this->posts()->orderBy('id')->getModels());
    }

    public function children()
    {
        return $this->hasMany(static::class, 'parent_id', 'id');
    }

}
