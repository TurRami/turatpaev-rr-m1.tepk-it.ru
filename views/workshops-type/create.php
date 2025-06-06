<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\WorkshopsType $model */

$this->title = 'Create Workshops Type';
$this->params['breadcrumbs'][] = ['label' => 'Workshops Types', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="workshops-type-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
