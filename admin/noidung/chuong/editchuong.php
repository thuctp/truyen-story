        <?php
            if(isset($_GET['chuongsua']))
            {
                $idchuong=$_GET['chuongsua'];
                $s="select * from nncms_chuong where idChuong=$idchuong";
                $kq=mysqli_query($con, $s);
                $d=mysqli_fetch_array($kq);
        ?>

                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Chương
                            <small>Sửa Chương</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-11" style="padding-bottom:120px">
                        <form id="form1" name="form1" action="" method="POST">
                            <div class="form-group">
                                <label><h4>Thể Loại:</h4></label>
                                <select style="width: 300px" class="form-control" name="chungloai" id="chungloai" onchange="form1.submit()" disabled="true">
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
                                <input type="hidden" name="key" value="themchuong">

                            </div>
                        </form>
                        <form id="schuong" name="schuong" action="process.php" method="POST">
                            <div class="form-group">
                                <label><h4>Loại Sản Phẩm:</h4></label>
                                <select style="width: 300px" class="form-control" name="truyen" id="truyen">
                            <?php 
                                $sl = "select idTruyen, TenTruyen from nncms_truyen where idCL = $idCL";
                                $kql = mysqli_query($con, $sl);
                                $idT = 0;
                                while($dl = mysqli_fetch_array($kql))
                                {
                                  if($idT == 0) $idT = $dl['idTruyen'];
                            ?> 
                                    <option <?php if(isset($_POST['truyen']) && $_POST['truyen'] == $dl['idTruyen']) {$idL = $_POST['truyen']; echo "selected='selected'";}?> value="<?php echo $dl['idTruyen'];?>"><?php echo $dl['TenTruyen'];?></option>
                            <?php } ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Chương Số</label>
                                <input class="form-control" type="number" name="txtchuongso" value="<?php echo $d['ChuongSo']; ?>" required />
                            </div>
                            <div class="form-group">
                                <label>Tên Chương</label>
                                <input class="form-control" type="text" name="txttenchuong" value="<?php echo $d['TenChuong']; ?>" required />
                            </div>
                            <div class="form-group">
                                <label>Nội Dung</label>
                                <textarea class="form-control ckeditor" name="txtnoidung" required>
                                    <?php echo $d['NoiDung']; ?>
                                </textarea>
                            </div>
                            <input type="hidden" name="idchuong" value="<?php echo $idchuong;?>">
                            <input type="submit" name="suachuong" value="Sửa Chương">
                            <input type="reset" name="huy" value="Reset"> 
                        <form>
                    </div>
                </div>
            <?php } ?>
                <!-- /.row -->