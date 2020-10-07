<?php
	include_once("config.php");
	if(isset($_POST['submit']))
	{
		session_start();
		$unm=$_POST['unm'];
		$password=$_POST['pswd'];
		$qry="select * from admin where username='$unm' and password='$password' limit 1";
		$result=mysqli_query($conn,$qry);
		$uname=mysqli_fetch_assoc($result);
		if($uname)
		{
			echo "<script> alert($unm)</script>";
			$_SESSION['admin']=$uname['username'];
			header('location:home.php');
		}	
		else
		{
			echo "<script>alert('Username or Password Does not exist')</script>";
		}
	}
	include_once("header.php");
?>
<section id="login">
	<div class="container">
		<h1><span class="highlight">LOG</span> IN</h1>
			<form name="login" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF'])?>" method="POST">
			<input type="text" name="unm" placeholder="Enter Username" required=""><br><br>
			<input type="password" name="pswd" placeholder="Enter password"required="">
			<br><br>
			<button type="submit" class="button1" name="submit">Login</button>
			<button type="reset" class="button1" name="reset">Clear</button>
		</form>
	</div>
</section>
<?php
	include_once("footer.php");
?>