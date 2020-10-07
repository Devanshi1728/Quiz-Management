<?php
	include_once("header.php");
?>
<!-----slider----->
<section id="showcase">
	<div class="container">
	</div>
</section>

<section id="search">
	<div class="container">
		<h1>Welcome to Learn</h1>
		<form action="search.php" method="POST">
			<input type="text" name="search" placeholder="Search...">
			<button type="submit" class="button1">GO</button>
		</form>
	</div>
</section>

<section id="about-box">
	<div class="container">
		<h1><span class="highlight">LEA</span>RN</h1><br>
		<p><h2 style="font-family: Agency FB; font-size: 28px; letter-spacing: 1px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Learn is a website for students and the others who want to play the quiz.
Here,you can select the Courses and there are many categories in individual Subjects. 
There are main 5 subjects like Aptitude, Reasoning, Technical, English and General Knowledge.
You will have to Register first if you are new user else directly login to your account. 
You can select the level and total number of questions as you want. You can get the solution of those questions and also get result after playing each quiz. You can also suggest new quiz.
</h2>
</p>
</div>
</section>

<section id="boxes">
	<div class="container">
		<div class="box">
			<img src="images/aptitude.jpg">
			<h3>Aptitude</h3>
			<p>Here,we are providing Arithmatic and Data Interpretation quiz for you...</p><br>
			<a href="courses.php"><button type="submit" class="button1">Play Quiz</button></a>
		</div>
		<div class="box">
			<img src="images/reasoning.png">
			<h3>Reasoing</h3>
			<p>Here you may get all the quiz related to Logical Reasoning of all level.</p><br>
			<a href="courses.php"><button type="submit" class="button1">Play Quiz</button></a>
		</div>
		<div class="box">
			<img src="images/technical.jpg">
			<h3>Technical</h3>
			<p>Here, you can select the technical subjects like C, C++, Java, PHP, and choose the level and play.
			</p><br>
			<a href="courses.php"><button type="submit" class="button1">Play Quiz</button></a>
		</div>	
	</div>
</section>
<?php
	include_once("footer.php");
?>