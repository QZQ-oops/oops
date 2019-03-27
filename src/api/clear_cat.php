<?php
/**
 * @Author: Marte
 * @Date:   2019-01-23 09:59:28
 * @Last Modified by:   Marte
 * @Last Modified time: 2019-01-23 10:04:06
 */
include 'connect.php';

$uid= isset($_GET['uid']) ? $_GET['uid'] : '';

if($uid){
    //sql语句 
    $sql = "DELETE FROM user_cart WHERE uid='$uid'";

    //执行语句 获取结果集
    $res = $conn -> query($sql);

    if($res) {
        $list = array(
            "code" => 1,
            "message" => "已删除"
        ); 
    }
}else {
    $list = array(
        "code" => 0,
        "message" => "未删除,deleid不能为空"
    );
}

//返回值
echo json_encode($list,JSON_UNESCAPED_UNICODE);

//关闭连接
$conn -> close();    


?>