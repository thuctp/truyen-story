                <div class="row">
                    <div class="col-lg-4">
                        <h1 class="page-header">Truyen
                        </h1>
                    </div>
                    <div class="col-lg-8">
                        <form name="form1" id="form1" action="" method="get">
                            <div class="form-group">
                                <label><h4>Chủng Loại</h4></label>
                                <select class="form-control" style="width: 200px;" name="chungloai" id="chungloai" onchange="form1.submit()">
                                <?php
                                    $kq=mysqli_query($con, "select * from nncms_chungloai");
                                      $idCL=0;
                                      while($d=mysqli_fetch_array($kq)){
                                        if($idCL==0) $idCL=$d['idCL'];
                                      ?>
                                    <option value="<?php echo $d['idCL'];?>" <?php if(isset($_GET['chungloai'])&&$_GET['chungloai']==$d['idCL']) echo 'selected="selected"';?>><?php echo $d['TenCL'];?></option>
                                <?php } ?>
                                </select>
                                <input type="hidden" name="key" value="dstruyen">
                            </div>
                        </form>
                    </div>
                    <!-- /.col-lg-12 -->
                    <?php
                        if(isset($_GET['chungloai'])) $idCL=$_GET['chungloai'];
                        $kq2=mysqli_query($con, "select * from nncms_truyen where idCL=".$idCL);
                        $idTruyen=0;
                        $kt=0; // gán thêm biến
                    ?>
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                
                            <tr align="center">
                                <th>ID</th>
                                <th>Tên Truyen</th>
                                <th>Mo ta</th>

                                <th>Anh Bia</th>
                                <th>Ngay Dang</th>
                                <th>So Luot Xem</th>
                                <th>Trang Thai</th>

                                <th>An Hien</th>
                                <th>Delete</th>
                                <th>Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                    <?php
                      while($d2=mysqli_fetch_array($kq2)){
                            if($idTruyen==0) $idTruyen=$d2['idTruyen'];
                      ?>
                            <tr class="odd gradeX" align="center">
                                <td><?php echo $d2['idTruyen'];?></td>
                                <td><?php echo $d2['TenTruyen'];?></td>
                                <td><?php echo $d2['MoTa'];?></td>
                                <td><img style="max-width: 150px" src="../upload/sanpham/<?php echo $d2['UrlHinh'];?>"></td>
                                <td><?php echo $d2['NgayDang'];?></td>
                                <td><?php echo $d2['SoLanXem'];?></td>
                                <td><?php if($d2['TrangThai'] == 1) echo "Hoan Thanh"; else echo "Hot";?></td>
                                <td><?php if($d2['AnHien'] == 1) echo "Hien"; else echo "An";?></td>
                                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a onclick="return confirm('Bạn có chắc muốn xóa loai san pham <?php echo $d2['TenTruyen'];?> này không ?');" href="process.php?truyenxoa=<?php echo $d2['idTruyen'];?>"> Delete</a></td>
                                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="index.php?key=suatruyen&truyensua=<?php echo $d2['idTruyen'];?>">Edit</a></td>
                            </tr>
                        <?php } ?>
                        </tbody>
                    </table>
                </div>