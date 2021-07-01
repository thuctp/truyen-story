<?php
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
$con = mysqli_connect('localhost', 'root', '');
mysqli_select_db($con, 'test')

//mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
//$con = mysqli_connect('localhost', 'tru86047_admin01', 'Minhthuc#1996');
//mysqli_select_db($con, 'tru86047_truyen01')
?>