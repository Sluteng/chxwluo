<?php
namespace app\common\validate;

use think\Validate;

class About extends Validate
{
    protected $rule = [
        "theme|主题" => "require",
        "img|图片" => "require",
        "title|标题" => "require",
    ];
}
