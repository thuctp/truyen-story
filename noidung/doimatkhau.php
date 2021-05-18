            <form method="post" action="process.php" id="formdangnhap" name="formdangnhap">
                <div class="form-group">
                  <label for="usr">Email :</label>
                  <input type="text" class="form-control" id="email" name="email">
                </div>
                <div class="form-group">
                  <label for="pwd">Mật Khẩu :</label>
                  <input type="password" class="form-control" id="pass" name="pass">
                </div>
                <div class="form-group">
                  <label for="pwd">Mật Khẩu Mới :</label>
                  <input type="password" class="form-control" id="passnew" name="passnew">
                </div>
                <div class="form-group">
                  <label for="pwd">Nhập Lại Mật Khẩu Mới :</label>
                  <input type="password" class="form-control" id="repassnew" name="repassnew">
                </div>
                <input type="hidden" name="id" value="<?php echo $_SESSION['nguoidung']; ?>">

                <div style="text-align: center;font-weight: bold;color: red">
                  <button type="submit" class="btn btn-default" name="doimatkhau">Đổi Mật Khẩu</button>
                  <button style="margin: 0 30px 0 30px" type="reset" class="btn btn-default" name="huy">Reset</button>
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </form>