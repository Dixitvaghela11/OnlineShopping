<?php 
session_start();
error_reporting(0);
include('includes/config.php');
$oid=intval($_GET['oid']);
?>

<!DOCTYPE HTML>
<html>
<head>
<tr height="50">
		<center>
	<h1 style="background-color:#B30018;">Oder Recipt</h1>
</center>
</tr>

</head> 

<body>

		

	<div class="page-container">
		<!--/content-inner-->
		<div class="left-content">
			<div class="inner-content">
				<!-- header-starts -->
				<!-- //header-ends -->
				<!--outter-wp-->
				<div class="outter-wp">
					<!--sub-heard-part-->
					<!--//sub-heard-part-->
		<div class="graph-visual tables-main" id="exampl">
						
	<?php $query=mysqli_query($con,"select products.productImage1 as pimg1,products.productName as pname,products.id as proid,orders.productId as opid,orders.quantity as qty,products.productPrice as pprice,products.shippingCharge as shippingcharge,orders.productPrice as p,orders.paymentMethod as paym,orders.orderDate as odate,orders.id as orderid from orders join products on orders.productId=products.id where orders.userId='".$_SESSION['id']."' and orders.id=$oid");
$cnt=1;

?>
																		<table class="table table-bordered" align="center" width="50%" border="1"> 
<tr>
<th colspan="8"><?php $qry=mysqli_query($con,"select * from users where id='".$_SESSION['id']."'");
while ($rt=mysqli_fetch_array($qry)) {
	

						?></th>	
							 <tr> 
								<th>Customer Name</th> 
								<td><?php echo htmlentities($rt['name']);?></td>
								<th>Contact Name</th> 
								<td><?php echo $rt['contactno'];?></td> 
								<th>Email </th>
								<td><?php echo $rt['email'];?></td>
								
							</tr> 
							 <tr> 
								<th>Account ID</th> 
								<td><?php echo $rt['id'];?></td> 
								</td><?php } ?>

						

</table>
<table class="table table-bordered" align="center" width="50%" border="1"> 
<tr>
	
<th colspan="3">Services Details</th>	
</tr>
<tr>
<th>#</th>	
<th>Product</th>
<th>Order Date</th>
<th>Type Of Payment:</th>	
<th>quantity</th>
<th>Cost</th>
<th>shippcharge</th>
</tr>
<?php while($row=mysqli_fetch_array($query))
{
	?>
<tr>
<td class="cart-image">
						<a class="entry-thumbnail" href="detail.html">
						    <img src="admin/productimages/<?php echo $row['proid'];?>/<?php echo $row['pimg1'];?>" alt="" width="84" height="146">
						</a>
					</td>
<td><?php echo $row['pname'];?></td>
<td><?php echo $row['odate'];?></td>
<td class="cart-product-sub-total"><?php echo $row['paym']; ?>  </td>
<td><?php echo $qty=$row['qty']; ?></td>
<td><?php echo $row['pprice'];?></td>
<td><?php echo $shippcharge=$row['shippingcharge']; ?></td>
</tr>
<?php } ?>

<td colspan="2"><b>Total:</b></td>
					<td class="cart-product-grand-total"><?php echo $price=$row['p']; ?></td>
</table>
							</div>

						</div>
				
					</div>
					<!--//graph-visual-->
				</div>
				<!--//outer-wp-->
			</div>
		</div>
		<!--//content-inner-->
	
	</div><br><center>
	<button class="fa fa-print" onClick="window.print()">Print</button></center	>
	<!--js -->
	<script src="js1/jquery.nicescroll.js"></script>
	<script src="js1/scripts.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="js1/bootstrap.min.js"></script>
	<script>
function CallPrint(strid) {
var prtContent = document.getElementById("exampl");
var WinPrint = window.open('', '', 'left=0,top=0,width=800,height=900,toolbar=0,scrollbars=0,status=0');
WinPrint.document.write(prtContent.innerHTML);
WinPrint.document.close();
WinPrint.focus();
WinPrint.print();
WinPrint.close();
}
</script>
</body>
</html>
<?php  ?>
