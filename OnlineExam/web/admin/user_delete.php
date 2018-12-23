<?php
	if(!isset($_COOKIE['user'])){
		echo "<script> alert('This Page is locked...Please Login To Continue'); </script>";
		echo "<script>window.open('adminindex.php','_self');</script>";
	}

    else if(!isset($_GET['uid']))
	{
		echo "<script> alert('This Page is locked...Please Login To Continue'); </script>";
		echo "<script>window.open('adminindex.php','_self');</script>";
	}
	
	else{
		$con=mysqli_connect("localhost","root","","project");
		$u_id=$_GET['uid'];
		
		$del="delete from user where user_id='$u_id'";
		$que=mysqli_query($con,$del);
		if(!$que)
		{
			echo "<script> alert('Cannot Delete the selected user...Try Again Later'); </script>";
            echo "<script>window.open('adminlogin.php','_self');</script>";
		}
		
		else{
				echo "<script> alert('Selected user is deleted from database...!!!'); </script>";
				echo "<script>window.open('adminlogin.php','_self');</script>";
		}
		
	}

?>
