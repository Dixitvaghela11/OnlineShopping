<?php
include('includes/config.php');
include('razor.php');
   unset($_SESSION['cart']);
use Razorpay\Api\Api;
$api = new Api('rzp_live_uA9PbX3NPFTjIA', 'GaCvGqI4gmUFgTGGVKEydeNu'); //enter your test key credentials here
$payment = $api->payment->fetch($_REQUEST['razorpay_payment_id']); //post variable in index.php checkout.js
$text =  json_encode($payment->toArray());
$contact_number =  $payment->contact;   unset($_SESSION['cart']);
$contact_email  = $payment->email;
$currency       = $payment->currency;
$totalAmount    = $_POST["totalAmount"];
$payment_method = $payment->method;
$razor_payment_id = $payment->id;
$created_date     = date('Y-m-d',$payment->created_at);

  $i=1;
  $id = $i;
  $user_id          = $_POST['id'];
  $product_id       = $_POST["product_id"];

  $insert_query     = "INSERT INTO payments(user_id,product_id,payment_id,amount,contact_number,contact_email,created_date) VALUES ('".$user_id."','".$product_id."','".$razor_payment_id."','".$totalAmount."','".$contact_number."','".$contact_email."','".$created_date."')";

  if (mysqli_query($connection, $insert_query)) {
    echo "New record created successfully";
    $i++;
  } else {
    echo "Error: " . $sql . "" . mysqli_error($connection);
 }

 /**create a database with table name payments which include the following columns

 1.user_id
 2.product_id
 3.payment_id
 4.amount
 5.contact_number
 6.contact_email
 7.created_date

 **/
?>