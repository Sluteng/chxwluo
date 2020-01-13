<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------
use think\Route;
Route::get('index', 'index/Index/index'); //首页
Route::get('abouts', 'index/Abouts/abouts'); //关于
Route::get('service', 'index/Service/service'); //服务
Route::get('anli', 'index/Anli/anli'); //案例
Route::get('anlf/:p', 'index/Anli/anli'); //案例
Route::get('gpanli/:id', 'index/Anli/gpanli'); //案例
Route::get('news', 'index/News/news'); //新闻动态
Route::get('newf/:p', 'index/News/news'); //新闻动态
Route::get('newd/:id', 'index/News/newd'); //新闻动态
Route::get('newy/:id/:p', 'index/News/newd'); //新闻动态
Route::get('hyzx', 'index/News/hyzx'); //行业动态
Route::get('newsa/:id', 'index/News/newsa'); //新闻动态
Route::get('contact', 'index/Contact/contact'); //联系
Route::post('centers', 'index/Contact/centers'); //联系

Route::rule('head/:fid', 'admin/News/news'); //联系


Route::get('new', 'admin/news/index');
Route::get('admin/news/index', 'admin/news/index');
return [
    '__pattern__' => [
        'name' => '\w+',
    ],
    '[hello]'     => [
        ':id'   => ['index/hello', ['method' => 'get'], ['id' => '\d+']],
        ':name' => ['index/hello', ['method' => 'post']],
    ],

];
