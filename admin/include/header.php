<?php
error_reporting(0);
include("include/config.php");

$ret=mysqli_query($con,"SELECT * FROM admin ");
$row=mysqli_fetch_array($ret);

?>


<!DOCTYPE html>
<html>

         <!-- Content Wrapper -->
   <body>
  <!-- Navbar -->
  <div class="content-wrapper">

      <div class="container-fluid">
 <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
         <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
  <div class="login-logo">
      </li>
    <h4> <img src="data:image/png;base64,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" height="25" alt="" width="51">Admin Panel</h4>
    </ul>

    <!-- SEARCH FORM -->
    <form class="form-inline ml-3">
      
    </form>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <h4>  <img src="dist/img/user2-160x160.png" class="img-circle elevation-2" alt="User Image" width="30">
       <?php if(strlen($_SESSION['alogin']))
    {  
     echo htmlentities($_SESSION['username']);
               } ?></h4>
                
           
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <div class="dropdown-divider"></div>
          <a href="pro.php" class="dropdown-item">
            <i class="fas fa-users mr-2"></i>Profile
            <span class="float-right text-muted text-sm"></span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="change-password.php" class="dropdown-item">
            <i class="fas fa-cog"></i>Forget Password
            <span class="float-right text-muted text-sm"></span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="logout.php" class="dropdown-item">
            <i class="fas fa-file mr-2"></i>Logout
            <span class="float-right text-muted text-sm"></span>
          </a>
      </li>
     
    </ul>
  <!-- /.navbar -->

</body>
</nav>
</div>