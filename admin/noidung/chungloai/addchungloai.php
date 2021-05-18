                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Chủng Loại
                            <small>Thêm Mới</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                        <form id="formthemcl" id="formthemcl" action="process.php" method="POST">
                            <div class="form-group">
                                <label>Tên Chủng Loại</label>
                                <input class="form-control" name="txttencl" required placeholder="Nhập vào tên chủng loại" />
                            </div>
                            <div class="form-group">
                                <label>Thứ Tự</label>
                                <input class="form-control" name="txtthutucl" min="1" placeholder="nhập bằng số" />
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

                            <input type="submit" name="themcl" id="themcl" value="Thêm" />
                            <input type="reset" name="reset" id="reset" value="Reset" />
                        <form>
                    </div>
                </div>
                <!-- /.row -->