<?php
	include_once("config.php");
	$qry="Delete from subject where sub_id = ".$_GET['sub_id'];
	if(mysqli_query($conn,$qry))
		header("location:subject.php");
	else
		echo "<script>alert('Error : subject is not Deleted')</script>";
?>