 <?php
include('includes/config.php');
session_start();
$coupon_code=$_POST['coupon_code'];
$total_price=$_POST['total_price'];

$query=mysqli_query($con,"select * from coupan where code='$coupon_code' and status=1");
$row=mysqli_fetch_array($query);
if (mysqli_num_rows($query)>0){

	$after_apply=$total_price - $row['value'];
	$_SESSION['now_total']=$after_apply;
	echo json_encode(array(
				"statusCode"=>200,
				"value"=>$after_apply,
			));
}
else{
	echo json_encode(array("statusCode"=>201));

}
?>