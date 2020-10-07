<?php
	include_once("config.php");
	include_once("header.php");
	@session_start();
	$nm=$unm=$email="";
	$errors=array();
	if($_SERVER["REQUEST_METHOD"]=="POST")
	{
		$nm=$_POST['nm'];
		$unm=$_POST['unm'];
		$email=$_POST['email'];
		$passwd=$_POST['passwd'];

		$usr_chk="Select * from registration where username='$unm' or email='$email' limit 1";
		$result=mysqli_query($conn,$usr_chk);
		$usr=mysqli_fetch_assoc($result);
		if($usr)
		{
			if($usr['username']===$unm)
			{
				echo "<script>alert('Username already exists')</script>";
				array_push($errors, "Username already exists");
			}
			if($usr['email']===$email)
			{
				echo "<script>alert('Email already exists')</script>";
				array_push($errors, "Email already exists");
			}
		}
		if(count($errors)==0)
		{
			$password=md5($passwd);
			$qry="Insert into registration(name,username,email,password) values('$nm','$unm','$email','$password')";
			mysqli_query($conn,$qry);
			$_SESSION['username']=$unm;
			$_SESSION['Success']="You are Logged in";
			echo "<script>alert('Welcome, $nm')</script>";
			header("location:index.php");
		}
	}
?>
<section id="login">
	<div class="container">
		<h1><span class="highlight">SIGN</span> IN</h1>
			<form action="<?php echo $_SERVER['PHP_SELF'] ?>" method="POST">
			<input type="text" name="nm" placeholder="Enter Name" required="" minlength="4"><br><br>
			<input type="text" name="unm" placeholder="Enter Username" pattern="(?=.*\d)(?=.*[a-z]).{4,}" title="Username must contain atleast 4 Alpha numeric Characters" required=""><br><br>
			<input type="email" name="email" placeholder="Enter Email" required=""><br><br>
			<input type="password" name="passwd" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Password Must Contain atleast 6 Alpha numeric Characters" required=""><br><br>
			<button type="submit" class="button1" name="submit">Sign In</button>
			<button type="reset" class="button1" name="reset">Clear</button>
		</form>
	</div>
</section>

<?php
	include_once("footer.php");
?>
