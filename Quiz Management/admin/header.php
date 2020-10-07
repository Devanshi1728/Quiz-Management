<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="shortcut icon" href="../images/logo-2.png">
	<title>Learn</title>
	<meta name="viewport" content="width=device-width, intial-scale=1">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>

<!-----Header----->
<div class="header">
	<div class="container">
	<div class="logo">
		<img src="../images/logo.png">
  	</div>
	<div class="header-right">
	<?php
		@session_start();
		if(isset($_SESSION['admin']))
		{
			echo '<a href="logout.php">Logout</a>';
		}
		else
		{
			echo '<a href="login.php">Log in</a>';
		}
	?>
	</div>
	</div>
</div>
	<nav>
		<div class="container">
		<ul>
			<li><a href="home.php" class="<?php echo (basename($_SERVER['PHP_SELF'])=='home.php')?"active":""; ?>">Home</a></li>
			<?php
				@session_start();
				if(isset($_SESSION['admin']))
				{
				 ?>

			<li><a href="subject.php" class="<?php echo (basename($_SERVER['PHP_SELF'])=='subject.php')?"active":"";?>">Subjects</a></li>
  			<li><a href="courses.php" class="<?php echo (basename($_SERVER['PHP_SELF'])=='courses.php')?"active":"";?>">Quiz Factory</a></li>
  			<li><a href="suggest.php" class="<?php echo (basename($_SERVER['PHP_SELF'])=='suggest.php')?"active":"";?>">Quiz Suggestion</a></li>
  			<li><a href="user.php" class="<?php echo (basename($_SERVER['PHP_SELF'])=='user.php')?"active":"";?>">Learners</a></li>
  			<li><a href="feedback.php" class="<?php echo (basename($_SERVER['PHP_SELF'])=='feedback.php')?"active":"";?>">Feedback</a></li>
  			<?php } ?>
  			</ul>
		</div>
	</nav>
</div>