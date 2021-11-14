<h3>Danh Sách Bình Luận Replay</h3>

<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
    <?php
    $kqcl= mysqli_query($con, " select * from nncms_comments order by idCmt desc");
    while($dcl= mysqli_fetch_array($kqcl)) { ?>

    <?php $sttDuyet= mysqli_query($con, " select * from nncms_comments_rep where idCmt={$dcl['idCmt']} and TrangThai=1 ");
        $checkDATA=mysqli_num_rows($sttDuyet);
    ?>

    <div class="panel panel-default <?php if($checkDATA > 0) echo 'sub-warring' ;?>">
        <div class="panel-heading" role="tab" id="heading-<?php echo $dcl['idCmt'];?>">
            <div class="panel-title c-panel-title">
                <div class="box-flex-table header">
                    <div class="stt-0 stt-1">Tên Truyện</div>
                    <div class="stt-0 stt-2">User</div>
                    <div class="stt-0 stt-3">Nội Dung</div>
                    <div class="stt-0 stt-4">Ngày Comment</div>
                    <div class="stt-0 stt-5">Trạng Thái</div>
                    <div class="stt-0 stt-6">Xét Duyệt</div>
                    <div class="stt-0 stt-7">Delete</div>
                </div>
                <div class="box-flex-table">
                    <div class="stt-0 stt-1">
                        <?php
                        $getTenTruyen=mysqli_fetch_array(mysqli_query($con, "select idTruyen, TenTruyen from nncms_truyen where idTruyen = {$dcl['idTruyen']}"));
                        echo $getTenTruyen['TenTruyen']; ?>
                    </div>
                    <div class="stt-0 stt-2">
                        <?php
                        $getTenUser=mysqli_fetch_array(mysqli_query($con, "select idNguoiDung, HoTen from nncms_nguoidung where idNguoiDung = {$dcl['idNguoiDung']}"));
                        echo $getTenUser['HoTen']; ?>
                    </div>
                    <div class="stt-0 stt-3"><?php echo $dcl['NoiDung']; ?></div>
                    <div class="stt-0 stt-4"><?php echo $dcl['NgayDang']; ?></div>
                    <div class="stt-0 stt-5 <?php if($dcl['TrangThai'] == 1) echo "warring-status"; ?>">
                        <?php if($dcl['TrangThai'] == 1) echo "Chưa Duyệt"; else echo "Đã Duyệt"; ?>
                    </div>
                    <div class="stt-0 stt-6">
                        <?php if($dcl['TrangThai'] == 1){ ?>
                            <a href="process.php?duyetTongCmt=<?php echo $dcl['idCmt'];?>"><i class="fa fa-check fa-fw"></i> Duyệt</a>
                        <?php } else{ ?>

                        <?php } ?>
                    </div>
                    <div class="stt-0 stt-7">
                        <a onclick="return confirm('Bạn có chắc muốn xóa Bình Luận này không ?');" href="process.php?xoaCmt=<?php echo $dcl['idCmt'];?>"><i class="fa fa-trash-o fa-fw"></i> Delete</a>
                    </div>
                </div>
                <a class="icon-dropdown-table collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-<?php echo $dcl['idCmt'];?>" aria-expanded="true" aria-controls="collapse-<?php echo $dcl['idCmt'];?>"><span class="icon-toggle-plus"></span></a>
            </div>
        </div>
        <div id="collapse-<?php echo $dcl['idCmt'];?>" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading-<?php echo $dcl['idCmt'];?>">
            <div class="panel-body">
                <h4>Các Phản Hồi Của Bình Luận Này:</h4>
                <div class="box-flex-table-replay header">
                    <div class="sttrep-0 sttrep-1">User</div>
                    <div class="sttrep-0 sttrep-2">Nội Dung</div>
                    <div class="sttrep-0 sttrep-3">Ngày Comment</div>
                    <div class="sttrep-0 sttrep-4">Trạng Thái</div>
                    <div class="sttrep-0 sttrep-5">Xét Duyệt</div>
                    <div class="sttrep-0 sttrep-6">Delete</div>
                </div>
                <?php
                $kqrep= mysqli_query($con, " select * from nncms_comments_rep where idCmt={$dcl['idCmt']}");
                while($listrep= mysqli_fetch_array($kqrep)) { ?>
                    <div class="box-flex-table-replay">
                        <div class="sttrep-0 sttrep-1">
                            <?php
                            $getTenUserrep=mysqli_fetch_array(mysqli_query($con, "select idNguoiDung, HoTen from nncms_nguoidung where idNguoiDung = {$listrep['idNguoiDung']}"));
                            echo $getTenUserrep['HoTen']; ?>
                        </div>
                        <div class="sttrep-0 sttrep-2"><?php echo $listrep['NoiDung']; ?></div>
                        <div class="sttrep-0 sttrep-3"><?php echo $listrep['NgayDang']; ?></div>
                        <div class="sttrep-0 sttrep-4 <?php if($listrep['TrangThai'] == 1) echo "warring-status"; ?>">
                            <?php if($listrep['TrangThai'] == 1) echo "Chưa Duyệt"; else echo "Đã Duyệt"; ?>
                        </div>
                        <div class="sttrep-0 sttrep-5">
                            <?php if($listrep['TrangThai'] == 1){ ?>
                                <a href="process.php?duyetCmtRepTongQuat=<?php echo $listrep['idCmtRep'];?>"><i class="fa fa-check fa-fw"></i> Duyệt</a>
                            <?php } else{ ?>

                            <?php } ?>
                        </div>
                        <div class="sttrep-0 sttrep-6">
                            <a onclick="return confirm('Bạn có chắc muốn xóa Bình Luận này không ?');" href="process.php?xoaCmtRep=<?php echo $listrep['idCmt'];?>"><i class="fa fa-trash-o fa-fw"></i> Delete</a>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>
    <?php } ?>

</div>