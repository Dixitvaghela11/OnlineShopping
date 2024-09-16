<?php
session_start();
include_once 'includes/config.php';
$oid=intval($_GET['oid']);

$sql=mysqli_query($con,"INSERT INTO `ordercancel`(`oid`,`userId`, `productId`, `quantity`, `productPrice`, `size`, `orderDate`, `paymentMethod`, `orderStatus`) SELECT `id`,`userId`, `productId`, `quantity`, `productPrice`, `size`, `orderDate`, `paymentMethod`, `orderStatus` FROM orders WHERE id = '$oid'");
	$ost='cancel';
	$ca=mysqli_query($con,"UPDATE `ordercancel` SET `orderStatus`='$ost' WHERE oid='$oid'"); 
	if ($ca) {
		mysqli_query($con,"UPDATE `orders` SET `orderStatus`='$ost' where id='$oid'"); 
		
	}
	echo "<script>alert('Order Cancel sucessfully...');</script>";
 echo "<script>window.close();</script>";

 ?>
