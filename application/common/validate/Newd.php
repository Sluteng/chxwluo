<?php
namespace app\common\validate;

use think\Validate;

class Newd extends Validate
{
    protected $rule = [
        "titles|标题" => "require",
    ];
}
