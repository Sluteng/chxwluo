<?php
namespace app\index\controller;

use think\Controller;
use think\Loader;

class Anli extends Controller
{
    public function anli()
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

          //内容
          $tdkaModel=Loader::model('Tdka');
          $tdkaResult=$tdkaModel->where([
                           'isdelete'=>0,
                           'status'=>1,
                       ])->select();
          // $anliModel=Loader::model('Anli');
          $anliResult=$anliModel->where([
                          'isdelete'=>0,
                          'status'=>1,
                      ])->order('sort','asc')->paginate(6,false,[
                                 'path'=>'/anlf/[PAGE].html',
                                 'page' => input('param.p'),
                                ]);
          $page = $anliResult->render();
          //首页
          $count=$anliModel->where([
                          'isdelete'=>0,
                          'status'=>1,
                      ])->count();
          $max = ceil($count / 6);
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
                'tdkaResult'=>$tdkaResult,
                'anliResult'=>$anliResult,
                'page'=>$page,
                'max'=>$max,
                 ]);
    }
        public function gpanli($id)
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
          $anliModel=Loader::model('Anli');
          $anliResult=$anliModel->where([
                          'isdelete'=>0,
                          'status'=>1,
                          'id'=>$id
                      ])->paginate(1);
          //上一页
          $prev=$anliModel->where([
                         'isdelete'=>0,
                         'status'=>1,
                         'id' => ['<',$id]
                     ])->order('id','desc')->limit(1)->select();
          //下一页
           $next=$anliModel->where([
                       'isdelete'=>0,
                       'status'=>1,
                       'id' => ['>',$id]
                   ])->order('id','asc')->limit(1)->select();
          // return json($next);
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
                'anliResult'=>$anliResult,
                'prev'=>$prev,
                'next'=>$next,
                 ]);
    }
}
