<?php

use app\models\WorkshopsType;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

/** @var yii\web\View $this */
/** @var app\models\WorkshopsTypeSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Workshops Types';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="workshops-type-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Workshops Type', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_workshops_type',
            'name',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, WorkshopsType $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'id_workshops_type' => $model->id_workshops_type]);
                 }
            ],
        ],
    ]); ?>


</div>
