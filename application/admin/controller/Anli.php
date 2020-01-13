<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

use app\admin\Controller;

class Anli extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    protected function filter(&$map)
    {
        if ($this->request->param("Name")) {
            $map['Name'] = ["like", "%" . $this->request->param("Name") . "%"];
        }
        if ($this->request->param("url")) {
            $map['url'] = ["like", "%" . $this->request->param("url") . "%"];
        }
    }
}
