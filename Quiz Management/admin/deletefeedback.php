<?php
	include_once("config.php");
	$qry="Delete from feedback where email = '".$_GET['email']."'";
	if(mysqli_query($conn,$qry))
		header("location:feedback.php");
	else
		echo "<script>alert('Error : feedback is not Deleted')</script>";
?>