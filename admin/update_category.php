<?php
include('includes/connection.php');
if(isset($_POST['save']))
{
	//data Get from Form

	$cat_name = $_POST['cat_name'];

	
	$query="update category set cat_name='$cat_name' where cat_id={$_GET['id']}";
	
	mysqli_query($conn , $query);

header("location:manage_category.php");

	/*Do not execute below code*/
}


 include('includes/admin_header.php');




$query="select * from category where cat_id={$_GET['id']}";
$result = mysqli_query($conn , $query);
$row = mysqli_fetch_assoc($result);

?>




<div class="main-content">
	<div class="section__content section__content--p30">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-header">Manage Categories</div>
						<div class="card-body">
							<div class="card-title">
								<h3 class="text-center title-2">Create New Category</h3>
							</div>
							<hr>
							<form action="" method="post" novalidate="novalidate">
								<div class="form-group">
									<label for="cc-cattitle" class="control-label mb-1">Category Name</label>
				<input id="cc-cattitle" name="cat_name" type="text" class="form-control" value=<?php echo $row['cat_name'];?> >
								</div>

								<button id="payment-button" type="submit" name="save" class="btn btn-lg btn-info btn-block">
									<i class="fa fa-plus fa-lg"></i>&nbsp;
									<span id="payment-button-amount">Update</span>

								</button>
							</div>
						</form>


							</div>
						</div>
					</div>




					<?php include('includes/admin_footer.php');?>