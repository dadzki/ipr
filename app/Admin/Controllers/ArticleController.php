<?php

namespace App\Admin\Controllers;

use App\Models\Article;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ArticleController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Article';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Article());

        $grid->column('id', __('Id'));
        $grid->column('title', __('Title'));
        $grid->column('content', __('Content'));
        $grid->column('preview', __('Preview'));
        $grid->column('is_active', __('Active'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Article::findOrFail($id));

        $show->column('id', __('Id'));
        $show->column('title', __('Title'));
        $show->column('content', __('Content'));
        $show->column('preview', __('Preview'));
        $show->column('is_active', __('Active'));
        $show->column('created_at', __('Created at'));
        $show->column('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Article());

        $form->text('title', __('Title'));
        $form->text('content', __('Content'));
        $form->text('preview', __('Preview'));
        $form->checkbox('is_active', __('Active'));

        return $form;
    }
}
