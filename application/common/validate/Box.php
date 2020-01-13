<?php
namespace app\common\validate;

use think\Validate;

class Box extends Validate
{
    protected $rule = [
        "phone|电话" => "require",
        "name|名字" => "require",
        "content|内容" => "require",
    ];
}
