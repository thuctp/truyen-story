<?php
//include("../connect.php");

/*****************************************************
 *	xử lý phần đăng nhập
 ******************************************************/

$path = $_SERVER['SCRIPT_NAME'];

$linkPrivate1 = '/admin/index.php?';

echo $path;
echo $linkPrivate1;
if (strpos($path, $linkPrivate1) !== false) {
    echo 'true';
} else{
    echo 'false';
}
$_SESSION['username'];
if(!isset($_SESSION['username'])){
    header("location:login.php");
}