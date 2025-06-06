<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "material_type".
 *
 * @property int $id_material_type
 * @property string $name
 * @property float $percent_loss
 *
 * @property Products[] $products
 */
class MaterialType extends \yii\db\ActiveRecord
{


    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'material_type';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'percent_loss'], 'required'],
            [['percent_loss'], 'number'],
            [['name'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_material_type' => 'Id Material Type',
            'name' => 'Name',
            'percent_loss' => 'Percent Loss',
        ];
    }

    /**
     * Gets query for [[Products]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getProducts()
    {
        return $this->hasMany(Products::class, ['material_type_id' => 'id_material_type']);
    }

}
