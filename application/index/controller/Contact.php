<?php
namespace app\index\controller;

use think\Controller;
use think\Loader;

class Contact extends Controller
{
    public function contact()
    {
        $tdkModel=Loader::model('Tdk');
        $tdkResult=$tdkModel->where([
                         'isdelete'=>0,
                         'status'=>1,
                     ])->select(); 
        $navberModel=Loader::model('Navber');
        $navberResult=$navberModel->where([
                        'isdelete'=>0,
                        'status'=>1
                    ])->order('sort','asc')->select();
        $aboutsModel=Loader::model('Abouts');
        $aboutsResult=$aboutsModel->where([
                        'isdelete'=>0,
                        'status'=>1,
                    ])->select();
        $goodModel=Loader::model('Good');
        $goodResult=$goodModel->where([
                        'isdelete'=>0,
                        'status'=>1,
                    ])->select();
        $cultureModel=Loader::model('Culture');
        $cultureResult=$cultureModel->where([
                        'isdelete'=>0,
                        'status'=>1,
                    ])->select();
        $serviceModel=Loader::model('Service');
        $serviceResult=$serviceModel->where([
                        'isdelete'=>0,
                        'status'=>1,
                    ])->select();
        $anliModel=Loader::model('Anli');
        $anliwResult=$anliModel->where([
                        'isdelete'=>0,
                        'status'=>1
                    ])->order('sort','asc')->limit(5)->select();
        $newdModel=Loader::model('Newd');
        $newddResult=$newdModel->where([
                        'isdelete'=>0,
                        'status'=>1,
                    ])->order('sort','asc')->limit(5)->select();
        // return json($newddResult);
        $logoModel=Loader::model('Logo');
        $logoResult=$logoModel->where([
                         'isdelete'=>0,
                         'status'=>1,
                     ])->select();
        $linksModel=Loader::model('Links');
        $linksResult=$linksModel->where([
                        'isdelete'=>0,
                        'status'=>1
                    ])->select();
        $copyModel=Loader::model('Copy');
        $copyResult=$copyModel->where([
                        'isdelete'=>0,
                        'status'=>1
                    ])->select();
        $contactModel=Loader::model('ModeContact');
        $contactResult=$contactModel->where([
                        'isdelete'=>0,
                        'status'=>1
                    ])->select();
        $cont=request()->controller(); //获取控制器名称
        $foo=lcfirst($cont);  //首字母变小写

           // return json($aboutsResult);
          //内容
          $tdkwModel=Loader::model('Tdkw');
          $tdkwResult=$tdkwModel->where([
                           'isdelete'=>0,
                           'status'=>1,
                       ])->select();
          // return json($tdkwResult);
          $contactrResult=$contactModel->where([
                          'isdelete'=>0,
                          'status'=>1,
                      ])->select();
          $BusModel=Loader::model('ModeRide');
          $BusResult=$BusModel->where([
                          'isdelete'=>0,
                          'status'=>1,
                      ])->select();
        // return json($BusResult);
         return $this->fetch('',[
                'tdkResult'=>$tdkResult,
                'navberResult'=>$navberResult,
                'aboutsResult'=>$aboutsResult,
                'goodResult'=>$goodResult,
                'cultureResult'=>$cultureResult,
                'serviceResult'=>$serviceResult,
                'anliwResult'=>$anliwResult,
                'newddResult'=>$newddResult,
                'logoResult'=>$logoResult,
                'linksResult'=>$linksResult,
                'copyResult'=>$copyResult,
                'contactResult'=>$contactResult,
                'foo'=>$foo,
                'tdkwResult'=>$tdkwResult,
                'contactrResult'=>$contactrResult,
                'BusResult'=>$BusResult,
                 ]);
    }
            public function centers()
    {
          if (request()->isPost()){
           $data = input('post.');

           // return json($data);
           $validate = validate('Box');
           if (!$validate->batch()->check($data)) {
             $error = $validate->getError();
             $this->error(implode(',',$error));
           }
           $center = model('Box');
           $center->data($data,true);
           $result = $center->allowField(true)->save();
           // return json($result);
           if ($result) {
            $this->redirect('/contact.html');
           } else {
            $this->redirect('/index.html');
           }
    }
  }
}
