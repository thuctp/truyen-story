<?php
//@mysqli_connect("localhost","root","hhh") or die("Connection failed");
//mysqli_select_db("webbanhang");
//mysqli_query("set names 'utf8'");

mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
$con = mysqli_connect('localhost', 'tru86047_admin01', 'Minhthuc#1996');
mysqli_select_db($con, 'tru86047_truyen01')
?>