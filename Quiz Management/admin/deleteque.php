<?php
	include_once("config.php");
	$qry="Delete from quiz_ques where id = ".$_GET['id'];
	if(mysqli_query($conn,$qry))
		header("location:quiz.php");
	else
		echo "<script>alert('Error : Quiz is not Deleted')</script>";
?>