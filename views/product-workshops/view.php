<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/** @var yii\web\View $this */
/** @var app\models\ProductWorkshops $model */

$this->title = $model->id_product_workshops;
$this->params['breadcrumbs'][] = ['label' => 'Product Workshops', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="product-workshops-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id_product_workshops' => $model->id_product_workshops], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id_product_workshops' => $model->id_product_workshops], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id_product_workshops',
            'products_id',
            'workshops_id',
            'production_time',
        ],
    ]) ?>

</div>
