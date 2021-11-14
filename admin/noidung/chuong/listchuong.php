                <div class="row">
                    <div class="col-12">
                        <h1 class="page-header">Danh Sách Chương
                        </h1>
                    </div>
                <form name="form1" id="form1" action="" method="get">
                    <div class="col-lg-4 mb-5" style="margin-bottom: 48px">
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
                            <input type="hidden" name="key" value="dstruyen">
                        </div>
                    </div>

                    <div class="col-lg-4" style="margin-bottom: 48px">
                    <?php
                     if(isset($_GET['chungloai'])) $idCL=$_GET['chungloai'];
                       $kq2=mysqli_query($con, "select * from nncms_truyen where idCL=".$idCL);
                       $idTruyen=0;
                       $kt=0; // gán thêm biến
                     ?>
                        <div class="form-group">
                            <label><h4>Truyện:</h4></label>
                            <select class="form-control" style="width: 200px;" name="truyen" id="truyen" onchange="form1.submit()">
                        <?php
                            while($d2=mysqli_fetch_array($kq2)){
                                if($idTruyen==0) $idTruyen=$d2['idTruyen'];
                        ?>
                                <option value="<?php echo $d2['idTruyen'];?>" <?php if(isset($_GET['truyen'])&&$_GET['truyen']==$d2['idTruyen'])
      {echo 'selected="selected"'; $kt=1; } ?>> <?php echo $d2['TenTruyen'];?></option>
    <?php } ?>
                            </select>
                            <input type="hidden" name="key" value="dschuong">
                        </div>
                    </div>


                    <!-- /.col-lg-12 -->
                <?php
                  if($kt==1) $idTruyen=$_GET['truyen'];
                    $kq3=mysqli_query($con, "select * from nncms_chuong where idTruyen=".$idTruyen);
                ?>
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                
                            <tr align="center">
                                <th>ID</th>
                                <th>Chương Số</th>
                                <th>Tên Chuong</th>
                                <th>Noi Dung</th>
                                <th>So Lan Xem</th>
                                <th>Tùy Chọn</th>
                            </tr>
                        </thead>
                        <tbody>
                    <?php
                      while($d3=mysqli_fetch_array($kq3)){
                    ?>
                            <tr class="odd gradeX" align="center">
                                <td><?php echo $d3['idChuong'];?></td>
                                <td><?php echo $d3['ChuongSo'];?></td>
                                <td><?php echo $d3['TenChuong'];?></td>
                                <td>
                                    <div style="max-height: 300px; overflow-y: auto">
                                        <?php echo $d3['NoiDung'];?>
                                    </div>
                                </td>
                                <td><?php echo $d3['SoLanXem'];?></td>
                                <td class="center">
                                    <a href="process.php?chuongxoa=<?php echo $d3['idChuong'] ;?>"> <i class="fa fa-trash-o  fa-fw"></i> Delete</a>
                                    <hr/>
                                    <a href="index.php?key=suachuong&chuongsua=<?php echo $d3['idChuong'] ;?>"><i class="fa fa-pencil fa-fw"></i> Edit</a>
                                </td>
                            </tr>
                        <?php } ?>
                        </tbody>
                    </table>
                </form>
                </div>