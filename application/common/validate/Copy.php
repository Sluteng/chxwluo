<?php
namespace app\common\validate;

use think\Validate;

class Copy extends Validate
{
    protected $rule = [
        "copyright|公司名称" => "require",
        "website|网址" => "require",
        "record|备案号" => "require",
    ];
}
