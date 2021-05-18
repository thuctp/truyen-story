<?php
//@mysqli_connect("localhost","root","hhh") or die("Connection failed");
//mysqli_select_db("webbanhang");
//mysqli_query("set names 'utf8'");

mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
$con = mysqli_connect('localhost', 'root', '');
mysqli_select_db($con, 'test')
?>