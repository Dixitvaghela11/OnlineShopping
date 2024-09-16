<?php 
require_once("include/config.php");
if(!empty($_POST["category"])) {
	$category= $_POST["category"];
	
		$result =mysqli_query($con,"SELECT  categoryName FROM  category WHERE  categoryName='$category'");
		$count=mysqli_num_rows($result);
if($count>0)
{
echo "<span style='color:red'> category already exists .</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}


if(!empty($_POST["subcategory"])) {
	$subcategory= $_POST["subcategory"];
	
		$result =mysqli_query($con,"SELECT  subcategory FROM  subcategory WHERE  subcategory='$subcategory'");
		$count=mysqli_num_rows($result);
if($count>0)
{
echo "<span style='color:red'> subcategory already exists .</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{
	
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}


if(!empty($_POST["mobileno"])) {
	$mobileno= $_POST["mobileno"];
	
		$result =mysqli_query($con,"SELECT  contactno FROM  users WHERE  contactno='$mobileno'");
		$count=mysqli_num_rows($result);
if($count>0)
{
echo "<span style='color:red'> mobileno already exists .</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{
	
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}


?>
