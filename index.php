<?php
session_start(); 
if(!isset($_SESSION['giohang'])) $_SESSION['giohang']=array(); //khoi tao gio hang bang dau bang array
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/scss/bootstrap.css" rel="stylesheet" />
    <link href="lib/fontawesome5/css/fontawesome.css" rel="stylesheet">
    <link href="lib/fontawesome5/css/brands.css" rel="stylesheet">
    <link href="lib/fontawesome5/css/solid.css" rel="stylesheet">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  	<script src="lib/js/bootstrap.bundle.min.js"></script>

	<title>website ban hang</title>
	<link href="css/stype.css" rel="stylesheet" />
	<link href="css/main.css" rel="stylesheet" />


	<script type="text/javascript">
	// <![CDATA[
	var myMenu;
	window.onload = function() {
		myMenu = new SDMenu("my_menu");
		myMenu.init();
	};
	// ]]>
	</script>

</head>
<body>
<?php include("connect.php") ;?>
<div class="container-fluid">
	<div class="jumbotron" style="padding: 0px; margin: 0px">
    	<img src="img/banner/bia.png" width="100%">
  </div>
</div><!--div the chinh-->

<!-- phan menu cua website -->
<?php include('noidung/menu.php') ;?>
<!-- ket thuc phan menu cua website -->

<div class="container pt-4">
<!--phan noi dung -->
	<div class="d-lg-flex">
			<!-- bat dau phan noi dung -->
			<!-- phan nay la phan thay doi khi co key gan vao -->
		<div class="main-content">

		<?php
			if(!isset($_GET["key"]))
					{
						include('noidung/trangchu.php') ;
					}
					else
						{
						switch($_GET["key"])
						    {
								case "chitiettruyen":
								include("noidung/chitiettruyen.php");
								break;

//								case "sploai":
//								include("noidung/danhsachloai.php");
//								break;

                                case "truyenCL":
                                include("noidung/danhsachloai.php");
                                break;

								case 'dangkynguoidung':
								include("noidung/dangkynguoidung.php");
								break;

								case 'suauser':
								include("noidung/suataikhoangnguoidung.php");
								break;

							}
						}
		?>			
			
		</div>
			<!-- ket thuc phan nay la phan thay doi khi co key gan vao -->
			<!-- ket thuc phan noidung phan noi dung -->
		<!-- phan noi dung en trai -->	
		<div class="left-content">
			<?php include("noidung/left.php") ;?>
		</div>
		<!--ket thu phan noi dung en trai -->

	</div>
</div>

<div class="container-fluid">
<?php require_once('noidung/footer.php') ;?>
</div>

</body>
</html>