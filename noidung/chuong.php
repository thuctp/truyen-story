<?php
$idGetChuong = $_GET['idchuong'];
$kqchuong=mysqli_query($con, "select * from nncms_chuong where idChuong=$idGetChuong");
$dsc=mysqli_fetch_array($kqchuong);

$couterviewchuong = "UPDATE  nncms_chuong  SET SoLanXem = SoLanXem+1 WHERE idChuong = $idGetChuong";
$kqsqlchuong=mysqli_query($con, $couterviewchuong);


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

;?>


<div class="">

    <h4 class="title-loai">
        <?php
        $tenTL=mysqli_fetch_array(mysqli_query($con, "select idTruyen, TenTruyen from nncms_truyen where idTruyen={$dsc['idTruyen']}"));
        echo $tenTL['TenTruyen'];
        ?>
    </h4>


    <div class="row">
        <?php

        while ($d=mysqli_fetch_array($kqsp)) {
            ?>
            <div class="col-12">
                <h4 class="card-title text-primary text-center fw-600">
                    <?php echo $d['TenChuong'];?>
                </h4>
                <p class="text-center fs-14"><i class="fas fa-eye fa-sm"></i> <?php echo $d['SoLanXem'];?></p>
                <p class="text-center fs-14"><?php echo $d['NgayDang'];?></p>

                <!--pagination dropdow top-->
                <div class="text-center mb-5 mt-4">
                    <?php if($_GET["p"]>1){ ?>
                        <a class="btn btn-primary"
                           href="index.php?key=chuong&idchuong=<?php echo $idGetChuong;?>&p=<?php echo $_GET["p"]-1; ?>"><i class="fas fa-chevron-left"></i></a>
                    <?php } ?>
                    <div class="dropdown box-select-pagination-top">
                        <button class="btn btn-outline-primary dropdown-toggle custom-btn" id="listchuong" data-bs-toggle="dropdown" aria-expanded="false">
                            <span>Chương <?php echo $_GET["p"] ?></span>
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="listchuong">
                            <?php for($sochuong=1;$sochuong<=$tongsotrang;$sochuong++){ ?>
                                <li class="<?php if($sochuong == $_GET["p"]) echo "active-select";?>">
                                    <a href="index.php?key=chuong&idchuong=<?php echo $idGetChuong;?>&p=<?php echo $sochuong; ?>"
                                       class="dropdown-item">Chương: <?php echo $sochuong; ?></a>
                                </li>
                            <?php } ?>
                        </ul>
                    </div>
                    <?php if($_GET["p"]<$tongsotrang){ ?>
                        <a class="btn btn-primary" href="index.php?key=chuong&idchuong=<?php echo $idGetChuong;?>&p=<?php echo $_GET["p"]+1; ?>"><i class="fas fa-chevron-right"></i></a>
                    <?php } ?>
                </div>
                <!--end pagination dropdow top-->

                <div>
                    <?php echo $d['NoiDung'];?>
                </div>
            </div>
        <?php } ?>

    </div>

    <!--phan phan trang -->
    <?php if($tongsotrang>1){ ?>
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
                <span style="float: right;">Chương <?php echo $p; ?> / <?php echo $tongsotrang;?></span>
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
    <?php } ?>
    <!--ket thuc phan phan trang -->
</div>