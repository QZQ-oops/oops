<?php
/**
 * @Author: Marte
 * @Date:   2019-01-23 10:06:49
 * @Last Modified by:   Marte
 * @Last Modified time: 2019-02-14 17:56:52
 */
include 'connect.php';

$uid = isset($_GET['uid']) ? $_GET['uid'] : 0;
$goodsid = isset($_GET['goodsid']) ? $_GET['goodsid']*1 : 0;
$num = isset($_GET['num']) ? $_GET['num']*1 : 0;

$sql = "SELECT * FROM user_cart where uid='$uid' and goodsid = $goodsid";
$res = $conn -> query($sql);
// var_dump($res);
if($res->num_rows<=0){
    //信息插入userlist表
    $sql2 = "INSERT INTO user_cart(uid,num,goodsid) VALUES('$uid',$num,$goodsid)";
    //执行sql语句 
    $res1 = $conn -> query($sql2);
    $arr = array(
        "code" => 1,
        "goodsid" => $goodsid,
        "uid" => $uid,
        // "num" => $num,
        "message" => "加入成功"
        );
    echo json_encode($arr,JSON_UNESCAPED_UNICODE);
}else if($res->num_rows>0){
    $sql3 = "SELECT num FROM user_cart WHERE goodsid=$goodsid";
    $res2 = $conn -> query($sql3);
    $arr1= array(
        "code" => 0,
        "goodsid" => $goodsid,
        // "uid" => $uid,
        "num" => $num,
        "message" => "该商品已在购物车内"
        );
    echo json_encode($arr1,JSON_UNESCAPED_UNICODE);
}

$conn -> close();
?>