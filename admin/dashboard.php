

<?php
session_start();
include('include/config.php');
?>
<?php 
  $today = date('Y-m-d');
  $year = date('Y');
  if(isset($_GET['year'])){
    $year = $_GET['year'];
  }
   
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin| dashboard</title>
  <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
   <link type="text/css" href="bootstrap/css/cs.css" rel="stylesheet">
  <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
  <link type="text/css" href="css/theme.css" rel="stylesheet">
  <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
  <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
<script src="http://js.nicedit.com/nicEdit-latest.js" type="text/javascript"></script>
<script type="text/javascript">bkLib.onDomLoaded(nicEditors.allTextAreas);</script>


   <script>
function getSubcat(val) {
  $.ajax({
  type: "POST",
  url: "get_subcat.php",
  data:'cat_id='+val,
  success: function(data){
    $("#subcategory").html(data);
  }
  });
}
function selectCountry(val) {
$("#search-box").val(val);
$("#suggesstion-box").hide();
}
</script> 


</head>

<body>
   <div class="wrapper">
<?php include('include/header.php');?>

 
    <div class="">
      <div class="row">
<?php include('include/nn.php');?>  
<div class="span11">
<?php
$query = "SELECT 
MONTHNAME(orderDate) as mname, 
sum(productPrice) as total
FROM Orders GROUP BY MONTH(orderDate)";

$result = mysqli_query($con, $query);
$chart_data = '';
while($row = mysqli_fetch_array($result))
{
 $chart_data .= "{ orderDate:'".$row["mname"]."', productPrice:".$row["total"]."}, ";
}
$chart_data = substr($chart_data, 0,-2);
?>


<!DOCTYPE html>
<html>
 <head>
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
  
 </head>
 <body>

  <br /><br />
 
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <?php
                      $sql_qry="SELECT SUM(productPrice) AS count FROM Orders ";

$sum = $con->query($sql_qry);
while($record = $sum->fetch_array()){
    $total = $record['count'];
} ?>
                <h3>Rs.<?php echo htmlentities($total); ?></h3>

                <p>Total Sales</p>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
              <a href="allorders.php" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3>RS.<?php
                      $sql_qry="SELECT sum(total) AS count FROM productpurchase ";

$sum = $con->query($sql_qry);
while($record = $sum->fetch_array()){
    $total = $record['count'];
} ?><?php echo htmlentities($total); ?></h3>

                <p>Total Purchase</p>
              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
              </div>
              <a href="managepurchase.php" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3><?php
                      $sql_qry="SELECT count(id) AS count FROM users ";

$sum = $con->query($sql_qry);
while($record = $sum->fetch_array()){
    $total = $record['count'];
} ?><?php echo htmlentities($total); ?></h3>

                <p>User Registrations</p>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <a href="manage-users.php" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3><?php
                      $sql_qry="SELECT count(id) AS count FROM userlog ";

$sum = $con->query($sql_qry);
while($record = $sum->fetch_array()){
    $total = $record['count'];
} ?><?php echo htmlentities($total); ?></h3>

                <p>Unique Visitors</p>
              </div>
              <div class="icon">
                <i class="ion ion-pie-graph"></i>
              </div>
              <a href="user-logs.php" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
        </div>
        <!-- /.row -->
     
            </div>
             <!-- BAR CHART -->
                           </form>
              </div>
                <div class="chart">
                    <div id="chart"></div>
                </div>
              </div>
              <!-- /.card-body -->
            </div>

            
  
        </div>
        <div class="card-body">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title"></h3>
             
            </div>
            <div class="box-body">
              <div class="chart">
                <br>
                <div id="legend" class="text-center"></div>
                   <div id="chart"></div>
                <canvas id="barChart" style="height:350px"></canvas>
              </div>
            </div>
          </div>
        </div></div>
    <!-- /.row -->

 </body>
</html>

<script>
Morris.Bar({
 element : 'chart',
 data:[<?php echo $chart_data; ?>],
 xkey:['orderDate'],
 ykeys:['productPrice'],
 labels:['amount'],
 hideHover:'auto',
 stacked:true
});
</script>
</div>
<?php include('include/footer.php'); ?>
</div>
</div>


 


  <script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
  <script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
  <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
  <script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
  <script src="scripts/datatables/jquery.dataTables.js"></script>
  <script>
    $(document).ready(function() {
      $('.datatable-1').dataTable();
      $('.dataTables_paginate').addClass("btn-group datatable-pagination");
      $('.dataTables_paginate > a').wrapInner('<span />');
      $('.dataTables_paginate > a:first-child').append('<i class="icon-chevron-left shaded"></i>');
      $('.dataTables_paginate > a:last-child').append('<i class="icon-chevron-right shaded"></i>');
    } );
  </script>

</body>