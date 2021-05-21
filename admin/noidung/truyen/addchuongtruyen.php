        <?php
            if(isset($_GET['truyenthemchuong'])) //kieemr tra xem o ther a href co chuyen len chua neu cos thif thuc hien
            {
                $idT=$_GET['truyenthemchuong']; //tao bien cl moi va cho nnos bawng gia tri get ve de lay thong tin can sua
                $kq=mysqli_query($con, "select * from nncms_chuong where idTruyen=$idT");
                $dl=mysqli_fetch_array($kq);

                $kqtentruyen=mysqli_query($con, "select idTruyen, TenTruyen from nncms_truyen where idTruyen=$idT");
                $dltentruyen=mysqli_fetch_array($kqtentruyen);
        ?>
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Thêm Chương Mới
                            <small>Thêm Chương</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                        <form id="formthemchuong" id="formthemchuong" action="process.php" method="POST" enctype="multipart/form-data">
                            <div class="form-group">
                                <label>Tên Truyện</label>
                                <input class="form-control" type="text" name="hidetxttruyen" value="<?php echo $dltentruyen['TenTruyen'];?>" readonly />
                            </div>
                            <div class="form-group">
                                <label>Tên Chương</label>
                                <input class="form-control" type="text" name="txttenchuong" placeholder="Nhập tên sản phẩm" required />
                            </div>
                            <div class="form-group">
                                <label>Nội Dung</label>
                                <textarea class="form-control ckeditor" name="txtnoidung"></textarea>
                            </div>

                            <input type="hidden" name="txtidtruyen" value="<?php echo $idT; ?>">
                         
                            <input type="submit" name="themtruyenchuong" id="themtruyenchuong" value="Thêm Chương" />
                            <input type="reset" name="reset" id="reset" value="Reset" />
                        <form>
                    </div>
                </div>
            <?php } ?>
                <!-- /.row -->   
