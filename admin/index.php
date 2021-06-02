<?php
session_start();
if(!isset($_SESSION['username'])){
    header("location:login.php");

}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Khóa Học Lập Trình Laravel Framework 5.x Tại Khoa Phạm">
    <meta name="author" content="">
    <title>Admin - Minh Thuc</title>
    <script type="text/javascript" src="ckeditor/ckeditor.js"></script>
    <!-- Bootstrap Core CSS -->
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">
    <link href="dist/css/admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- DataTables CSS -->
    <link href="bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">
</head>

<body>
<?php include("../connect.php"); ?>
    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php">Trang Chủ</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>
                        <?php
                        if(isset($_SESSION['username'])) {
                            $kqName = mysqli_query($con, "select idAdmin, HoTen from nncms_admin where idAdmin={$_SESSION['username']}");
                            $showName = mysqli_fetch_array($kqName);
                            echo $showName['HoTen'];
                        }
                        ?>
                        <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="index.php?key=profile">
                                <i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="process.php?dangxuatadmin"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="index.php"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-tags fa-fw"></i> Chủng Loại<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="index.php?key=dschungloai">Danh Sách</a>
                                </li>
                                <li>
                                    <a href="index.php?key=themchungloai">Thêm Mới</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-book fa-fw"></i> Truyen<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="index.php?key=dstruyen">Danh Sách</a>
                                </li>
                                <li>
                                    <a href="index.php?key=themtruyen">Thêm Mới</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-list fa-fw"></i> Chuong<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="index.php?key=dschuong">Danh Sách</a>
                                </li>
                                <li>
                                    <a href="index.php?key=themchuong">Thêm Mới</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>

                        <?php
                        if(isset($_SESSION['username'])){
                        $kq=mysqli_query($con, "select idAdmin, idRole from nncms_admin where idAdmin={$_SESSION['username']}");
                        $checkAdmin=mysqli_fetch_array($kq);
                        if($checkAdmin['idRole'] < 2){
                        ?>
                        <li>
                            <a href="#"><i class="fa fa-users fa-fw"></i> User<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="index.php?key=dsadmin">Danh Sách Admin</a>
                                </li>
                                <li>
                                    <a href="index.php?key=addadmin">Thêm Admin</a>
                                </li>
                                <li>
                                    <a href="index.php?key=dsuser">Danh Sách Người Dùng</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <?php } }?>
                        <li>
                            <a href="#"><i class="fa fa-tags fa-fw"></i> Bình Luận<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="index.php?key=dscmttongquat">Tất Cả Bình Luận</a>
                                </li>
                                <li>
                                    <a href="index.php?key=dscomments">Danh Sách Mới Bình Luận</a>
                                </li>

                            </ul>
                            <!-- /.nav-second-level -->
                        </li>

                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
            <?php
			if(!isset($_GET["key"]))
					{
						include('noidung/trangchu.php') ;
					}
					else
						{
						switch($_GET["key"])
						    {
						    	//chủng loại
								case "dschungloai":
								include('noidung/chungloai/listchungloai.php');
								break;

								case "themchungloai":
								include("noidung/chungloai/addchungloai.php");
								break;

								case "suachungloai":
								include("noidung/chungloai/editchungloai.php");
								break;

                                // truyen
                                case "dstruyen":
                                include('noidung/truyen/listtruyen.php');
                                break;

                                case "themtruyen":
                                include("noidung/truyen/addtruyen.php");
                                break;

                                case "suatruyen":
                                include("noidung/truyen/edittruyen.php");
                                break;

                                case "themchuongtruyen":
                                include("noidung/truyen/addchuongtruyen.php");
                                break;

                                // chuong
                                case "dschuong":
                                include('noidung/chuong/listchuong.php');
                                break;

                                case "themchuong":
                                include("noidung/chuong/addchuong.php");
                                break;

                                case "suachuong":
                                include("noidung/chuong/editchuong.php");
                                break;

                                //bình Luận
                                case "dscmttongquat":
                                include("noidung/comment/detailcomment.php");
                                break;
                                case "dscomments":
                                include("noidung/comment/listcomments.php");
                                break;

                                case "listCmtRep":
                                include("noidung/comment/detailcommentBackup.php");
                                break;

								//taif khoang user
								case "dsuser":
								include('noidung/user/listuser.php');
								break;

								case "dsadmin":
								include("noidung/user/listadmin.php");
								break;

								case "addadmin":
								include("noidung/user/addadmin.php");
								break;

                                case "profile":
                                include("noidung/user/profile.php");
                                break;

                                case "suaprofile":
                                include("noidung/user/editadmin.php");
                                break;

                                case "suaroleadmin":
                                include("noidung/user/editroleadmin.php");
                                break;

							}
						}
				?>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>

    <!-- DataTables JavaScript -->
    <script src="bower_components/DataTables/media/js/jquery.dataTables.min.js"></script>
    <script src="bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
    });
    </script>
</body>

</html>
