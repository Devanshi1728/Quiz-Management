<?php
  	include_once("header.php");
  	include_once("config.php");

  	@session_start();
  	if(!isset($_SESSION['admin']))
	{
		header("location:login.php");
	}
	else
	{	
?>
<section class="datatable">
<div class="container">
    <h1><span class="highlight">QUIZ</span> SUGGESTIONS</h1><br>
    <table border="1"width="100%">
    	<tr>
    		<th>USERNAME</th>
    		<th>SUBJECT</th>
    		<th>COMPREHENSION</th>
    		<th>QUESTION</th>
			<th>OPTION1</th>
			<th>OPTION2</th>
			<th>OPTION3</th>
			<th>OPTION4</th>
			<th>ANSWER</th>
			<th></th>
    		</tr>
    	<?php  
    		$qry="select * from suggest_qz";
			$result=mysqli_query($conn,$qry);
			if(mysqli_num_rows($result)>0)
			{
		    	while($row=mysqli_fetch_assoc($result)) 
		   		{
    	?>
    	<tr>
    		<td><?php echo $row["username"] ?></td>
    		<td><?php echo $row["sub_id"] ?></td>
    		<td><?php echo $row["compr"]; ?></td>
            <td><?php echo $row["ques"]; ?></td>
            <td><?php echo $row["op1"]; ?></td>
            <td><?php echo $row["op2"]; ?></td>
            <td><?php echo $row["op3"]; ?></td>
            <td><?php echo $row["op4"]; ?></td>
            <td><?php echo $row["solution"]; ?></td>
    		<td width="170px">
    		<a href="deletesuggest.php?que=<?php echo $row['ques'];?>" onClick="return  confirm('Do you want to Delete Y/N')">Delete</a></td>
    	</tr>
    	<?php
    		}
		}
		else
	    {
	    	echo "<script>alert('Can't Load Subjects')</script>";
	    }
	} ?>
    </table>
</div>
</section>
<?php
  include_once("footer.php");
?>