<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "product_workshops".
 *
 * @property int $id_product_workshops
 * @property int $products_id
 * @property int $workshops_id
 * @property float $production_time
 *
 * @property Products $products
 * @property Workshops $workshops
 */
class ProductWorkshops extends \yii\db\ActiveRecord
{


    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'product_workshops';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['products_id', 'workshops_id', 'production_time'], 'required'],
            [['products_id', 'workshops_id'], 'integer'],
            [['production_time'], 'number'],
            [['products_id'], 'exist', 'skipOnError' => true, 'targetClass' => Products::class, 'targetAttribute' => ['products_id' => 'id_products']],
            [['workshops_id'], 'exist', 'skipOnError' => true, 'targetClass' => Workshops::class, 'targetAttribute' => ['workshops_id' => 'id_workshops']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_product_workshops' => 'Id Product Workshops',
            'products_id' => 'Products ID',
            'workshops_id' => 'Workshops ID',
            'production_time' => 'Production Time',
        ];
    }

    /**
     * Gets query for [[Products]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getProducts()
    {
        return $this->hasOne(Products::class, ['id_products' => 'products_id']);
    }

    /**
     * Gets query for [[Workshops]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getWorkshops()
    {
        return $this->hasOne(Workshops::class, ['id_workshops' => 'workshops_id']);
    }

}
