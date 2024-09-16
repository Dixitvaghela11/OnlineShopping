<?php
session_start();
error_reporting(0);
include('include/config.php');
// Code user Registration
if(isset($_POST['submit']))
{
$name=$_POST['username'];
$email=$_POST['emailid'];
$contactno=$_POST['mobileno'];
$password=md5($_POST['password']);
$query=mysqli_query($con,"insert into admin(username,email,mobileno,password) values('$name','$email','$contactno','$password')");
if($query)
{
  echo "<script>alert('You are successfully register');</script>";
}
else{
echo "<script>alert('Not register something went worng');</script>";
}
}

?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>FOURSHOP | Registration Page</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head><body class="hold-transition login-page" style="background-color:black;">
<div class="login-box">
  <div class="login-logo"><img src="data:image/png;base64,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" height="90" alt="" width="91">
    <a href='index.php'><b>Admin</b>Register</a>
  </div>
<script type="text/javascript">
function valid()
{
 if(document.register.password.value!= document.register.confirmpassword.value)
{
alert("Password and Confirm Password Field do not match  !!");
document.register.confirmpassword.focus();
return false;
}
return true;
}
</script>
      <script>
function userAvailability() {
$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'email='+$("#email").val(),
type: "POST",
success:function(data){
$("#user-availability-status1").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}

</script>

 <script>
function userAvailability1() {
$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'username='+$("#username").val(),
type: "POST",
success:function(data){
$("#user-availability-status2").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}

</script>
 <script>
function userAvailability2() {
$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'mobileno='+$("#mobileno").val(),
type: "POST",
success:function(data){
$("#user-availability-status3").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}

</script>

 <div class="card">
    <div class="card-body register-card-body">
      <p class="login-box-msg">Register</p>
         <span style="color:red;" ><?php echo htmlentities($_SESSION['errmsg']); ?><?php echo htmlentities($_SESSION['errmsg']="");?></span>
                
                
      <form action="" class="user" method="post" name="register" onSubmit="return valid();">
        <div class="input-group mb-3">
          <input  type="text" id="username" onBlur="userAvailability1()"name="username" class="form-control" placeholder="Full name" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
               <span id="user-availability-status2" style="font-size:10px;"></span>
        <div class="input-group mb-3">
          <input type="text"  id="email" onBlur="userAvailability()" name="emailid" class="form-control" placeholder="Email" required>
    
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <span id="user-availability-status1" style="font-size:15px;"></span>
          
         <div class="input-group mb-3">
          <input type="text" id="mobileno" onBlur="userAvailability2()" name="mobileno" maxlength="10" class="form-control" placeholder="Mobile No." required>
           <span id="user-availability-status1" style="font-size:10px;"></span>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-phone"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
         <span id="user-availability-status3" style="font-size:15px;"></span>
        <div class="input-group mb-3">
          <input type="password" id="confirmpassword" name="confirmpassword"  class="form-control" placeholder="confirmpassword" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
             </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
          <center>  <button class="btn btn-primary btn-block" style="background-color:#800080;" class="btn btn-primary" type="submit" name="submit" id="submit"class="register" value="Register">Register</button>
</center ></div>
          <!-- /.col -->
        </div>
      </form>
      <a href="index.php" style="background-color:#800080;"
 class="text-center">Login</a>
    </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
</div>
<!-- /.register-box -->
<!-- Bootstrap core JavaScript-->
<script>
    $(document).ready(function(){ 
      $(".changecolor").switchstylesheet( { seperator:"color"} );
      $('.show-theme-options').click(function(){
        $(this).parent().toggleClass('open');
        return false;
      });
    });

    $(window).bind("load", function() {
       $('.show-theme-options').delay(2000).trigger('click');
    });
  </script>
  <!-- For demo purposes – can be removed on production : End -->
<script src="../assets/js/jquery-1.11.1.min.js"></script>
  
  <script src="../assets/js/bootstrap.min.js"></script>
  
  <script src="../assets/js/bootstrap-hover-dropdown.min.js"></script>
  <script src="../assets/js/owl.carousel.min.js"></script>
  
  <script src="../assets/js/echo.min.js"></script>
  <script src="../assets/js/jquery.easing-1.3.min.js"></script>
  <script src="../assets/js/bootstrap-slider.min.js"></script>
    <script src="../assets/js/jquery.rateit.min.js"></script>
    <script type="../text/javascript" src="assets/js/lightbox.min.js"></script>
    <script src="../assets/js/bootstrap-select.min.js"></script>
    <script src="../assets/js/wow.min.js"></script>
  <script src="../assets/js/scripts.js"></script>

  <!-- For demo purposes – can be removed on production -->
  
  <script src="../switchstylesheet/switchstylesheet.js"></script>
  <script type="text/javascript">
    function openCity(evt, cityName) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        document.getElementById(cityName).style.display = "block";
        evt.currentTarget.className += " active";
    }

    // Get the element with id="defaultOpen" and click on it
    document.getElementById("defaultOpen").click();
  </script>
  <script src="scripts/jquery.min.js"></script>
  <script src="scripts/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jscripts/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="scripts/sb-admin-2.min.js"></script>
<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
</body>
</html>
 