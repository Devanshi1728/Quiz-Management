<?php
  	include_once("header.php");
	include_once("config.php");

	if(isset($_POST['submit']))
	{
		$sub_id=$_POST['sub'];
		$desc=$_POST['desc'];
		$level=$_POST['level'];
		$que=$_POST['que'];
		$op1=$_POST['op1'];
		$op2=$_POST['op2'];
		$op3=$_POST['op3'];
		$op4=$_POST['op4'];
		$ans=$_POST['ans'];
		$qry="insert into quiz_ques(sub_id,level,compr,ques,op1,op2,op3,op4,solution) values($sub_id,$level,'$desc','$que','$op1','$op2','$op3','$op4','$ans')";
		if(mysqli_query($conn,$qry))
		{
			echo "<script> alert('Your Quiz is Recorded')</script>";
		}	
		else
		{
			echo "<script>alert('Error : Your Quiz is not Recorded')</script>";
		}
	}
?>
<section id="login">
	<div class="container">
		<h1><span class="highlight">ADD </span>QUIZ</h1><br><br>
			<form action="<?php echo $_SERVER['PHP_SELF'] ?>" method="POST">
				<select name="sub" required="">
					<option>Choose Subject</option>
					<optgroup label="Aptitude">
						<option value="1">Arithmetic</option>
						<option value="2">Data Interpretation</option>
					</optgroup>
					<optgroup label="Reasoning">
						<option value="3">Logical Reasoing</option>
					</optgroup>
					<optgroup label="English">
						<option value="4">Synonyms</option>
						<option value="5">Antonyms</option>
						<option value="6">Sentence Correction</option>
						<option value="7">Spellings</option>
					</optgroup>
					<optgroup label="General Knowledge">
						<option value="15">Current Affairs</option>
						<option value="16">Basic GK </option>
					</optgroup>
					<optgroup label="Technical">
						<option value="8">C Language</option>
						<option value="9">Data Structure</option>
						<option value="10">C++</option>
						<option value="11">Java</option>
						<option value="12">Python</option>
						<option value="13">Networking</option>
						<option value="14">Database Management System</option>
					</optgroup>
				</select><br><br>
				<select name="level" required="">
					<option value="1">Easy</option>
					<option value="2">Medium</option>
					<option value="3">Hard</option>
				</select><br><br>
			<textarea name="desc" placeholder="Type Question Description" value=""></textarea><br><br>
			<input type="text" name="que" placeholder="Question" required=""><br><br>
			<input type="text" name="op1" placeholder="Option 1" required=""><br><br>
			<input type="text" name="op2" placeholder="Option 2" required=""><br><br>
			<input type="text" name="op3" placeholder="Option 3" required=""><br><br>
			<input type="text" name="op4" placeholder="Option 4" required=""><br><br>	
			<input type="text" name="ans" placeholder="Correct Answer" required=""><br><br>
			<button type="submit" class="button1" name="submit">Submit</button>	</form>
	</div>
</section>
</body>
</html>
<?php
	include_once("footer.php");
?>