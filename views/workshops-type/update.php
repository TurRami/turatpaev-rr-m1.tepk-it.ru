<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\WorkshopsType $model */

$this->title = 'Update Workshops Type: ' . $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Workshops Types', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id_workshops_type' => $model->id_workshops_type]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="workshops-type-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
