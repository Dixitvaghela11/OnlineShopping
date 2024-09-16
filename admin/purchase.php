
<?php
session_start();
include('include/config.php');
if(strlen($_SESSION['alogin'])==0)
	{	
header('location:index.php');
}
else{
	
if(isset($_POST['submit']))
{
	$category=$_POST['category'];
	$subcat=$_POST['subcategory'];
	$productname=$_POST['productName'];
	$productdescription=$_POST['productDescription'];
	$productprice=$_POST['productprice'];
	$suppliername=$_POST['suppliername'];
	$qty=$_POST['qty'];
	$total=$productprice*$qty;
	$productsize=$_POST['size'];
	$contact=$_POST['contactno'];
	$email=$_POST['email'];
	$address=$_POST['address'];
	$productimage1=$_FILES["productimage1"]["name"];
	$productimage2=$_FILES["productimage2"]["name"];
	$productimage3=$_FILES["productimage3"]["name"];
	
//for getting product id
$query=mysqli_query($con,"select max(purchase_id) as pid from productpurchase");
	$result=mysqli_fetch_array($query);
	 $productid=$result['pid']+1;
	$dir="productimages1/$productid";          
	if(!is_dir($dir)){
		mkdir("productimages1/".$productid);				
	}

	move_uploaded_file($_FILES["productimage1"]["tmp_name"],"productimages1/$productid/".$_FILES["productimage1"]["name"]);
	move_uploaded_file($_FILES["productimage2"]["tmp_name"],"productimages1/$productid/".$_FILES["productimage2"]["name"]);
	move_uploaded_file($_FILES["productimage3"]["tmp_name"],"productimages1/$productid/".$_FILES["productimage3"]["name"]);

$sql=mysqli_query($con,"insert into productpurchase(category,subcategory,productname,description,price,suppliername,qty,total,size,contactno, email,address,image1,image2,image3) values('$category','$subcat','$productname','$productdescription','$productprice','$suppliername','$qty','$total','$productsize','$contact','$email','$address','$productimage1','$productimage2','$productimage3')");
$_SESSION['msg']="Product Inserted Successfully !!";

}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admin| Insert Product purchase Details</title>
	<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link type="text/css" href="css/theme.css" rel="stylesheet">
	<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
<script src="http://js.nicedit.com/nicEdit-latest.js" type="text/javascript"></script>
<script type="text/javascript">bkLib.onDomLoaded(nicEditors.allTextAreas);</script>

<SCRIPT type="text/javascript">
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




     function readURL(input) {
     	var _validFileExtensions = [".jpg", ".jpeg",".png"];
     		     var arrInputs = document.getElementById("fileChooser").value;
            for (var i = 0; i < arrInputs.length; i++) {
                var oInput = arrInputs[i];
                if (oInput.type == "file") {
                    var sFileName = oInput.value;
                if (sFileName.length > 0) {
                    var blnValid = false;
                    for (var j = 0; j < _validFileExtensions.length; j++) {
                        var sCurExtension = _validFileExtensions[j];
                        if (sFileName.substr(sFileName.length - sCurExtension.length, sCurExtension.length).toLowerCase() == sCurExtension.toLowerCase()) {
                            blnValid = true;

                            if (input.files && input.files[0])  {
                                var reader = new FileReader();

                                reader.onload = function (e) {
                                     $('#blah').attr('src', e.target.result)
                                };

                                reader.readAsDataURL(input.files[0]);
                            }


                            break;
                        }
                    }

                    if (!blnValid) {
                        alert("Sorry, " + sFileName + " is invalid, allowed extensions are: " + _validFileExtensions.join(", "));
                        return false;
                    }
                }
            }
        }

        return true;





    }

</script>	


</head>
<?php include('include/nn.php');?>
<?php include('include/header.php');?>

<body>				
			<div class="bootstrap-responsive">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Insert Purchase Product</h3>
							</div>
							<div class="module-body">

									<?php if(isset($_POST['submit']))
{?>
									<div class="alert alert-success">
										<button type="button" class="close" data-dismiss="alert">×</button>
									<strong>Well done!</strong>	<?php echo htmlentities($_SESSION['msg']);?><?php echo htmlentities($_SESSION['msg']="");?>
									</div>
<?php } ?>


									<?php if(isset($_GET['del']))
{?>
									<div class="alert alert-error">
										<button type="button" class="close" data-dismiss="alert">×</button>
									<strong>Oh snap!</strong> 	<?php echo htmlentities($_SESSION['delmsg']);?><?php echo htmlentities($_SESSION['delmsg']="");?>
									</div>
<?php } ?>

									<br />

			<form class="form-horizontal row-fluid" name="insertproduct" method="post" enctype="multipart/form-data">

<div class="control-group">
<label class="control-label" for="basicinput">Category</label>
<div class="controls">
<select name="category" class="span8 tip" onChange="getSubcat(this.value);"  required>
<option value="">Select Category</option> 
<?php $query=mysqli_query($con,"select * from category");
while($row=mysqli_fetch_array($query))
{?>

<option value="<?php echo $row['id'];?>"><?php echo $row['categoryName'];?></option>
<?php } ?>
</select>
</div>
</div>

									
<div class="control-group">
<label class="control-label" for="basicinput">Sub Category</label>
<div class="controls">
<select   name="subcategory"  id="subcategory" class="span8 tip" required>
</select>
</div>
</div>


<div class="control-group">
<label class="control-label" for="basicinput">Product Name</label>
<div class="controls">
<input type="text"    name="productName"  placeholder="Enter Product Name" class="span8 tip" required>
</div>
</div>
<div class="control-group">
<label class="control-label" for="basicinput">Product Description</label>
<div class="controls">
<textarea  name="productDescription"  placeholder="Enter Product Description" rows="6" class="span8 tip">
</textarea>  
</div>
</div>
<div class="control-group">
<label class="control-label" for="basicinput">Product Price</label>
<div class="controls">
<input type="text"    name="productprice"  placeholder="Enter Product Price" class="span8 tip" required>
</div>
</div>

<div class="control-group">
<label class="control-label" for="basicinput">Product Supplier Name</label>
<div class="controls">
<input type="text"    name="suppliername"  placeholder="Enter Product Comapny Name" class="span8 tip" required>
</div>
</div>
<div class="control-group">
<label class="control-label" for="basicinput">Qty</label>
<div class="controls">
<input type="text"    name="qty"  placeholder="Enter Product qty" class="span8 tip" required>
</div>
</div>




	
<div class="control-group">
<label class="control-label" for="basicinput">Size</label>
<div class="controls">
<select class="span8 tip" name="size" required>
<option value="">Select Size</option> 
<?php $query=mysqli_query($con,"select * from size");
while($row=mysqli_fetch_array($query))
{?>

<option value="<?php echo $row['size'];?>"><?php echo $row['size'];?></option>
<?php } ?>
</select>
</div>
</div>


<div class="control-group">
<label class="control-label" for="basicinput">Contact</label>
<div class="controls">
<input type="text"    name="contactno"  placeholder="Enter Suppiler Contact No" class="span8 tip" required>
</div>
</div>
<div class="control-group">
<label class="control-label" for="basicinput">E-Mail</label>
<div class="controls">
<input type="text"    name="email"  placeholder="Enter Supplier email " class="span8 tip" required>
</div>
</div>
<div class="control-group">
<label class="control-label" for="basicinput">Address</label>
<div class="controls">
<input type="text"    name="address"  placeholder="Enter Supplier Company Address" class="span8 tip" required>
</div>
</div>





<div class="control-group">
<label class="control-label" for="basicinput">Product Image1</label>
<div class="controls">
<input type="file" name="productimage1"   id="fileChooser" value="" class="span8 tip" onclick="readURL(this);" required>
</div>
</div>


<div class="control-group">
<label class="control-label" for="basicinput">Product Image2</label>
<div class="controls">
<input type="file" name="productimage2"  class="span8 tip"  id="fileChooser" onclick="readURL(this);" required>
</div>
</div>



<div class="control-group">
<label class="control-label" for="basicinput">Product Image3</label>
<div class="controls">
<input type="file" name="productimage3"   id="fileChooser" onclick="readURL(this);" class="span8 tip">
</div>
</div>

	<div class="control-group">
											<div class="controls">
												<button type="submit" name="submit" class="btn btn-primary">Insert</button>
											</div>
										</div>
									</form>
							</div>
						</div>


	
						
<?php include('include/footer.php');?>

						
					</div><!--/.content-->
				</div><!--/.span9-->
			</div>
		</div><!--/.container-->
	</div><!--/.wrapper-->

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
<?php } ?>