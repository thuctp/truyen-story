<!-- trang hiển thị giỏ hàng chi tiết của khách hàng -->
<div class="panel panel-default">
	<div class="panel-heading">
		<button  type="button" class="btn btn-md btn-block" data-toggle="modal" data-target="#giohang"><b>Giỏ Hàng (<?php echo count($_SESSION['giohang']) ;?>)</b></button>
		<div class="modal fade" id="giohang" role="dialog">
		    <div class="modal-dialog modal-lg">
		      	<div class="modal-content">
		        	<div class="modal-header">
		          	<button type="button" class="close" data-dismiss="modal">&times;</button>
		          	<h4 class="modal-title" style="text-align: center;color: blue;font-weight: bold;">GIỎ HÀNG CỦA BẠN</h4><p>Tổng số sản phẩm bạn đã chọn: <?php echo count($_SESSION['giohang']) ;?></p>
		        </div>
		        <div class="modal-body">
		          	<form method="get" action="process.php" id="formgiohang" name="formgiohang">
		              	<table class="table table-bordered" id="spmua" name="spmua" border="1">
		              		<tr>
		              			<th>Tên Sản phẩm</th>
		              			<th>Hinh Ảnh</th>
		              			<th>Số Lượng</th>
		              			<th>Giá</th>
		              			<th>Xóa</th>
		              		</tr>
		             <!-- hiển thị thông tin chi tiết ra giỏ hàng ủng giống như ở dưới nhưng ở đay thêm đày đủ thông tin hơn còn lại y chan -->
		            <?php
						$tongtiengiohang=0;
						for($i=0;$i< count($_SESSION['giohang']);$i++){
							$tongtiengiohang+=$_SESSION['giohang'][$i]['soluong']* $_SESSION['giohang'][$i]['gia']
					?>
		              		<tr>
		              			<td><?php echo $_SESSION['giohang'][$i]['ten']; ;?></td>
		              			<td><img src="upload/sanpham/<?php echo $_SESSION['giohang'][$i]['hinh'] ;?>"></td>
		              			<td><input required min="1" type="number" name="SL<?php echo $i ;?>" value="<?php echo $_SESSION['giohang'][$i]['soluong'] ;?>"></td>
		              			<td><?php echo number_format($_SESSION['giohang'][$i]['gia']) ;?>.VND</td>
		              			<td><a href="process.php?xoa=<?php echo $i ;?>">Xóa</a></td>
		              		</tr>
		            <?php } ?>
		            
		              	</table>
		              	<div class="text-center">
			              	<input class="btn btn-info" type="submit" name="capnhat" value="Cập Nhật">
			              	<input class="btn btn-info" style="margin: 0 20px 0 20px" type="submit" name="huytatca" value="Hủy Giỏ Hàng">
			              	<a href="index.php?key=dathang"><div class="btn btn-info" ">Đặt Hàng</div></a>
			            </div>
		            <div class="modal-footer">

		            	<h4 style="float: left;"><b>Tổng Số Tiền:</b> <?php echo number_format($tongtiengiohang) ;?>.VNĐ</h4>
		            	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		            </div>
		          	</form>
		        </div>
		    </div>
		</div>
	</div>
	<?php
 if(count($_SESSION['giohang'])){ //kiểm tra xem session giỏ hàng có san phẩm nào không có sản phẩm thì mới xuất hiện thong tin dưới còn khong thì ẩn nó đi
?>
	<div class="panel-body" style="padding: 0px">
	<?php
		$tongtien=0; //tạo biến tính tổng số tiền của các sản phẩm có trong giỏ hàng 
		for($i=0;$i< count($_SESSION['giohang']);$i++){ 
			$tongtien+=$_SESSION['giohang'][$i]['soluong']* $_SESSION['giohang'][$i]['gia'] //công thức tính tổng số tiền trong sản phẩm
	?>
		<!-- Xuất thông tin các sản phẩm của khách hàng đã chọn đưa vào giỏ hàng và xuất ra csacs thông tin cần xuất lấy các biến session ở bên trang process. các biến session tạo ở process -->
		<div style="font-weight: bold; color: blue; margin-top: 10px"><?php echo $_SESSION['giohang'][$i]['ten']; ?></div>
		<div><b><i>Số Lượng: </i></b><?php echo $_SESSION['giohang'][$i]['soluong']; ?></div>
		<div style="border-bottom:1px dotted black;"><b><i>Giá:</i></b> <?php echo number_format($_SESSION['giohang'][$i]['gia']); ?>.VND</div>
		<!-- kết thúc phàn xuất thông thi các sản phẩm -->
	<?php } ?>
	</div>
	<div class="panel-footer" style="padding: 0px">
		<b>Tổng Tiền: <?php echo number_format($tongtien) ;?> VND</b>
		<a href="index.php?key=dathang"><button class="btn btn-xs btn-info btn-block"><b>Thanh Toán</b></button></a>

	</div>
<?php } ?>
</div>

