<?php
namespace app\index\controller;

use think\Controller;
use think\Loader;

class News extends Controller
{
    public function news()
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
        $newdResult=$newdModel->where([
                        'isdelete'=>0,
                        'status'=>1,
                    ])->order('sort','asc')->select();
       //数组获取第一个值
        $arr=i_array_column($newdResult,'id');
        $tid=reset($arr);
        // return json($tid);
        $tdkdResult=$newdModel->where([
                        'isdelete'=>0,
                        'status'=>1,
                        'id'=>$tid
                    ])->order('sort','asc')->select();
        $newsModel=Loader::model('News');
        $newsResult=$newsModel->where([
                        'isdelete'=>0,
                        'status'=>1,
                        'fid'=>$tid,
                    ])->order('sort','asc')->paginate(3,false,[
                                 'path'=>'/newf/[PAGE].html',
                                 'page' => input('param.p'),
                                ]);
        $page = $newsResult->render();
        $count=$newsModel->where([
                        'isdelete'=>0,
                        'status'=>1,
                        'fid'=>$tid
                    ])->count();
        $max = ceil($count / 3);
        $url= $tid;
        $head="/newf/1.html";
        $tail="/newf/$max.html";
        // $url=$_SERVER["REQUEST_URI"];
        // return json();
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
                'newdResult'=>$newdResult,
                'tid'=>$tid,
                'tdkdResult'=>$tdkdResult,
                'newsResult'=>$newsResult,
                'page'=>$page,
                'head'=>$head,
                'tail'=>$tail,
                'max'=>$max,
                'url'=>$url,
               ]);
    }
    public function newd($id)
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
          $tdkdResult=$newdModel->where([
                        'isdelete'=>0,
                        'status'=>1,
                        'id'=>$id
                    ])->order('sort','asc')->select();
          $newdModel=Loader::model('Newd');
          $newdResult=$newdModel->where([
                          'isdelete'=>0,
                          'status'=>1,
                      ])->order('sort','asc')->select();
          $newsModel=Loader::model('News');
          $newsResult=$newsModel->where([
                          'isdelete'=>0,
                          'status'=>1,
                          'fid'=>$id
                      ])->order('sort','asc')->paginate(3,false,[
                                 'path'=>'/newy/'.$id.'/[PAGE].html',
                                 'page' => input('param.p'),
                                ]);
          $page = $newsResult->render();
          $count=$newsModel->where([
                          'isdelete'=>0,
                          'status'=>1,
                          'fid'=>$id
                      ])->count();
          $max = ceil($count / 3);
          $head="/newy/$id/1.html";
          $tail="/newy/$id/$max.html";
          $url= $id;
          // return json($urr);
        // return json($navberResult);
         return $this->fetch('news',[
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
                'tdkdResult'=>$tdkdResult,
                'newdResult'=>$newdResult,
                'newsResult'=>$newsResult,
                'page'=>$page,
                'head'=>$head,
                'tail'=>$tail,
                'max'=>$max,
                'url'=>$url,
                 ]);
    }
     public function newsa($id)
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
          $newsModel=Loader::model('news');
          $newsResult=$newsModel->where([
                          'isdelete'=>0,
                          'status'=>1,
                          'id'=>$id
                      ])->limit(1)->select();
        $arr=i_array_column($newsResult,'fid');
        $tid=reset($arr);
           //上一页
          $prev=$newsModel->where([
                           'isdelete'=>0,
                           'status'=>1,
                           'id' => ['<',$id],
                           'fid'=>$tid
                       ])->order('sort','desc')->limit(1)->select();
        // return json($prev);
          //下一页
          $next=$newsModel->where([
                           'isdelete'=>0,
                           'status'=>1,
                           'id' => ['>',$id],
                           'fid'=>$tid
                       ])->order('sort','asc')->limit(1)->select();
          // return json($next);
        // return json($navberResult);
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
                'newsResult'=>$newsResult,
                'prev'=>$prev,
                'next'=>$next,
                 ]);
    }
}
