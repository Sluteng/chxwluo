<?php
namespace app\common\validate;

use think\Validate;

class ModeContact extends Validate
{
    protected $rule = [
        "name|公司名称" => "require",
        "url|地址" => "require",
        "phone|电话" => "require",
    ];
}
