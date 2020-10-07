<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="shortcut icon" href="images/logo-2.png">
	<title>Learn</title>
	<meta name="viewport" content="width=device-width" intial-scale="1">
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

<!-----Header----->
<div class="header">
	<div class="container">
	<div class="logo">
		<img src="images/logo.png">
  	</div>
	<div class="header-right">
	<?php
		@session_start();
		if(isset($_SESSION['username']))
		{
			echo '<a href="logout.php">Logout</a>';
		}
		else
		{
			echo '<a href="login.php">Log in</a>';
			echo '<a href="register.php">Sign in</a>';
		}
	?>
	</div>
	</div>
</div>
	<nav>
		<div class="container">
		<ul>
			<li><a href="index.php" class="<?php echo (basename($_SERVER['PHP_SELF'])=='index.php')?"active":""; ?>">Home</a></li>
			<li><a href="about.php" class="<?php echo (basename($_SERVER['PHP_SELF'])=='about.php')?"active":""; ?>">About Us</a></li>
  			<li><a href="courses.php" class="<?php echo (basename($_SERVER['PHP_SELF'])=='courses.php')?"active":""; ?>">Courses</a></li>
			<?php
				@session_start();
				if(isset($_SESSION['username']))
				{
				 ?>

			<li><a href="leaderboard.php" class="<?php echo (basename($_SERVER['PHP_SELF'])=='leaderboard.php')?"active":"";?>">Top Learner</a></li>
  			<li><a href="quiz.php" class="<?php echo (basename($_SERVER['PHP_SELF'])=='quiz.php')?"active":"";?>">Quiz Factory</a></li>
  			<li><a href="result.php" class="<?php echo (basename($_SERVER['PHP_SELF'])=='result.php')?"active":"";?>">My Results</a></li>
  			<?php } ?>
  			<li><a href="contact.php" class="<?php echo (basename($_SERVER['PHP_SELF'])=='contact.php')?"active":""; ?>">Feedback</a></li>
		</ul>
		</div>
	</nav>
</div>