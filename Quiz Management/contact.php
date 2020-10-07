<?php
	include_once("config.php");
	include_once("header.php");
	@session_start();
	$nm=$msg=$email="";
	$errors=array();
	if($_SERVER["REQUEST_METHOD"]=="POST")
	{
		$nm=$_POST['nm'];
		$email=$_POST['email'];
		$msg=$_POST['msg'];

		$qry="Insert into feedback(name,email,msg)values('$nm','$email','$msg')";
		if(mysqli_query($conn,$qry))
			echo "<script>alert('Thank you for your valuable feedback..')</script>";
		else
			echo "<script>alert('Feedback not registered')</script>";
	}
?>
<section id="login">
	<div class="container">
		<h1><span class="highlight">FEED</span>BACK</h1>
			<form action="<?php echo $_SERVER['PHP_SELF'] ?>" method="POST">
			<input type="text" name="nm" placeholder="Enter Name" required="" minlength="4"><br><br>
			<input type="email" name="email" placeholder="Enter Email" required=""><br><br>
			<textarea name="msg" placeholder="Message..." required=""></textarea><br><br>
			<button type="submit" class="button1" name="submit">Submit</button>
			<button type="reset" class="button1" name="reset">Clear</button>
		</form>
	</div>
</section>
<?php
	include_once("footer.php");
?>