        <?php
            if(isset($_GET['truyensua'])) //kieemr tra xem o ther a href co chuyen len chua neu cos thif thuc hien
            {
                $idT=$_GET['truyensua']; //tao bien cl moi va cho nnos bawng gia tri get ve de lay thong tin can sua
                $kq=mysqli_query($con, "select * from nncms_truyen where idTruyen=$idT");
                $dl=mysqli_fetch_array($kq);
        ?>
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Truyen
                            <small>Chinh Sua</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                        <form id="formthemloai" id="formthemloai" action="process.php" method="POST" enctype="multipart/form-data">
                            <div class="form-group">
                                <label><h4>Chủng Loại</h4></label>
                                <select class="form-control" name="chungloai" id="chungloai">
                                <?php
                                    $kqcl=mysqli_query($con, "select idCL, TenCL from nncms_chungloai");
                                    while ($dcl=mysqli_fetch_array($kqcl)) {
                                ?>
                                    <option value="<?php echo $dcl['idCL'];?>" <?php if($dl['idCL']==$dcl['idCL']) echo "selected='selected'";?> ><?php echo $dcl['TenCL'];?></option>
                                <?php } ?>
                                </select>
                                <input type="hidden" name="key" value="dstruyen">
                                <input type="hidden" name="idT" value="<?php echo $idT ;?>"/>
                            </div>
                            <div class="form-group">
                                <label>Tên Truyen</label>
                                <input class="form-control" name="txttruyen" required value="<?php echo $dl['TenTruyen']; ?>" />
                            </div>
                            <div class="form-group">
                                <label>Tac Gia</label>
                                <input class="form-control" name="txttacgia" value="<?php echo $dl['TacGia']; ?>" />
                            </div>
                            <div class="form-group">
                                <label>Nguon</label>
                                <input class="form-control" name="txtnguon" value="<?php echo $dl['Nguon']; ?>" />
                            </div>
                            <div class="form-group">
                                <label>Mo Ta</label>
                                <textarea class="form-control ckeditor" name="txtmota" required>
                                    <?php echo $dl['MoTa']; ?>
                                </textarea>
                            </div>
                            <div class="form-group">
                                <label for="ufile">Hình Ảnh</label>
                                <input type="file" name="anhbia" id="anhbia" />
                            </div>
                            <div class="form-group">
                                <label>Trang Thai</label>
                                <label class="radio-inline">
                                    <input name="txttrangthai" <?php if( $dl['TrangThai'] == 0) echo 'checked=""';?> value="0" checked="" type="radio">Hot
                                </label>
                                <label class="radio-inline">
                                    <input name="txttrangthai" <?php if( $dl['TrangThai'] == 1) echo 'checked=""';?> value="1" type="radio">Hoan Thanh
                                </label>
                            </div>
                            <div class="form-group">
                                <label>Ẩn Hiện</label>
                                <label class="radio-inline">
                                    <input name="txtanhien" <?php if( $dl['AnHien'] == 0) echo 'checked=""';?> value="0" checked="" type="radio">Ẩn
                                </label>
                                <label class="radio-inline">
                                    <input name="txtanhien" <?php if( $dl['AnHien'] == 1) echo 'checked=""';?> value="1" type="radio">Hiện
                                </label>
                            </div>
                         
                            <input type="submit" name="suatruyen" id="suatruyen" value="Sửa" />
                            <input type="reset" name="reset" id="reset" value="Reset" />
                        <form>
                    </div>
                </div>
            <?php } ?>
                <!-- /.row -->   
