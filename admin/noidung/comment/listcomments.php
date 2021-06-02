<div>
    <h3>Danh Sách Bình Luận Chưa Được Duyệt</h3>
    <table class="table table-striped table-bordered table-hover">
        <thead>
        <tr align="center">
            <th>ID</th>
            <th>Tên Truyện</th>
            <th>User</th>
            <th>Nội Dung</th>
            <th>Ngày Comment</th>
            <th>Trạng Thái</th>
            <th>Xét Duyệt</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <?php
        $kqcl= mysqli_query($con, " select * from nncms_comments where TrangThai=1");
        while($dcl= mysqli_fetch_array($kqcl)) {

            ?>
            <tr class="odd gradeX" align="center">
                <td><a href="index.php?key=listCmtRep&idCmtRep=<?php echo $dcl['idCmt'];?>"><?php echo $dcl['idCmt']; ?></a></td>
                <td><?php
                    $getTenTruyen=mysqli_fetch_array(mysqli_query($con, "select idTruyen, TenTruyen from nncms_truyen where idTruyen = {$dcl['idTruyen']}"));
                    echo $getTenTruyen['TenTruyen']; ?> </td>
                <td><?php
                    $getTenUser=mysqli_fetch_array(mysqli_query($con, "select idNguoiDung, HoTen from nncms_nguoidung where idNguoiDung = {$dcl['idNguoiDung']}"));
                    echo $getTenUser['HoTen']; ?> </td>
                <td><?php echo $dcl['NoiDung']; ?></td>
                <td><?php echo $dcl['NgayDang']; ?></td>
                <td><?php if($dcl['TrangThai'] == 1) echo "Chưa Duyệt"; else echo "Đã Duyệt"; ?></td>
                <td class="center">
                    <?php if($dcl['TrangThai'] == 1){ ?>
                        <a href="process.php?duyetCmt=<?php echo $dcl['idCmt'];?>"><i class="fa fa-check fa-fw"></i> Duyệt</a>
                    <?php } else{ ?>

                    <?php } ?>
                </td>
                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a onclick="return confirm('Bạn có chắc muốn xóa Bình Luận này không ?');" href="process.php?xoaCmt=<?php echo $dcl['idCmt'];?>"> Delete</a></td>
            </tr>
        <?php } ?>
        </tbody>
    </table>
    <hr/>
    <h3>Danh Sách Các Bình Luận Chính</h3>
    <table class="table table-striped table-bordered table-hover" id="dataTables-example"> <!-- id để có dduocj thanh tìm kiếm và phân trang -->
        <thead>
            <tr align="center">
                <th>ID</th>
                <th>Tên Truyện</th>
                <th>User</th>
                <th>Nội Dung</th>
                <th>Ngày Comment</th>
                <th>Trạng Thái</th>
                <th>Xét Duyệt</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
        <?php
            $kqcl= mysqli_query($con, " select * from nncms_comments order by idCmt");
            while($dcl= mysqli_fetch_array($kqcl)) {

        ?>
            <tr class="odd gradeX" align="center">
                <td><a href="index.php?key=listCmtRep&idCmtRep=<?php echo $dcl['idCmt'];?>"><?php echo $dcl['idCmt']; ?></a></td>
                <td><?php
                    $getTenTruyen=mysqli_fetch_array(mysqli_query($con, "select idTruyen, TenTruyen from nncms_truyen where idTruyen = {$dcl['idTruyen']}"));
                    echo $getTenTruyen['TenTruyen']; ?> </td>
                <td><?php
                    $getTenUser=mysqli_fetch_array(mysqli_query($con, "select idNguoiDung, HoTen from nncms_nguoidung where idNguoiDung = {$dcl['idNguoiDung']}"));
                    echo $getTenUser['HoTen']; ?> </td>
                <td><?php echo $dcl['NoiDung']; ?></td>
                <td><?php echo $dcl['NgayDang']; ?></td>
                <td class="<?php if($dcl['TrangThai'] == 1) echo "warring-status"; ?>">
                    <?php if($dcl['TrangThai'] == 1) echo "Chưa Duyệt"; else echo "Đã Duyệt"; ?></td>
                <td class="center">
                    <?php if($dcl['TrangThai'] == 1){ ?>
                    <a href="process.php?duyetCmt=<?php echo $dcl['idCmt'];?>"><i class="fa fa-check fa-fw"></i> Duyệt</a>
                    <?php } else{ ?>

                    <?php } ?>
                </td>
                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a onclick="return confirm('Bạn có chắc muốn xóa Bình Luận này không ?');" href="process.php?xoaCmt=<?php echo $dcl['idCmt'];?>"> Delete</a></td>
            </tr>
        <?php } ?>
        </tbody>
    </table>
</div>