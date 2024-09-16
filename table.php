<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Razorpay Integartion</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> 
        <style>
            .razorpay-payment-button{
                 background:#6c5ce7;
                 color:whitesmoke;
                 font-size:0.8rem;
                 text-transform:uppercase;
                 letter-spacing:1;
                 display:block;
                 width:15vw;
                 height:8vh;
                 border:none;
                 padding:0.3rem 0.3rem;
            }
            .img_size{
                 margin:0 auto;
                 width:180px;
                 height:180px;
            }
            figcaption{
                 text-align:center;
                 letter-spacing:1;
            }
            .card-body{
                 font-size:0.8rem;
                 font-weight:bold;
            }
        </style>
    </head>
    <body>
<div class="container">
<?php
require('database.php');

$select_query = "select * from payments";

$result     = mysqli_query($connection,$select_query);

if(mysqli_num_rows($result) > 0){?>
    <table class="table table-bordered" style="margin:0.5rem 0;font-size:0.9rem;">
    <thead>
        <tr><td colspan="12" style="background-color:#5f27cd;color:white;">Payment Details</td></tr>
        <tr>
            <th>Pay id</th>
            <th>User id</th>
            <th>Product id</th>
            <th>Payment id</th>
            <th>Amount</th>
            <th>contact Number</th>
            <th>contact email</th>
            <th>date</th>

        </tr>
    </thead>
    <tbody>
   
   <?php  while($rows = mysqli_fetch_assoc($result)){?>
        <tr>
         <td><?php  echo $rows['pay_id'];?></td>   
         <td><?php  echo $rows['user_id'];?></td>   
         <td><?php  echo $rows['product_id'];?></td>   
         <td><?php  echo $rows['payment_id'];?></td>   
         <td><?php  echo $rows['amount'];?></td>   
         <td><?php  echo $rows['contact_number'];?></td>   
         <td><?php  echo $rows['contact_email'];?></td>   
         <td><?php  echo $rows['created_date'];?></td> 
         </tr>
    <?php } ?>
    
    </tbody>
    

    </table>
   
<?php }

?>
</div>
</body>

</html>