<?php
namespace app\common\validate;

use think\Validate;

class Anli extends Validate
{
    protected $rule = [
        "img|网站图片" => "require",
        "Name|客户名称" => "require",
        "url|网站地址" => "require",
    ];
}
