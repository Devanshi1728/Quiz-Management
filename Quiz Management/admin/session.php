<?php
	@session_start();
	if(!isset($_SESSION['admin']))
	{
		echo "<script> window.location.assign('login.php');</script>";	
	}
?>