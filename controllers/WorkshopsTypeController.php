<?php

namespace app\controllers;

use app\models\WorkshopsType;
use app\models\WorkshopsTypeSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * WorkshopsTypeController implements the CRUD actions for WorkshopsType model.
 */
class WorkshopsTypeController extends Controller
{
    /**
     * @inheritDoc
     */
    public function behaviors()
    {
        return array_merge(
            parent::behaviors(),
            [
                'verbs' => [
                    'class' => VerbFilter::className(),
                    'actions' => [
                        'delete' => ['POST'],
                    ],
                ],
            ]
        );
    }

    /**
     * Lists all WorkshopsType models.
     *
     * @return string
     */
    public function actionIndex()
    {
        $searchModel = new WorkshopsTypeSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single WorkshopsType model.
     * @param int $id_workshops_type Id Workshops Type
     * @return string
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id_workshops_type)
    {
        return $this->render('view', [
            'model' => $this->findModel($id_workshops_type),
        ]);
    }

    /**
     * Creates a new WorkshopsType model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return string|\yii\web\Response
     */
    public function actionCreate()
    {
        $model = new WorkshopsType();

        if ($this->request->isPost) {
            if ($model->load($this->request->post()) && $model->save()) {
                return $this->redirect(['view', 'id_workshops_type' => $model->id_workshops_type]);
            }
        } else {
            $model->loadDefaultValues();
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing WorkshopsType model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $id_workshops_type Id Workshops Type
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id_workshops_type)
    {
        $model = $this->findModel($id_workshops_type);

        if ($this->request->isPost && $model->load($this->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id_workshops_type' => $model->id_workshops_type]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing WorkshopsType model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param int $id_workshops_type Id Workshops Type
     * @return \yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id_workshops_type)
    {
        $this->findModel($id_workshops_type)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the WorkshopsType model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $id_workshops_type Id Workshops Type
     * @return WorkshopsType the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id_workshops_type)
    {
        if (($model = WorkshopsType::findOne(['id_workshops_type' => $id_workshops_type])) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
