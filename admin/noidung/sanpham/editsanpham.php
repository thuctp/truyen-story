        <?php
            if(isset($_GET['sanphamsua']))
            {
                $idsp=$_GET['sanphamsua'];
                $s="select * from nncms_sanpham where idSP=$idsp";
                $kq=mysqli_query($con, $s);
                $d=mysqli_fetch_array($kq);
        ?>

                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Sản Phẩm
                            <small>Thêm Mới</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-11" style="padding-bottom:120px">
                        <form id="form1" name="form1" action="" method="POST">
                            <div class="form-group">
                                <label><h4>Chủng Loại:</h4></label>
                                <select style="width: 300px" class="form-control" name="chungloai" id="chungloai" onchange="form1.submit()">
                            <?php 
                                $scl = "Select idCL, TenCL from nncms_chungloai";
                                $kqcl = mysqli_query($con, $scl);
                                $idCL = 0;
                                while($dcl = mysqli_fetch_array($kqcl))
                                {
                                  if($idCL == 0) $idCL = $dcl['idCL'];
                            ?>
                                    <option <?php if(isset($_POST['chungloai']) && $_POST['chungloai'] == $dcl['idCL']) {$idCL = $_POST['chungloai']; echo "selected='selected'";}?> value="<?php echo $dcl['idCL'];?>"><?php echo $dcl['TenCL'];?>
                            <?php } ?>
                                </select>
                                <input type="hidden" name="key" value="themsanpham">
                                <input type="hidden" name="idsp" value="<?php echo $idsp;?>">
                            </div>
                        </form>
                        <form id="ssp" name="ssp" action="process.php" method="POST">
                            <div class="form-group">
                                <label><h4>Loại Sản Phẩm:</h4></label>
                                <select style="width: 300px" class="form-control" name="loai" id="loai">
                            <?php 
                                $sl = "select idLoai, TenLoai from nncms_loaisp where idCL = $idCL order by ThuTu";
                                $kql = mysqli_query($con, $sl);
                                $idL = 0;
                                while($dl = mysqli_fetch_array($kql))
                                {
                                  if($idL == 0) $idL = $dl['idLoai'];
                            ?> 
                                    <option <?php if(isset($_POST['loai']) && $_POST['loai'] == $dl['idLoai']) {$idL = $_POST['loai']; echo "selected='selected'";}?> value="<?php echo $dl['idLoai'];?>"><?php echo $dl['TenLoai'];?></option>
                            <?php } ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Tên Sản Phẩm</label>
                                <input class="form-control" type="text" name="txttensp" value="<?php echo $d['TenSP']; ?>" required />
                            </div>
                            <div class="form-group">
                                <label>Giá</label>
                                <input class="form-control" type="number" name="txtgia" value="<?php echo $d['Gia']; ?>" required min="1000" />
                            </div>
                            <div class="form-group">
                                <label>Mô Tả</label>
                                <textarea class="form-control ckeditor" name="txtmota"><?php echo $d['MoTa']; ?></textarea>
                            </div>
                            <div class="form-group">
                                <label>Chi Tiết</label>
                                <textarea class="form-control ckeditor" name="txtchitiet"><?php echo $d['ChiTiet']; ?></textarea>
                            </div>
                            <div class="form-group">
                                <label for="ufile">Hình Ảnh</label>
                                <input type="file" name="hinh" id="hinh" />
                            </div>
                            <div class="form-group">
                                <label>Tồn Kho</label>
                                <input class="form-control" type="number" name="txttonkho" min="1" value="<?php echo $d['TonKho']; ?>" />
                            </div>
                            <div class="form-group">
                                <label>Ghi Chú</label>
                                <input class="form-control" type="text" name="txtghichu" value="<?php echo $d['GhiChu']; ?>"  />
                            </div>
                            <div class="form-group">
                                <label>Ẩn Hiện</label>
                                <label class="radio-inline">
                                    <input name="txtanhien" <?php if( $d['AnHien'] == 0) echo 'checked=""';?> value="0" checked="" type="radio">Ẩn
                                </label>
                                <label class="radio-inline">
                                    <input name="txtanhien" <?php if( $d['AnHien'] == 1) echo 'checked=""';?> value="1" type="radio">Hiện
                                </label>
                            </div>
                            <input type="submit" name="suasanpham" value="Sửa Sản Phẩm">
                            <input type="reset" name="huy" value="Reset"> 
                        <form>
                    </div>
                </div>
            <?php } ?>
                <!-- /.row -->