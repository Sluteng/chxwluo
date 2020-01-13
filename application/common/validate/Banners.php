<?php
namespace app\common\validate;

use think\Validate;

class Banners extends Validate
{
    protected $rule = [
        "banner_img|轮播图" => "require",
    ];
}
