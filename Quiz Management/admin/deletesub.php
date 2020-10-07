<?php
	include_once("config.php");
	$qry="Delete from sub_subject where id = ".$_GET['id'];
	if(mysqli_query($conn,$qry))
		echo "<script>alert('Subject is Deleted')</script>";
	else
		echo "<script>alert('Error : Subject is not Deleted')</script>";
	header("location:subject.php");
?>