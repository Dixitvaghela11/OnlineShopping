<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['login'])==0)
    {   
header('location:index.php');
}
else{
	if(isset($_POST['update']))
	{
		$name=$_POST['name'];
		$contactno=$_POST['contactno'];
		$query=mysqli_query($con,"update users set name='$name',contactno='$contactno' where id='".$_SESSION['id']."'");
		if($query)
		{
echo "<script>alert('Your info has been updated');</script>";
		}
	}


?>
<!DOCTYPE html>
<html>
	<head>
<tr height="50">
		<center>
	<h1 style="background-color:DodgerBlue;">Oder Recipt</h1>
</center>
</tr>
	          <span></span>
	        </a>
	     </h4>
    </div>
    <!-- panel-heading -->

	<div id="collapseOne" class="panel-collapse collapse in">

		<!-- panel-body  -->
	    <div class="panel-body">
			<div class="row">		
				<div class="col-md-12 col-sm-12 already-registered-login">

<?php
$query=mysqli_query($con,"select * from users where id='".$_SESSION['id']."'");
while($row=mysqli_fetch_array($query))
{
?>

					<form class="register-form" role="form" method="post">
<div class="form-group">
					    <label class="info-title" for="name">Customr Name:<span></span></label>
              <td class="cart-product-sub-total"><?php echo $row['name']; ?>  </td></tr>
					  </div>



						<div class="form-group">
					    <label class="info-title" for="exampleInputEmail1">Email Address :</label>
              <td class="cart-product-sub-total"><?php echo $row['email']; ?>  </td></tr>
					  </div>
					  <div class="form-group">
              <tr>
          <td colspan="2">Mobile Number:</td>
            <td class="cart-product-sub-total"><?php echo $row['contactno']; ?>  </td></tr>
		

            </form>

					<?php } ?>
				</div>	
				<!-- already-registered-login -->		

			</div>			
		</div>
		<!-- panel-body  -->

	</div><!-- row -->
</div>
<!-- checkout-step-01  -->
					    <!-- checkout-step-02  -->
					<CENTER>	<button onClick="window.print()">Print</button></CENTER>
<form> 
	<center>
<table width="50%" border="2 cellspacing="2" cellpadding="2">
<?php $query=mysqli_query($con,"select products.productImage1 as pimg1,products.productName as pname,products.id as proid,orders.productId as opid,orders.quantity as qty,products.productPrice as pprice,products.shippingCharge as shippingcharge,orders.paymentMethod as paym,orders.orderDate as odate,orders.id as orderid from orders join products on orders.productId=products.id where orders.userId='".$_SESSION['id']."' and orders.paymentMethod is not null");
$cnt=1;
while($row=mysqli_fetch_array($query))
{
?>

<tr>
<td colspan="2">Oder Date/Time:</td>
            <td class="cart-product-sub-total"><?php echo $row['odate']; ?>  </td></tr>
				</tr><br>
<tr>
   <td colspan="2">#</td>
   <td><?php echo $cnt;?></td>
				
        
   </tr>
<tr>       
   </tr>
   </tr>
				<tr>
        <td colspan="2">Product Name:</td>
					<td >
						<?php echo $row['pname'];?></a></h4>
</tr>		
					</td>
          <tr>
          <td colspan="2">Quantity:</td>
					<td class="cart-product-quantity">
					<?php echo $qty=$row['qty']; ?>   
		      </td>
</tr>
<tr>
          <td colspan="2">Type Of Payment:</td>
					<td class="cart-product-sub-total"><?php echo $row['paym']; ?>  </td>
					</tr>
<tr>	
<td colspan="2">Price:</td>
<td class="cart-product-sub-total"><?php echo $price=$row['pprice']; ?>  </td>
</tr>	
  <tr>
          <td colspan="2">Shipping Charge:</td>
					<td class="cart-product-quantity"><spam>+</spam><?php echo $shippcharge=$row['shippingcharge']; ?>  </td>
</tr>

          <td colspan="2"><b>Total:</b></td>
					<td class="cart-product-grand-total"><b><?php echo (($qty*$price)+$shippcharge);?></b><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr></td>
</tr>
</center>

</head>
</html>


        
<?php $cnt=$cnt+1;} ?>
<?php } ?>