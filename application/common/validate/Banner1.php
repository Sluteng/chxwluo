<?php
namespace app\common\validate;

use think\Validate;

class Banner1 extends Validate
{
    protected $rule = [
        "banner_img|轮播图" => "require",
    ];
}
