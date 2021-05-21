                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Danh Sách Thể Loại Truyện</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example"> <!-- id để có dduocj thanh tìm kiếm và phân trang -->
                        <thead>
                            <tr align="center">
                                <th>ID</th>
                                <th>Tên Chủng Loại</th>
                                <th>Thư Tự</th>
                                <th>Ẩn Hiện</th>
                                <th>Delete</th>
                                <th>Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                            $kqcl= mysqli_query($con, " select * from nncms_chungloai order by idCL");
                            while($dcl= mysqli_fetch_array($kqcl)) {

                        ?>
                            <tr class="odd gradeX" align="center">
                                <td><?php echo $dcl['idCL']; ?></td>
                                <td><?php echo $dcl['TenCL']; ?></td>
                                <td><?php echo $dcl['ThuTu']; ?></td>
                                <td><?php if($dcl['AnHien'] == 1) echo "Hiện"; else echo "Ẩn"; ?></td>
                                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a onclick="return confirm('Bạn có chắc muốn xóa chủng Loại <?php echo $dcl['TenCL']; ?> này không ?');" href="process.php?idCL=<?php echo $dcl['idCL'];?>"> Delete</a></td>
                                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="index.php?key=suachungloai&idCL=<?php echo $dcl['idCL'];?>">Edit</a></td>
                            </tr>
                        <?php } ?>
                        </tbody>
                    </table>
                </div>