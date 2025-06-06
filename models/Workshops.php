<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "workshops".
 *
 * @property int $id_workshops
 * @property string $name
 * @property int $workshops_type_id
 * @property int $count_people_production
 *
 * @property ProductWorkshops[] $productWorkshops
 * @property WorkshopsType $workshopsType
 */
class Workshops extends \yii\db\ActiveRecord
{


    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'workshops';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'workshops_type_id', 'count_people_production'], 'required'],
            [['workshops_type_id', 'count_people_production'], 'integer'],
            [['name'], 'string', 'max' => 255],
            [['workshops_type_id'], 'exist', 'skipOnError' => true, 'targetClass' => WorkshopsType::class, 'targetAttribute' => ['workshops_type_id' => 'id_workshops_type']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_workshops' => 'Id Workshops',
            'name' => 'Name',
            'workshops_type_id' => 'Workshops Type ID',
            'count_people_production' => 'Count People Production',
        ];
    }

    /**
     * Gets query for [[ProductWorkshops]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getProductWorkshops()
    {
        return $this->hasMany(ProductWorkshops::class, ['workshops_id' => 'id_workshops']);
    }

    /**
     * Gets query for [[WorkshopsType]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getWorkshopsType()
    {
        return $this->hasOne(WorkshopsType::class, ['id_workshops_type' => 'workshops_type_id']);
    }

}
