<?php
if(isset($_GET['idCmtRep']))
{
    $kq=mysqli_query($con, "select * from nncms_comments_rep where idCmtRep={$_GET['idCmtRep']} ");
    $d=mysqli_fetch_array($kq);
?>
    <div>
        <div></div>
    </div>

    <h3>Danh Sách Trả Lời Bình Luận</h3>
    <table class="table table-striped table-bordered table-hover" > <!-- id để có dduocj thanh tìm kiếm và phân trang -->
        <thead>
        <tr align="center">
            <th>ID</th>
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
        $kqcl= mysqli_query($con, " select * from nncms_comments_rep where idCmt={$_GET['idCmtRep']}");
        while($dcl= mysqli_fetch_array($kqcl)) {

            ?>
            <tr class="odd gradeX" align="center">
                <td><?php echo $dcl['idCmtRep']; ?></td>
                <td><?php
                    $getTenUser=mysqli_fetch_array(mysqli_query($con, "select idNguoiDung, HoTen from nncms_nguoidung where idNguoiDung = {$dcl['idNguoiDung']}"));
                    echo $getTenUser['HoTen']; ?> </td>
                <td><?php echo $dcl['NoiDung']; ?></td>
                <td><?php echo $dcl['NgayDang']; ?></td>
                <td class="<?php if($dcl['TrangThai'] == 1) echo "warring-status"; ?>">
                    <?php if($dcl['TrangThai'] == 1) echo "Chưa Duyệt"; else echo "Đã Duyệt"; ?>
                </td>
                <td class="center">
                    <?php if($dcl['TrangThai'] == 1){ ?>
                    <a href="process.php?duyetCmtRep=<?php echo $dcl['idCmtRep'];?>&setidCmt=<?php echo $dcl['idCmt'];?>"><i class="fa fa-check fa-fw"></i> Duyệt</a>
                <?php } else{ ?>

                <?php } ?>
                </td>
                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a onclick="return confirm('Bạn có chắc muốn xóa Bình Luận này không ?');" href="process.php?xoaCmtRep=<?php echo $dcl['idCmtRep'];?>"> Delete</a></td>
            </tr>
        <?php } ?>
        </tbody>
    </table>
<?php } ?>

<hr/>
<h3>Danh Sách Tất Cả Bình Luận Replay</h3>
<table class="table table-striped table-bordered table-hover" id="dataTables-example"> <!-- id để có dduocj thanh tìm kiếm và phân trang -->
    <thead>
    <tr align="center">
        <th>ID</th>
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
    $kqclRep= mysqli_query($con, " select * from nncms_comments_rep order by idCmtRep");
    while($dclRep= mysqli_fetch_array($kqclRep)) {

        ?>
        <tr class="odd gradeX" align="center">
            <td><?php echo $dclRep['idCmtRep']; ?></td>
            <td><?php
                $getTenUser=mysqli_fetch_array(mysqli_query($con, "select idNguoiDung, HoTen from nncms_nguoidung where idNguoiDung = {$dclRep['idNguoiDung']}"));
                echo $getTenUser['HoTen']; ?> </td>
            <td><?php echo $dclRep['NoiDung']; ?></td>
            <td><?php echo $dclRep['NgayDang']; ?></td>
            <td class="<?php if($dclRep['TrangThai'] == 1) echo "warring-status"; ?>">
                <?php if($dclRep['TrangThai'] == 1) echo "Chưa Duyệt"; else echo "Đã Duyệt"; ?>
            </td>
            <td class="center">
                <?php if($dclRep['TrangThai'] == 1){ ?>
                    <a href="process.php?duyetCmtRep=<?php echo $dclRep['idCmtRep'];?>&setidCmt=<?php echo $dclRep['idCmt'];?>"><i class="fa fa-check fa-fw"></i> Duyệt</a>
                <?php } else{ ?>

                <?php } ?>
            </td>
            <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a onclick="return confirm('Bạn có chắc muốn xóa Bình Luận này không ?');" href="process.php?xoaCmtRep=<?php echo $dclRep['idCmtRep'];?>"> Delete</a></td>
        </tr>
    <?php } ?>
    </tbody>
</table>
