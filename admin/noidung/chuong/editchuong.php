        <?php
            if(isset($_GET['loaisua'])) //kieemr tra xem o ther a href co chuyen len chua neu cos thif thuc hien
            {
                $idL=$_GET['loaisua']; //tao bien cl moi va cho nnos bawng gia tri get ve de lay thong tin can sua
                $kq=mysqli_query($con, "select * from nncms_loaisp where idLoai=$idL");
                $dl=mysqli_fetch_array($kq);
        ?>
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Loại Sản Phẩm
                            <small>Thêm Mới</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                        <form id="formthemloai" id="formthemloai" action="process.php" method="POST">
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
                                <input type="hidden" name="key" value="dsloaisp">
                                <input type="hidden" name="idL" value="<?php echo $idL ;?>"/>
                            </div>
                            <div class="form-group">
                                <label>Tên Loại Sản Phẩm</label>
                                <input class="form-control" name="txtloai" required value="<?php echo $dl['TenLoai']; ?>" />
                            </div>
                            <div class="form-group">
                                <label>Thứ Tự</label>
                                <input class="form-control" type="number" min="1" name="txtthutu" value="<?php echo $dl['ThuTu']; ?>" />
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
                         
                            <input type="submit" name="sualsp" id="sualsp" value="Sửa" />
                            <input type="reset" name="reset" id="reset" value="Reset" />
                        <form>
                    </div>
                </div>
            <?php } ?>
                <!-- /.row -->   
