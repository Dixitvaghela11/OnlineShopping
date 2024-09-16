<?php 
//session_start();

?>

<div class="top-bar animate-dropdown" >
	<div class="container" >
		<div class="header-top-inner" >
			<div class="cnt-account" >
				<ul class="list-unstyled">

<?php if(strlen($_SESSION['login']))
    {   ?>
				<li><a href="#"><i class="icon fa fa-user"></i>Welcome -<?php echo htmlentities($_SESSION['username']);?></a></li>
				<?php } ?>

					<li><a href="my-account.php"><i class="icon fa fa-user"></i>My Account</a></li>
					<li><a href='admin/index.php'><i class="icon fa fa-sign-in"></i>Admin</a></li>
					<?php if(strlen($_SESSION['login'])==0)
    {   ?>
<?php }
else{ ?>
	
				<li><a href="logout.php"><i class="icon fa fa-sign-out"></i>Logout</a></li>
				<?php } ?>	
				</ul>
			</div><!-- /.cnt-account -->

<div class="cnt-block">
				<ul class="list-unstyled list-inline">
					<li class="dropdown dropdown-small">
						<a href="track-orders.php" class="dropdown-toggle" style="background-color:#B30018;" ><span class="key" style="color:white;">Track Order</b></a>
					</li>
					<a href="login.php" class="forgot-password pull-right" style="font-size:20px" style="color:#B30018;">Login</a>
			<a href="register.php" class="forgot-password pull-right" style="font-size:20px" style="color:#B30018;">Register/</a>

				</div>

			
			<div class="clearfix"></div>
		</div><!-- /.header-top-inner -->
	</div><!-- /.container -->
</div><!-- /.header-top -->