<?php
	include_once("config.php");
	$qry="Delete from suggest_qz where ques = ".$_GET['que'];
	if(mysqli_query($conn,$qry))
		echo "<script>alert('Question is Deleted')</script>";
	else
		echo "<script>alert('Error : Question is not Deleted')</script>";
	header("location:subject.php");
?>