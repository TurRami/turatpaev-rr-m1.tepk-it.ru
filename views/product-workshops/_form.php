<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/** @var yii\web\View $this */
/** @var app\models\ProductWorkshops $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="product-workshops-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'products_id')->textInput() ?>

    <?= $form->field($model, 'workshops_id')->textInput() ?>

    <?= $form->field($model, 'production_time')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
