<?php
namespace app\common\validate;

use think\Validate;

class Infor extends Validate
{
    protected $rule = [
        "titles|标题" => "require",
    ];
}
