<?php
	include_once("config.php");
	if(isset($_POST['submit']))
	{
		session_start();
		$unm=$_POST['unm'];
		$pswd=$_POST['pswd'];
		$password=md5($pswd);
		//echo "$password";
		$qry="select * from registration where username='$unm' and password='$password' limit 1";
		$result=mysqli_query($conn,$qry);
		$uname=mysqli_fetch_assoc($result);
		if($uname)
		{
			echo "<script> alert($unm)</script>";
			$_SESSION['username']=$uname['username'];
			header('location:index.php');
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
			<input type="text" name="unm" placeholder="Enter Username" pattern="(?=.*\d)(?=.*[a-z]).{4,}" title="Username must contain atleast 4 Alpha numeric Characters" required=""><br><br>
			<input type="password" name="pswd" placeholder="Enter password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Password Must Contain atleast 6 Alpha numeric Characters" required="">
			<br><br>
			<button type="submit" class="button1" name="submit">Login</button>
			<button type="reset" class="button1" name="reset">Clear</button>
		</form>
	</div>
</section>

<?php
	include_once("footer.php");
?>
