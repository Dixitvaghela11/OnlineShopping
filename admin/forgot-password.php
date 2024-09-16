
</script>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 3 | Forgot Password</title>
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
</head>
<body class="hold-transition login-page" style="background-color:black;">
<div class="login-box">
  <div class="login-logo"><img src="data:image/png;base64,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" height="90" alt="" width="91">
    <a href='index.php'><b>Admin</b>Login</a>
  </div>  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">You forgot your password?</p>

      <form class="register-form outer-top-xs" method="post" onclick="result()">
    
        <div class="form-group first_box">
        <div class="input-group mb-3">
          <input input type="email" name="email" class="form-control unicase-form-control text-input" id="email"  placeholder="Email" oninput="send_otp()"required>
           
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
      </div> <span id="email_error" class="field_error"></span>
        <div class="row">
            <div class="first_box">
Otp Automatic Send Your Enter email
        </div>
   


<div class="input-group mb-3">
           <input type="otp" id="otp" name="otp" class="form-control unicase-form-control text-input" id="exampleInputEmail1" placeholder="Enter OTP" required >
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>



        

    </div>
 <center>
      <button type="button" class="btn-upper btn btn-primary checkout-page-button" onclick="submit_otp()" style="background-color:#800080;" class="btn btn-primary"> Confirm OTP </button>
</center> <p class="mt-3 mb-1" >
        <center><a href="index.php" style="color:#800080;">Login</a>
      </p>
      <p class="mb-0">
        <a href="signup.php" style="color:#800080;"class="text-center">Register</a>
      </p></center>
    </div></div>
    </div>
        </div>
        
      </form>

    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->
<script>
function send_otp(){
  var email=jQuery('#email').val();
  jQuery.ajax({
    url:'send_otp.php',
    type:'post',
    data:'email='+email,
    success:function(result){
      if(result=='yes'){
        jQuery('.second_box').show();
        jQuery('.first_box').hide();
      }
      if(result=='not_exist'){
        jQuery('#email_error').html('Please enter valid email');
      }
    }
  });
}

function submit_otp(){
  var otp=jQuery('#otp').val();
  jQuery.ajax({
    url:'check_otp.php',
    type:'post',
    data:'otp='+otp,
    success:function(result){
      if(result=='yes'){
        var email=jQuery('#email').val();
        window.location='password.php'
      }
      if(result=='not_exist'){
        jQuery('#otp_error').html('Please enter valid otp');
      }
    }
  });
}
</script>
<style>
.second_box{display:none;}
.field_error{color:red;}
</style>
<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
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
  
  <script src="switchstylesheet/switchstylesheet.js"></script>
  
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

</body>
</html>