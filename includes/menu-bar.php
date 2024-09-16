<div class="header-nav animate-dropdown" style="background-color:#B30018;">
    <div class="container">
        <div class="yamm navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <button data-target="#mc-horizontal-menu-collapse" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="nav-bg-class">
                <div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
	<div class="nav-outer" >
		<ul class="nav navbar-nav">
			<li class="active dropdown yamm-fw">
				<a href="index.php" style="background-color:#B30018;" data-hover="dropdown" class="dropdown-toggle">Home</a>
				
			</li>
              <?php $sql=mysqli_query($con,"select id,categoryName  from category limit 6");
while($row=mysqli_fetch_array($sql))
{
    ?>

			<li class="dropdown yamm" >
				<a href="category.php?cid=<?php echo $row['id'];?>" style="background-color:#B30018;"> <?php echo $row['categoryName'];?></a>
			
			</li>
			<?php } ?>

			<li class="active dropdown yamm-fw">
				<a href="contact.php" style="background-color:#B30018;" data-hover="dropdown" class="dropdown-toggle">Contact US</a>
				
			</li>
            
		</ul><!-- /.navbar-nav -->
		<div class="clearfix"></div>				
	</div>
</div>


            </div>
        </div>
    </div>
</div>