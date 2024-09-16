<form action="<?php echo $paypalUrl; ?>" method="post" name="frmPayPal1">

					<div class="panel price panel-red">

						    <input type="hidden" name="business" value="<?php echo $paypalId; ?>">

						    <input type="hidden" name="cmd" value="_xclick">

						    <input type="hidden" name="item_name" value="<?php echo $row['pname'];?>">

						    <input type="hidden" name="item_number" value="2">

						    <input type="hidden" name="amount" value="<?php echo $total?>">

						    <input type="hidden" name="no_shipping" value="1">

						    <input type="hidden" name="currency_code" value="INR">

						    <input type="hidden" name="cancel_return" value="cancel.php">

						    <input type="hidden" name="return" value="success.php">  

						<div class="panel-footer">

							<button class="btn btn-block  btn-danger" href="#">BUY NOW!</button>

						</div>

					</div>

    			</form>

<?php

	$paypalUrl='https://www.sandbox.paypal.com/cgi-bin/webscr';

	$paypalId='niteshjagani2118@gmail.com';

?>

<?php echo $_SESSION['cart'][$row['id']]['quantity']; ?>