<?php
/**
 * @Author: Marte
 * @Date:   2019-01-17 10:14:43
 * @Last Modified by:   Marte
 * @Last Modified time: 2019-01-17 19:51:55
 */

include 'connect.php';

$username = isset($_POST['username']) ? $_POST['username'] : 'asdasd';
$password = isset($_POST['password']) ? $_POST['password'] : 'asdasd';

$sql = "SELECT * FROM user WHERE username='$username' and password='$password'";

$res = $conn -> query($sql);

// var_dump($res);

if($res -> num_rows >0){
    $arr = array(
        "code" => 1,
        "message" => "登录成功",
        "username" => $username
    );
}else{
    $arr = array(
        "code" => 0,
        "message" => "登录失败",
        "username" => $username
    );
}

echo json_encode($arr,JSON_UNESCAPED_UNICODE);
$res -> close();
$conn -> close();


?>