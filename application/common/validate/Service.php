<?php
namespace app\common\validate;

use think\Validate;

class Service extends Validate
{
    protected $rule = [
        "title|标题" => "require",
        "img|图标" => "require",
        "titles|子标题" => "require",
        "editorValue|文章内容" => "require",
    ];
}
