<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "workshops_type".
 *
 * @property int $id_workshops_type
 * @property string $name
 *
 * @property Workshops[] $workshops
 */
class WorkshopsType extends \yii\db\ActiveRecord
{


    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'workshops_type';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name'], 'required'],
            [['name'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_workshops_type' => 'Id Workshops Type',
            'name' => 'Name',
        ];
    }

    /**
     * Gets query for [[Workshops]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getWorkshops()
    {
        return $this->hasMany(Workshops::class, ['workshops_type_id' => 'id_workshops_type']);
    }

}
