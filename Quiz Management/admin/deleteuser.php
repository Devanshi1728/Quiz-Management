<?php
	include_once("config.php");
	$qry="Delete from registration where username = '".$_GET['username']."'";
	if(mysqli_query($conn,$qry))
		header("location:user.php");
	else
		echo "<script>alert('Error : Learner is not Deleted')</script>";
?>