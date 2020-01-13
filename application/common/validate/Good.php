<?php
namespace app\common\validate;

use think\Validate;

class Good extends Validate
{
    protected $rule = [
        "titles|标题" => "require",
        "content|内容" => "require",
    ];
}
