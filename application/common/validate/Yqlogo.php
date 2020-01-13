<?php
namespace app\common\validate;

use think\Validate;

class Yqlogo extends Validate
{
    protected $rule = [
        "title|logo名称" => "require",
        "logo|logo图" => "require",
    ];
}
