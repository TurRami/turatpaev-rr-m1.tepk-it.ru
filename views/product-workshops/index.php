<?php

use app\models\ProductWorkshops;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

/** @var yii\web\View $this */
/** @var app\models\ProductWorkshopsSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Product Workshops';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="product-workshops-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Product Workshops', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_product_workshops',
            'products_id',
            'workshops_id',
            'production_time',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, ProductWorkshops $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'id_product_workshops' => $model->id_product_workshops]);
                 }
            ],
        ],
    ]); ?>


</div>
