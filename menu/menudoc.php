<script type="text/javascript" src="menu/jquery-3.2.1.min.js">
</script>
<script type="text/javascript">
  $(document).ready(function(e) {
        $(".loaitin").css({"color":"blue","font-style":"italic","font-size":"100%"});
    //$(".loaitin").css("font-size", "100%");
    $(".loaitin").hide();
    $(".loaitin:first").show();
    $(".theloai").click(function(){
      $(".loaitin").hide(1000);
      $(this).next().show(1000);
    });
    });
</script>

<div class="panel panel-primary ">
    <div class="panel-heading">
        <b><i>Danh Mục</i></b>
    </div>
    <div class="panel-body" style="padding: 0">
			<div id="menu">
          <div>
        			<?php
        			$s1 = "select idCL, TenCL, ThuTu, AnHien from nncms_chungloai where AnHien=1 order by ThuTu";
                  $kq1 = mysqli_query($con, $s1);
                  while($row1 = mysqli_fetch_array($kq1))
                  {
                ?>
		          <div class="theloai"><?php echo $row1['TenCL'];?></div>
              <div class="loaitin">
        		      <?php
                        //xuat loai tin
                        $s2 = "Select idLoai, TenLoai from nncms_loaisp where AnHien = 1 and idCL = {$row1['idCL']} order by ThuTu";
                        $kq2 = mysqli_query($con, $s2);
                        $i = 0;
                        while($row2 = mysqli_fetch_array($kq2))
                        {
                      ?>
                     
		                  <a href="index.php?key=sploai&idLoai=<?php echo $row2['idLoai'] ;?>"><?php echo $row2['TenLoai'];?></a>
                    <?php } ?>
              </div>
		          <?php } ;?>     
		      </div>   
      </div>
    </div>
</div>
