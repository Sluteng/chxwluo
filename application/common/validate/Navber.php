<?php
namespace app\common\validate;

use think\Validate;

class Navber extends Validate
{
    protected $rule = [
        "bk_name|导航栏目" => "require",
        "bk_href|导航链接" => "require",
    ];
}
