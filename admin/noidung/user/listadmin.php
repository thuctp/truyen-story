                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">UESR ADMIN
                            <small>List</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr align="center">
                                <th>ID Người Dùng</th>
                                <th>Email</th>
                                <th>Họ Tên</th>
                                <th>id Nhóm</th>
                                <th>Delete</th>
                                <th>Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                            $s="select * from nncms_quantri";
                            $kq=mysqli_query($con, $s);
                            while ($d = mysqli_fetch_array($kq)) {
                        ?>
                            <tr class="odd gradeX" align="center">
                                <td><?php echo $d['idNguoiDung']; ?></td>
                                <td><?php echo $d['Email']; ?></td>
                                <td><?php echo $d['HoTen']; ?></td>
                                <td><?php echo $d['idNhom']; ?></td>
                                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="process.php?xoanguoidung=<?php echo $d['idNguoiDung'];?>"> Delete</a></td>
                                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="index.php?key=suauser&suanguoidung=<?php echo $d['idNguoiDung'];?>">Edit</a></td>
                            </tr>
                        <?php } ?>
                        </tbody>
                    </table>
                </div>