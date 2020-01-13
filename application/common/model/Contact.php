<?php
namespace app\common\model;

use think\Model;

class Contact extends Model
{
    // 指定表名,不含前缀
    protected $name = 'us_contact';
    // 开启自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';
}
