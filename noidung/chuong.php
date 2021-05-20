<?php
$idGetChuong = $_GET['idchuong'];
$kqchuong=mysqli_query($con, "select * from nncms_chuong where idChuong=$idGetChuong");
$dsc=mysqli_fetch_array($kqchuong);

$couterviewchuong = "UPDATE  nncms_chuong  SET SoLanXem = SoLanXem+1 WHERE idChuong = $idGetChuong";
$kqsqlchuong=mysqli_query($con, $couterviewchuong);

;?>


<div class="">

    <h4 class="title-loai">
        <?php
        $tenTL=mysqli_fetch_array(mysqli_query($con, "select idTruyen, TenTruyen from nncms_truyen where idTruyen={$dsc['idTruyen']}"));
        echo $tenTL['TenTruyen'];
        ?>
    </h4>

    <div class="row row-cols-1 row-cols-md-4 g-2">
        <?php
        if(isset($idGetChuong))

            $sodong=1; // 12 san pham ad
        $sonhom=3; // 5 trang ad
        $sl="select * from nncms_chuong where idTruyen={$dsc['idTruyen']}";
        $kqsp=mysqli_query($con, $sl);
        $tongsotrang=ceil(mysqli_num_rows($kqsp)/$sodong);
        if (!isset($_GET["p"])) //kiểm tra get so trang xuống nếu không có trang thì cho mặt định nó là
        {
            $p=1; //cho mặt định nó là một
        }
        else
        {
            $p=intval($_GET["p"]);
        }
        $x=($p-1)*$sodong; //lấy số trang hiện hành, để chia ra từng trang sản phẩn trong từng trang. đay là sản phẩm bắt đàu của mỗi trang

        $sl="select * from nncms_chuong where idTruyen={$dsc['idTruyen']} limit $x,$sodong";
        $kqsp=mysqli_query($con, $sl);
        while ($d=mysqli_fetch_array($kqsp)) {
            ?>

            <div class="col">
                    <div class="card card-list-truyen">

                        <div class="card-body">
                            <h6 class="card-title"><?php echo $d['TenChuong'];?></h6>
                        </div>
                    </div>
            </div>
        <?php } ?>

    </div>

    <div class="custom-pagination">
        <!-- Phần hiển thị số trang -->
        <p class="pagenavi" align="left" style="clear:both; font-weight: bold;">
            <?php
            $dau = $p-2;
            if($dau<1)
            {$dau=1;}
            $cuoi = $dau + $sonhom - 1;
            if($cuoi>$tongsotrang)
            {$cuoi=$tongsotrang;}
            ?>
            <!-- trang hien tai cua tổng số trang -->
            <span style="float: right;">Page <?php echo $p; ?> of <?php echo $tongsotrang;?></span>
            <!-- hien <trang đau> hiện về trang đàu tiên -->

            <!-- icon hiển thị các trang phía trước của trang hien tai -->
            <?php if ($p>1) {
                $p1=$p-1;
                ?>
                <a href="index.php?key=chuong&idchuong=<?php echo $idGetChuong;?>&p=<?php echo $p1; ?>"><i class="fas fa-chevron-left"></i></a>&nbsp;
            <?php } ?>
            <!-- liet ke thu tu cac trang trong nhom -->
            <?php
            for($i=$dau;$i<=$cuoi;$i++)
            {
                if ($i<=$tongsotrang)
                {
                    if ($i==$p)
                    {
                        echo $i."&nbsp;";
                    }
                    else
                    {
                        ?>
                        <a href="index.php?key=chuong&idchuong=<?php echo $idGetChuong;?>&p=<?php echo $i; ?>"><?php echo $i; ?></a>
                        <?php
                    }
                }
            }
            ?>
            <!-- hien trang sau -->
            <?php if ($p<$tongsotrang) {
                $p2=$p+1;
                ?>
                <a href="index.php?key=chuong&idchuong=<?php echo $idGetChuong;?>&p=<?php echo $p2; ?>"><i class="fas fa-chevron-right"></i></a>&nbsp;
            <?php } ?>

        </p>
    </div>
</div>