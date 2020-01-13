<?php
namespace app\common\validate;

use think\Validate;

class News extends Validate
{
    protected $rule = [
        "head|父标题" => "require",
        "titles|标题" => "require",
    ];
}
