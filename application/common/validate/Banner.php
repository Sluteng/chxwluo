<?php
namespace app\common\validate;

use think\Validate;

class Banner extends Validate
{
    protected $rule = [
        "banner_title|轮播标题" => "require",
        "banner_img|轮播图片" => "require",
        "banner_href|图片链接" => "require",
    ];
}
