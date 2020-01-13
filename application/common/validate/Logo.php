<?php
namespace app\common\validate;

use think\Validate;

class Logo extends Validate
{
    protected $rule = [
        "logo|logo图" => "require",
    ];
}
