
<?php 
include('includes/connection.php');
if(isset($_POST['save']))
{
	//data Get from Form
	$email = $_POST['admin_email'];
	$password = $_POST['admin_password'];
	$fullname = $_POST['admin_fullname'];

	
	$query="Insert into admin (admin_email , admin_password, admin_fullname) Values ('$email' , ' $password' , '$fullname')";
	
	mysqli_query($conn , $query);




	//dei;
	/*Do not execute below code*/
}

include('includes/admin_header.php');
?>
<hr>
<hr>
<hr>
<hr>
<hr>


<div class="col-lg-12">
	<div class="card">
		<div class="card-header">Manage Admin </div>
		<div class="card-body card-block">
			<form action="" method="post" class="">
				<div class="form-group">
					<div class="input-group">
						<div class="input-group-addon">
							<i class="fa fa-user"></i>
						</div>
						<input type="text" id="username" name="admin_fullname" placeholder="Full Name" class="form-control">
					</div>
				</div>
			
				<div class="form-group">
					<div class="input-group">
						<div class="input-group-addon">
							<i class="fa fa-envelope"></i>
						</div>
						<input type="email" id="email" name="admin_email" placeholder="Email" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<div class="input-group">
						<div class="input-group-addon">
							<i class="fa fa-asterisk"></i>
						</div>
						<input type="password" id="password" name="admin_password" placeholder="Password" class="form-control">
					</div>
				</div>
				<div class="form-actions form-group">
					<button type="submit" name="save" class="btn btn-outline-success btn-large">Save Admin Information</button>
				</div>
			</form>
		</div>
	</div>
</div>




	<div class="row m-t-30">
		<div class="col-md-12">
			<!-- DATA TABLE-->
			<div class="table-responsive m-b-40">
				<table class="table table-borderless table-data3">
					<thead>
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Email</th>
							<th>Update</th>
							<th>Delete</th>

						</tr>
					</thead>
					<tbody>

						<?php 
						$query = "select * from admin";
						$result = mysqli_query($conn , $query);

						while ($row = mysqli_fetch_assoc($result)) {
							echo "<tr>";
							echo"<td>{$row['admin_id']}</td>";
							echo"<td>{$row['admin_fullname']}</td>";	
							echo"<td>{$row['admin_email']}</td>";
							echo"<td><a href='update_admin.php?id={$row['admin_id']}' class='btn btn-warning'>Update</td>";
							echo"<td><a href='delete_admin.php?id={$row['admin_id']}' class='btn btn-danger'>Delete</td>";
							echo "</tr>";
						}


						?>

					</tbody>
				</table>
			</div>
			<!-- END DATA TABLE-->
		</div>
	</div>




<?php include('includes/admin_footer.php');?>