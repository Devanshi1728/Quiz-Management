<?php
	include_once("config.php");
	if(isset($_POST['submit']))
	{
		$nm=$_POST['subject'];
		echo $nm;
		$qry="insert into subject(name) values('$nm')";
		if(mysqli_query($conn,$qry))
		{
			echo "<script> alert('Subject Added Successfully')</script>";
			header("location:subject.php");
		}	
		else
		{
			echo "<script>alert('Error : Subject is not added')</script>";
		}
	}
?>