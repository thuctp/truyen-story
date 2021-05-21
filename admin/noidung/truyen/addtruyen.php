                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Thêm Truyện
                            <small>Thêm Mới</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                        <form id="formthemtruyen" action="process.php" method="POST" enctype="multipart/form-data">
                            <div class="form-group">
                                <label><h4>Chủng Loại</h4></label>
                                <select class="form-control" name="chungloai" id="chungloai">
                                <?php
                                    $kq=mysqli_query($con, "select idCL, TenCL from nncms_chungloai");
                                    while ($d=mysqli_fetch_array($kq)) {
                                ?>
                                    <option value="<?php echo $d['idCL'];?>" <?php if(isset($_GET['idCL'])&&$_GET['idCL']==$d['idCL']) echo "selected='selected'";?> ><?php echo $d['TenCL'];?></option>
                                <?php } ?>
                                </select>
                                <input type="hidden" name="key" value="dstruyen">
                            </div>
                            <div class="form-group">
                                <label>Tên Truyện</label>
                                <input class="form-control" name="txttruyen" required placeholder="Nhập ten truyen mới" />
                            </div>
                            <div class="form-group">
                                <label>Tác Giả</label>
                                <input class="form-control" name="txttacgia" value="Users" />
                            </div>
                            <div class="form-group">
                                <label>Nguồn Truyện</label>
                                <input class="form-control" name="txtnguon" value="Internet" />
                            </div>
                            <div class="form-group">
                                <label>Mô Tả</label>
                                <textarea class="form-control ckeditor" name="txtmota" required>
                                </textarea>
                            </div>
                            <div class="form-group">
                                <label for="ufile">Hình Ảnh</label>
                                <input type="file" name="anhbia" id="anhbia" required />
                            </div>
                            <div class="form-group">
                                <label>Trạng Thái</label>
                                <label class="radio-inline">
                                    <input name="txttrangthai" value="0" checked="" type="radio">Hot
                                </label>
                                <label class="radio-inline">
                                    <input name="txttrangthai" value="1" type="radio">Hoan Thanh
                                </label>
                            </div>
                            <div class="form-group">
                                <label>Ẩn Hiện</label>
                                <label class="radio-inline">
                                    <input name="txtanhien" value="0" checked="" type="radio">Ẩn
                                </label>
                                <label class="radio-inline">
                                    <input name="txtanhien" value="1" type="radio">Hiện
                                </label>
                            </div>
                         
                            <input type="submit" name="themtruyen" id="themtruyen" value="Thêm Truyện" />
                            &nbsp;
                            <input type="reset" name="reset" id="reset" value="Reset" />
                        <form>
                    </div>
                </div>
                <!-- /.row -->