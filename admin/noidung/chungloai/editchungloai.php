            <?php 
            if(isset($_GET['idCL']))
            {
                $kq=mysqli_query($con, "select idCL, TenCL, ThuTu, AnHien from nncms_chungloai where idCL={$_GET['idCL']} ");
                $d=mysqli_fetch_array($kq);
            ?>
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Chủng Loại
                            <small>Sửa Chủng Loại</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                        <form id="formthemcl" id="formthemcl" action="process.php" method="POST">
                            <div class="form-group">
                                <label>Tên Chủng Loại</label>
                                <input class="form-control" name="txttencl" required value="<?php echo $d['TenCL'] ;?>" />
                            </div>
                            <div class="form-group">
                                <label>Thứ Tự</label>
                                <input class="form-control" name="txtthutucl" min="1" value="<?php echo $d['ThuTu'] ;?>" />
                            </div>
                            <div class="form-group">
                                <label>Ẩn Hiện</label>
                                <label class="radio-inline">
                                    <input name="txtanhien" value="0" <?php if( $d['AnHien'] == 0) echo 'checked=""';?> type="radio">Ẩn
                                </label>
                                <label class="radio-inline">
                                    <input name="txtanhien" <?php if( $d['AnHien'] == 1) echo 'checked=""';?> value="1" type="radio">Hiện
                                </label>
                            </div>
                            <input name="idCL" type="hidden" id="idCL" value="<?php echo $d['idCL']?>"/>

                            <input type="submit" name="suacl" id="suacl" value="Sửa" />
                            <input type="reset" name="reset" id="reset" value="Reset" />
                        <form>
                    </div>
                </div>
                <?php } ?>