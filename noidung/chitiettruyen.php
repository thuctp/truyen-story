<?php
    $idGetTruyen = $_GET['idtruyen'];
	$kqtruyen=mysqli_query($con, "select * from nncms_truyen where idTruyen=$idGetTruyen");
	$dctt=mysqli_fetch_array($kqtruyen);

    //add page cho chuong
    $sodong=1; // 12 san pham ad
    $kqsp=mysqli_query($con, "select * from nncms_chuong where idTruyen={$idGetTruyen}");
    $tongsotrang=ceil(mysqli_num_rows($kqsp)/$sodong)+1;
    $startsotrang=0;
    //end add page cho chuong


    $couterview = "UPDATE  nncms_truyen  SET SoLanXem = SoLanXem+1 WHERE idTruyen = $idGetTruyen";
    $kqsql=mysqli_query($con, $couterview);
//    $kqview=mysqli_fetch_array($kqsql);

;?>
<div class="mb-5 bg-white px-2 py-4">
    <div class="row">
        <div class="col-sm-3">
            <div class="thumbnail mb-2">
                <a href="#" target="">
                    <img src="upload/sanpham/<?php echo $dctt['UrlHinh'] ;?>" alt="sanpham" width="100%">
                </a>
            </div>
            <div class="mb-2">Nguồn: <?php echo $dctt['Nguon'] ;?></div>
            <div class="mb-2"><span class="icon-detail-truyen"><i class="fas fa-user-tie"></i></span>
                <?php echo $dctt['TacGia'] ;?>
            </div>
            <div class="mb-2"><span class="icon-detail-truyen"><i class="fas fa-calendar-alt"></i></span>
                <?php echo $dctt['NgayDang'] ;?>
            </div>
            <div class="mb-2"><span class="icon-detail-truyen"><i class="fas fa-eye"></i></span>
                <?php echo $dctt['SoLanXem']+1 ;?>
            </div>
            <div class="mb-2"><span class="icon-detail-truyen"><i class="fas fa-star"></i></span>
                <?php if($dctt['TrangThai'] == 1) echo "Hoàn Thành"; else echo "Truyện Hot";?>
            </div>
        </div>
        <div class="col-sm-9">
            <div class="wrap-truyen-detail">
                <h2 class="text-primary"><?php echo $dctt['TenTruyen'] ;?></h2>
                <div class="truyen-detail-item">
                    <div><?php echo $dctt['MoTa'] ;?> </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- kết thúc thông tin kỹ thuật -->


<!-- list cac chuong -->
<div class="mb-5 bg-white p-2">
    <h4 class="title-loai">Danh Sách 10 Chương Mới Đăng</h4>

    <ul class="list-group">
        <?php
        $listChuong="select * from nncms_chuong where idTruyen = $idGetTruyen order by NgayDang DESC, idChuong DESC limit 0,10 ";
        $kqlc=mysqli_query($con, $listChuong);
        $checkDATA=mysqli_num_rows($kqlc);

        if($checkDATA > 0){
        while ($dlq=mysqli_fetch_array($kqlc)) {
            $tongsotrang=$tongsotrang-1
        ?>
        <li class="list-group-item">
            <a class="text-dark" href="index.php?key=chuong&idchuong=<?php echo $dlq['idChuong'] ;?>&p=<?php echo $tongsotrang; ?>">
            <?php echo $dlq['TenChuong'] ;?>
            </a>
        </li>
        <?php }
        } else{ ?>
            <li class="list-group-item py-4">
                <h6>Chưa có chường nào cho truyện này!</h6>
            </li>
        <?php } ?>
    </ul>
</div>

<!-- list toàn chuong -->
<div class="mb-5 bg-white p-2">
    <h4 class="title-loai">Danh Sách Toàn Bộ Chương</h4>

    <ul class="list-group">
        <?php
        if(isset($idGetTruyen))

            $sodong=20; // 12 san pham ad
        $sonhom=3; // 5 trang ad
        $sl="select * from nncms_chuong where idTruyen=$idGetTruyen";
        $kqsp=mysqli_query($con, $sl);
        $tongsotrang=ceil(mysqli_num_rows($kqsp)/$sodong);
        if (!isset($_GET["p"])) //kiểm tra get so trang xuống nếu không có trang thì cho mặt định nó là
        {
            $p=1; //cho mặt định nó là một
        }
        else
        {
            $p=intval($_GET["p"]);
        }
        $x=($p-1)*$sodong; //lấy số trang hiện hành, để chia ra từng trang sản phẩn trong từng trang. đay là sản phẩm bắt đàu của mỗi trang

        $sl="select * from nncms_chuong where idTruyen=$idGetTruyen limit $x,$sodong";
        $kqsp=mysqli_query($con, $sl);
        $checkDATA=mysqli_num_rows($kqsp);
        if($checkDATA > 0){
        while ($d=mysqli_fetch_array($kqsp)) {
            $startsotrang=$startsotrang+1
            ?>
            <li class="list-group-item">
                <a class="text-dark" href="index.php?key=chuong&idchuong=<?php echo $d['idChuong'] ;?>&p=<?php echo $startsotrang; ?>">
                <?php echo $d['TenChuong'] ;?>
                </a>
            </li>
        <?php } } else{ ?>
            <li class="list-group-item py-4">
                <h6>Chưa có chường nào cho truyện này!</h6>
            </li>
        <?php } ?>

    </ul>

    <?php if($checkDATA > 0){ ?>
        <div class="custom-pagination mb-0">
        <!-- Phần hiển thị số trang -->
        <p class="pagenavi" align="left" style="clear:both; font-weight: bold;">
            <?php
            $dau = $p-2;
            if($dau<1)
            {$dau=1;}
            $cuoi = $dau + $sonhom - 1;
            if($cuoi>$tongsotrang)
            {$cuoi=$tongsotrang;}
            ?>
            <!-- trang hien tai cua tổng số trang -->
            <span style="float: right;">Page <?php echo $p; ?> of <?php echo $tongsotrang;?></span>
            <!-- hien <trang đau> hiện về trang đàu tiên -->
            <a href="index.php?key=chitiettruyen&idtruyen=<?php echo $idGetTruyen;?>&p=1">Trang đầu</a>
            <!-- icon hiển thị các trang phía trước của trang hien tai -->
            <?php if ($p>1) {
                $p1=$p-1;
                ?>
                <a href="index.php?key=chitiettruyen&idtruyen=<?php echo $idGetTruyen;?>&p=<?php echo $p1; ?>"><img src="images/icon/1328101938_Arrow-Right.png" width="40" height="20"/></a>&nbsp;
            <?php } ?>
            <!-- liet ke thu tu cac trang trong nhom -->
            <?php
            for($i=$dau;$i<=$cuoi;$i++)
            {
                if ($i<=$tongsotrang)
                {
                    if ($i==$p)
                    {
                        echo $i."&nbsp;";
                    }
                    else
                    {
                        ?>
                        <a href="index.php?key=chitiettruyen&idtruyen=<?php echo $idGetTruyen;?>&p=<?php echo $i; ?>"><?php echo $i; ?></a>
                        <?php
                    }
                }
            }
            ?>
            <!-- hien trang sau -->
            <?php if ($p<$tongsotrang) {
                $p2=$p+1;
                ?>
                <a href="index.php?key=chitiettruyen&idtruyen=<?php echo$idGetTruyen;?>&p=<?php echo $p2; ?>"><img src="images/icon/1328101938_Arrow-left.png" width="40" height="20" /></a>&nbsp;
            <?php } ?>
            <?php
            if($p=$tongsotrang){
                $trangcuoi=$p;
                ?>
                <a href="index.php?key=chitiettruyen&idtruyen=<?php echo $idGetTruyen;?>&p=<?php echo $trangcuoi; ?>">Trang cuối</a>
            <?php } ?>
        </p>
    </div>
    <?php } ?>

</div>

<!-- truyen tuyowng đương -->
<div class="mb-5 bg-white p-2">
    <h4 class="title-loai">Truyen Cung The Loai</h4>

    <?php
    $cungcl= $dctt['idCL'];
    $slq="select * from nncms_truyen where idCL = $cungcl and idTruyen != {$_GET['idtruyen']} order by SoLanXem DESC limit 0,4 ";
    $kqlq=mysqli_query($con, $slq);
    $checkDATA=mysqli_num_rows($kqlq);
    if($checkDATA > 0){ ?>
    <div class="row row-cols-1 row-cols-md-4 g-2">
    <?php while ($dlq=mysqli_fetch_array($kqlq)) { ?>
        <div class="col">
            <a href="index.php?key=chitiettruyen&idtruyen=<?php echo $dlq['idTruyen'] ;?>">
                <div class="card card-list-truyen custom-card-body">
                    <div class="wrap-card-img"><img class="card-img-top"
                                                    src="upload/sanpham/<?php echo $dlq['UrlHinh'];?>" alt="hinh"></div>
                    <div class="card-body">
                        <h6 class="card-title"><?php echo $dlq['TenTruyen'];?></h6>
                    </div>
                </div>
            </a>
        </div>
    <?php } ?>
    </div>
    <?php } else{ ?>
        <div class=" py-4">
            <h6>Không Có truyện nào cùng Thể Loại này!</h6>
        </div>
    <?php } ?>

</div>
<!-- kết thúc sản phẩm giá tuyowng đương -->

<!--phần bình luận của đọc giả-->
<div class="mb-5 bg-white p-2">
    <h4 class="title-loai">Bình Luận Bài Viết:</h4>



    <div class="list-comment">
        <!-- Binh Luaan chua duoc approve -->
        <?php
        if(isset($_SESSION['nguoidung'])){
            $slComment="select * from nncms_comments where idTruyen = $idGetTruyen and TrangThai > 0 and idNguoiDung={$_SESSION['nguoidung']} ";
            $kqListComment=mysqli_query($con, $slComment);
            $checkDATAListComment=mysqli_num_rows($kqListComment);

            if($checkDATAListComment > 0){
                while ($loopComment=mysqli_fetch_array($kqListComment)) {
                    $slGetUser="select idNguoiDung, HoTen, GioiTinh from nncms_nguoidung where idNguoiDung = {$loopComment['idNguoiDung']}";
                    $kqGetUser=mysqli_query($con, $slGetUser);
                    $name=mysqli_fetch_array($kqGetUser);
                    ?>
                    <div class="comment-list-items comment-waiting-approve op-7">
                    <span class="box-avatar">
                        <?php if($name['GioiTinh'] == 1){ ?>
                            <img src="upload/sanpham/AvatarNu.png" alt="avatar">
                        <?php } else{ ?>
                            <img src="upload/sanpham/AvatarNam.png" alt="avatar">
                        <?php } ?>
                    </span>
                        <div class="box-content">
                            <h6 class="nameUser">
                                <?php echo $name['HoTen'] ?>
                                <span class="waiting-text">(Đang Chờ Duyệt)</span>
                            </h6>
                            <p class="content-cmt"><?php echo $loopComment['NoiDung'] ?></p>
                        </div>
                    </div>

                <?php } } } ?>
        <!--  -->
        <div id="id-show-hide-cmt">

            <?php
            $slComment="select * from nncms_comments where idTruyen = $idGetTruyen and TrangThai=0 order by idCmt DESC";
            $kqListComment=mysqli_query($con, $slComment);
            $checkDATAListComment=mysqli_num_rows($kqListComment);

            if($checkDATAListComment > 0){
            while ($loopComment=mysqli_fetch_array($kqListComment)) {
            ?>
            <div class="wrap-comment-list items-show-hide-cmt">
                <?php
                $slGetUser="select idNguoiDung, HoTen, GioiTinh from nncms_nguoidung where idNguoiDung = {$loopComment['idNguoiDung']}";
                $kqGetUser=mysqli_query($con, $slGetUser);
                $name=mysqli_fetch_array($kqGetUser);
                ?>
                <div class="comment-list-items">
                    <span class="box-avatar">
                        <?php if($name['GioiTinh'] == 1){ ?>
                            <img src="upload/sanpham/AvatarNu.png" alt="avatar">
                        <?php } else{ ?>
                            <img src="upload/sanpham/AvatarNam.png" alt="avatar">
                        <?php } ?>
                    </span>
                    <div class="box-content">
                        <h6 class="nameUser"><?php echo $name['HoTen'] ?></h6>
                        <p class="content-cmt"><?php echo $loopComment['NoiDung'] ?></p>
                    </div>
                </div>

                <?php
                if(isset($_SESSION['nguoidung'])){
                $kqkt=mysqli_query($con, "select idNguoiDung, HoTen from nncms_nguoidung where idNguoiDung={$_SESSION['nguoidung']}");
                $getUser=mysqli_fetch_array($kqkt);
                ?>
                <button type="button" class="btn btn-default btn-reply" data-toggle="button" aria-pressed="false" autocomplete="off">
                    <span class="rep">Reply</span><span class="cancel">Cancel</span>
                </button>
                <?php } ?>

                <div class="write-reply-comment">
                    <?php
                    if(isset($_SESSION['nguoidung'])){
                        $kqkt=mysqli_query($con, "select idNguoiDung, HoTen from nncms_nguoidung where idNguoiDung={$_SESSION['nguoidung']}");
                        $getUser=mysqli_fetch_array($kqkt);
                        ?>
                        <form method="post" action="process.php" id="formRepComment" name="formRepComment">
                            <div class="form-group form-binhluan">
                                <input type="text" class="form-control" id="txtcommentRep" name="txtcommentRep" placeholder="Nhập vào bình luận... ">

                                <input type="hidden" id="textIdCmtRep" name="textIdCmtRep" value="<?php echo $loopComment['idCmt']; ?>">
                                <input type="hidden" id="textIdTruyenRep" name="textIdTruyenRep" value="<?php echo $idGetTruyen; ?>">
                                <input type="hidden" id="textIdNguoiDungRep" name="textIdNguoiDungRep"
                                       value="<?php echo $_SESSION['nguoidung']; ?>">
                                <button type="submit" class="btn btn-default btn-binhluan" name="replyComment">Bình Luận</button>
                            </div>
                        </form>
                    <?php } ?>
                </div>
                <div class="list-comment-reply">
                    <!-- list chua approve comments -->
                    <?php
                    if(isset($_SESSION['nguoidung'])){
                    $slRepComment="select * from nncms_comments_rep where idCmt = {$loopComment['idCmt']} and TrangThai > 0 and idNguoiDung={$_SESSION['nguoidung']}";
                    $kqListCommentRep=mysqli_query($con, $slRepComment);
                    while ($loopCommentRep=mysqli_fetch_array($kqListCommentRep)) {
                        ?>
                        <div class="wrap-comment-rep-list">
                            <?php
                            $slGetUserRep="select idNguoiDung, HoTen, GioiTinh from nncms_nguoidung where idNguoiDung = {$loopCommentRep['idNguoiDung']}";
                            $kqGetUserRep=mysqli_query($con, $slGetUserRep);
                            $nameRep=mysqli_fetch_array($kqGetUserRep);
                            ?>

                            <div class="comment-list-items op-7">
                                <span class="box-avatar">
                                    <?php if($nameRep['GioiTinh'] == 1){ ?>
                                        <img src="upload/sanpham/AvatarNu.png" width="40px" alt="avatar">
                                    <?php } else{ ?>
                                        <img src="upload/sanpham/AvatarNam.png" width="40px" alt="avatar">
                                    <?php } ?>
                                </span>
                                <div class="box-content">
                                    <h6 class="nameUser">
                                        <?php echo $nameRep['HoTen'] ?>
                                        <span class="waiting-text">(Đang Chờ Duyệt)</span>
                                    </h6>
                                    <p class="content-cmt"><?php echo $loopCommentRep['NoiDung'] ?></p>
                                </div>
                            </div>
                        </div>
                    <?php } } ?>

                    <!-- list comments -->
                    <?php
                    $slRepComment="select * from nncms_comments_rep where idCmt = {$loopComment['idCmt']} and TrangThai = 0";
                    $kqListCommentRep=mysqli_query($con, $slRepComment);
                    while ($loopCommentRep=mysqli_fetch_array($kqListCommentRep)) {
                        ?>
                        <div class="wrap-comment-rep-list">
                            <?php
                            $slGetUserRep="select idNguoiDung, HoTen, GioiTinh from nncms_nguoidung where idNguoiDung = {$loopCommentRep['idNguoiDung']}";
                            $kqGetUserRep=mysqli_query($con, $slGetUserRep);
                            $nameRep=mysqli_fetch_array($kqGetUserRep);
                            ?>

                            <div class="comment-list-items">
                                <span class="box-avatar">
                                    <?php if($nameRep['GioiTinh'] == 1){ ?>
                                        <img src="upload/sanpham/AvatarNu.png" width="40px" alt="avatar">
                                    <?php } else{ ?>
                                        <img src="upload/sanpham/AvatarNam.png" width="40px" alt="avatar">
                                    <?php } ?>
                                </span>
                                <div class="box-content">
                                    <h6 class="nameUser"><?php echo $nameRep['HoTen'] ?></h6>
                                    <p class="content-cmt"><?php echo $loopCommentRep['NoiDung'] ?></p>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                </div>

            </div>
            <?php }
            } else{ ?>
                <div class="list-group-item py-4">
                    <h6>Chưa có Binh luan nao nào cho truyện này!</h6>
                </div>
            <?php } ?>
        </div>
        <div id="box-show-hide" class="box-show-hide">
            <div id="showLessCmt" class="showLessCmt">Show less comments</div>
            <div id="loadMoreCmt" class="loadMoreCmt">View more comments</div>
        </div>

    </div>


<!--    form nhap comment-->
    <div class="write-comment">
        <?php
        if(isset($_SESSION['nguoidung'])){
        $kqkt=mysqli_query($con, "select idNguoiDung, HoTen from nncms_nguoidung where idNguoiDung={$_SESSION['nguoidung']}");
        $getUser=mysqli_fetch_array($kqkt);
        ?>
        <form method="post" action="process.php" id="formComment" name="formComment">
            <div class="form-group form-binhluan">
                <input type="text" class="form-control" id="txtcomment" name="txtcomment" placeholder="Nhập vào bình luận...">
            <input type="hidden" id="textIdTruyen" name="textIdTruyen" value="<?php echo $idGetTruyen; ?>">
            <input type="hidden" id="textIdNguoiDung" name="textIdNguoiDung"
                   value="<?php echo $_SESSION['nguoidung']; ?>">
                <button type="submit" class="btn btn-default btn-binhluan" name="comment">Bình Luận</button>
            </div>
        </form>
        <?php } else{ ?>
            <div class="box-noti-mess">
                <h6>Hãy đăng nhập để có thể bình luận cho truyện!</h6>
            </div>
        <?php } ?>
    </div>
</div>
<!--end code phần bình luận của đọc giả-->
