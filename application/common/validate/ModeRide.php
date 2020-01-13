<?php
namespace app\common\validate;

use think\Validate;

class ModeRide extends Validate
{
    protected $rule = [
        "title|乘车方式" => "require",
    ];
}
