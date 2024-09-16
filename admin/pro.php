
<?php
session_start();
include('include/config.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin| Insert Product</title>
  <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
   <link type="text/css" href="bootstrap/css/cs.css" rel="stylesheet">
  <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
  <link type="text/css" href="css/theme.css" rel="stylesheet">
  <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
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
  <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
<script src="http://js.nicedit.com/nicEdit-latest.js" type="text/javascript"></script>
<script type="text/javascript">bkLib.onDomLoaded(nicEditors.allTextAreas);</script>
</head>

<?php include('include/nn.php');?>
<?php include('include/header.php');?>

<body>  
    <br>
    <br>
          <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="span9">
          <div class="col-md-20">

            <!-- About Me Box -->
            <div class="card card-primary">
              <div class="card-header" style="background-color:#800080;" class="btn btn-primary">
                <h3 class="card-title">About Me</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                   <strong><i class="fas fa-book mr-1"></i>E-Mail</strong>

                <p class="text-muted">
                  <?php if(strlen($_SESSION['email']))
                {
    echo htmlentities($_SESSION['email']);
     } ?>
                </p>
                    <hr>
                <strong><i class="fas fa-book mr-1"></i> Education</strong>

                <p class="text-muted">
                  BCA
                </p>

              
             <hr>
                <strong><i class="fas fa-map-marker-alt mr-1"></i> Location</strong>

                <p class="text-muted">India</p>

                <hr>

                <strong><i class="fas fa-pencil-alt mr-1"></i> Skills</strong>

                <p class="text-muted">
                  <span class="tag tag-danger">PHP,</span>
                  <span class="tag tag-success">Coding,</span>
                  <span class="tag tag-info">CSS/HTML,</span>
                  <span class="tag tag-warning">PHP,</span>
                  <span class="tag tag-primary">Node.js</span>
                </p>

                <hr>

                <strong><i class="far fa-file-alt mr-1"></i> Contact No.</strong>

                <p class="text-muted"> <?php if(strlen($_SESSION['alogin']))
                {
    echo htmlentities($_SESSION['mobileno']);
     } ?></p>
       <hr>

                <strong><i class="far fa-file-alt mr-1"></i> Password</strong>

                <p class="text-muted"> <a href="change-password.php">******</a></p>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

        </div>
    </body>