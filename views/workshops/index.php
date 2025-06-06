<?php

use app\models\Workshops;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

/** @var yii\web\View $this */
/** @var app\models\WorkshopsSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Workshops';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="workshops-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Workshops', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_workshops',
            'name',
            'workshops_type_id',
            'count_people_production',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, Workshops $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'id_workshops' => $model->id_workshops]);
                 }
            ],
        ],
    ]); ?>


</div>
