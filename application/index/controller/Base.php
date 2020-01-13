<?php
namespace app\index\controller;

use think\Controller;
use think\Loader;

class Base extends Controller
{
	public function _initialize()
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
		// return $this->fetch('',[
		//          'tdkResult'=>$tdkResult,
		//          'navberResult'=>$navberResult,
		//          'aboutsResult'=>$aboutsResult,
		//          'goodResult'=>$goodResult,
		//          'cultureResult'=>$cultureResult,
		//          'serviceResult'=>$serviceResult,
		//          'anliwResult'=>$anliwResult,
		//          'newddResult'=>$newddResult,
		//          'logoResult'=>$logoResult,
		//          'linksResult'=>$linksResult,
		//          'copyResult'=>$copyResult,
		//          'contactResult'=>$contactResult,
		         
		//         ]);
	}
}