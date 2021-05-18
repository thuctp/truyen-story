<?php
/**
 * gủi emai khi co form chuyen emai.
 */

date_default_timezone_set('Etc/UTC');

require 'PHPMailer-master/PHPMailerAutoload.php';
$mail = new PHPMailer;
$mail->isSMTP();

$mail->SMTPDebug = 0;

$mail->Debugoutput = 'html';

$mail->Host = 'smtp.gmail.com';

$mail->Port = 465; //chinhrposst

$mail->SMTPSecure = 'ssl';

$mail->SMTPAuth = true;

$mail->Username = "minhthuc2796@gmail.com";

$mail->Password = "psojeinskwbaxecr";

$mail->setFrom('minhthuc2796@gmail.com', 'First Last');

$mail->addReplyTo('minhthuc2796@gmail.com', 'First Last');

$mail->addAddress($_POST['email'], $_POST['ten']); 

$mail->Subject = 'THONG TIN DON DAT HANG!';

$mail->msgHTML("<b>Chào {$_POST['ten']}!</b><br/> <p>Thông tin đặt hàng của quý khách:</p> <p>Đơn hàng sẽ được gửi tới địa chỉ : {$_POST['diadiem']} .</p> <p>Số điện thoại liên lạc: {$_POST['sdt']} .</p> <p>Tên người nhận: {$_POST['ten']} .</p> <p>Đơn hàng của bạn sẽ được giao trong vòng từ 3 đến 7 ngày tới.</p> <p>Bạn vui lòng chú ý tới điện thoại và người giao hàng sẽ liên lạc với bạn trong thời gian sớm nhất.</p> <p><b>Xin Chân Thành Cảm Ơn Quý Khách Đã Tin Tưởng !</b></p>"); //

$mail->AltBody = 'This is a plain-text message body';

if (!$mail->send()) {
    echo "Mailer Error: " . $mail->ErrorInfo;
} else {
    echo "<script>alert('Đặt Hàng Thành Công! Vui lòng kiểm tra thông tin trong email');location.href='index.php';</script>"; 
}
