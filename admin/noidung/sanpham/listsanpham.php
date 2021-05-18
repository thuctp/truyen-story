                <div class="row">
                    <div class="col-lg-4">
                        <h1 class="page-header">Sản Phẩm
                        </h1>
                    </div>
                <form name="form1" id="form1" action="" method="get"> 
                    <div class="col-lg-4">
                        <div class="form-group">
                            <label><h4>Chủng Loại:</h4></label>
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
                            <input type="hidden" name="key" value="dsloaisp">
                        </div>
                    </div>

                    <div class="col-lg-4">
                    <?php
                     if(isset($_GET['chungloai'])) $idCL=$_GET['chungloai'];
                       $kq2=mysqli_query($con, "select * from nncms_loaisp where idCL=".$idCL);
                       $idLoai=0;
                       $kt=0; // gán thêm biến
                     ?>
                        <div class="form-group">
                            <label><h4>Loại Sản Phẩm:</h4></label>
                            <select class="form-control" style="width: 200px;" name="loaisp" id="loaisp" onchange="form1.submit()">
                        <?php
                            while($d2=mysqli_fetch_array($kq2)){
                                if($idLoai==0) $idLoai=$d2['idLoai'];
                        ?>
                                <option value="<?php echo $d2['idLoai'];?>" <?php if(isset($_GET['loaisp'])&&$_GET['loaisp']==$d2['idLoai'])
      {echo 'selected="selected"'; $kt=1; } ?>> <?php echo $d2['TenLoai'];?></option>
    <?php } ?>
                            </select>
                            <input type="hidden" name="key" value="dssanpham">
                        </div>
                    </div>


                    <!-- /.col-lg-12 -->
                <?php
                  if($kt==1) $idLoai=$_GET['loaisp'];
                    $kq3=mysqli_query($con, "select * from nncms_sanpham where idLoai=".$idLoai);
                ?>
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                
                            <tr align="center">
                                <th>ID</th>
                                <th>Tên Sản Phẩm</th>
                                <th>Giá</th>
                                <th>Mô Tả</th>
                                <th>Hinh Ảnh</th>
                                <th>Tồn Kho</th>
                                <th>Số Lần Mua</th>
                                <th>Ẩn Hiện</th>
                                <th>Delete</th>
                                <th>Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                    <?php
                      while($d3=mysqli_fetch_array($kq3)){
                    ?>
                            <tr class="odd gradeX" align="center">
                                <td><?php echo $d3['idSP'];?></td>
                                <td><?php echo $d3['TenSP'];?></td>
                                <td><?php echo number_format($d3['Gia']);?></td>
                                <td><?php echo $d3['MoTa'];?></td>
                                <td><img src="../upload/sanpham/<?php echo $d3['UrlHinh'];?>"></td>
                                <td><?php echo $d3['TonKho'];?></td>
                                <td><?php echo $d3['SoLanMua'];?></td>
                                <td><?php if($d3['AnHien']) echo "Hien"; else echo "An";?></td>
                                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="process.php?sanphamxoa=<?php echo $d3['idSP'] ;?>"> Delete</a></td>
                                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="index.php?key=suasanpham&sanphamsua=<?php echo $d3['idSP'] ;?>">Edit</a></td>
                            </tr>
                        <?php } ?>
                        </tbody>
                    </table>
                </form>
                </div>