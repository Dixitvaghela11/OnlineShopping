<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 3 | Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
          
<style>
	.nav-item {
  background-color: #800080; /* Green */
  color: #800080;
  text-decoration: none;
  display: inline-block;
  transition-duration: 0.4s;
  cursor: pointer;
}
.nav-item {
  background-color: white; 
  color: black; 
}
.nav-item:hover {
  background-color: #800080;
  color: white;
}

</style>

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4"style="background-color:white;">
    <!-- Brand Logo -->
    <a href='dashboard.php' class="brand-link" style="background-color:#800080 ;">
      <img src="data:image/png;base64,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" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Online Shopping</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
               <li class="nav-item" >
            <a href="dashboard.php" class="nav-link" style="color:#080808;">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p >
                Dashboard
              </p>
            </a>
          </li>
          <li>
								<a class="nav-link" style="color:#080808;" data-toggle="collapse" href="#togglePages">
									<i class="nav-icon fas icon-cog"></i>
									<i class="nav-item"></i>
									Order Management
								</a>
								<ul id="togglePages" class="collapse unstyled">
									<li>
                  <a href="todays-orders.php" class="nav-link" style="color:#080808;">
											<i class=" nav-icon fas icon-tasks"></i>
											Today's Orders
  <?php
  $f1="00:00:00";
$from=date('Y-m-d')." ".$f1;
$t1="23:59:59";
$to=date('Y-m-d')." ".$t1;
 $result = mysqli_query($con,"SELECT * FROM Orders where orderDate Between '$from' and '$to'");
$num_rows1 = mysqli_num_rows($result);
{
?>
											<b class="label orange pull-right" style="background-color:green;"><?php echo htmlentities($num_rows1); ?></b>
											<?php } ?>
										</a>
									</li>
									<li>
                  <a href="pending-orders.php" class="nav-link" style="color:#080808;">
											<i class="nav-icon fas icon-tasks"></i>
											Pending Orders
										<?php	
	$status='Delivered';									 
$ret = mysqli_query($con,"SELECT * FROM Orders where orderStatus!='$status' || orderStatus is null ");
$num = mysqli_num_rows($ret);
{?><b class="label orange pull-right" style="background-color:red;"><?php echo htmlentities($num); ?></b>
<?php } ?>
										</a>
									</li>
									<li>
                  <a href="delivered-orders.php" class="nav-link" style="color:#080808;">
											<i class="nav-icon fas icon-inbox"></i>
											Delivered Orders
								<?php	
	$status='Delivered';									 
$rt = mysqli_query($con,"SELECT * FROM Orders where orderStatus='$status'");
$num1 = mysqli_num_rows($rt);
{?><b class="label green pull-right" style="background-color:blue;"><?php echo htmlentities($num1); ?></b>
<?php } ?>

										</a>
									</li>
								</ul>
							</li>
							 <li class="nav-item" >
            <a href="allorders.php" style="color:#080808;" class="nav-link">
              <i class="nav-icon fas fa fa-asterisk"></i>
              <p>
                All Orders Detail
             
              </p>
            </a>
          </li>
            <li class="nav-item">
            <a href="cancel.php"style="color:#080808;" class="nav-link">
              <i class="nav-icon fas fa fa-ban"></i>
              <p>
          Cancel Order
             
              </p>
            </a>
          </li>
            <li class="nav-item">
            <a href="category.php"style="color:#080808;" class="nav-link">
              <i class="nav-icon fas fa-chart-pie"></i>
              <p>
                Category
              </p>
            </a>
          </li>
          <li class="nav-item" >
            <a href="subcategory.php"style="color:#080808;" class="nav-link">
              <i class="nav-icon fas fa-tree"></i>
              <p>
                Sub Category
              </p>
            </a>
          </li>
            <ul class="nav nav-treeview">
            </ul>
          </li>
            <li class="nav-item">
            <a href="insert-product.php"style="color:#080808;" class="nav-link">
              <i class="nav-icon fas fa-folder"></i>
              <p>
                Insert Products
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="manage-products.php" style="color:#080808;"class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                Manage Products
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="productreview.php" style="color:#080808;"class="nav-link">
              <i class="nav-icon fas fa fa-star"></i>
              <p>
                Product Reviews
              </p>
            </a>
          </li>
        <li class="nav-item">
            <a href="manage-users.php"style="color:#080808;" class="nav-link">
              <i class="nav-icon fas fa-user-edit"></i>
              <p>
                Manage users
              </p>
            </a>
          </li>
          <li class="nav-item has-treeview">
            <a href="user-logs.php"style="color:#080808;"class="nav-link">
              <i class="nav-icon fas fa-user-cog"></i>
              <p>
                
               User Login Details
              </p>
            </a>
            </li>
            <li class="nav-item" style="color:red;">
            <a href="logout.php"style="color:red;" class="nav-link">
              <i class="nav-icon fa fa-sign-out"></i>
              <p>
             Logout
              </p>
            </a>
          </li>

        </ul>
      </nav>
      <!-- /.sidebar-menu -->

    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">

    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
  
</div>
<!-- ./wrapper -->


<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="plugins/moment/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
</body>
</html>
