<?php
namespace app\common\validate;

use think\Validate;

class Contact extends Validate
{
    protected $rule = [
        "name|公司名称" => "require",
        "url|地址" => "require",
        "phone|电话号码" => "require",
        "move|手机号码" => "require",
        "fax|传真" => "require",
        "site|网址" => "require",
    ];
}
