<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\ProductWorkshops $model */

$this->title = 'Update Product Workshops: ' . $model->id_product_workshops;
$this->params['breadcrumbs'][] = ['label' => 'Product Workshops', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_product_workshops, 'url' => ['view', 'id_product_workshops' => $model->id_product_workshops]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="product-workshops-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
