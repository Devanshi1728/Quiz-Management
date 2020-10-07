<?php
  	include_once("header.php");
  	include_once("config.php");

    if(isset($_POST['submit']))
    {
        $sub=$_POST['sub'];
        $lvl=$_POST['level'];
        $q="select * from sub_subject where name='$sub'";
        if($r=mysqli_query($conn,$q))
        {
            $x=mysqli_fetch_row($r);
            $id=$x[0];
        }
    }
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
    <h1><span class="highlight">QUIZ</span> FACTORY</h1><br>
    <a href="courses.php"><button type="submit" class="button1" onclick="location.href='addquiz.php'">BACK</button></a>
    <button type="submit" class="button1" onclick="location.href='addquiz.php'">ADD</button><br/><br/>
    <table border="1"width="100%">
    	<tr>
    		<th>SUB_ID</th>
    		<th>LEVEL</th>
    		<th>COMPREHENSION</th>
    		<th>QUESTION</th>
			<th>OPTION1</th>
			<th>OPTION2</th>
			<th>OPTION3</th>
			<th>OPTION4</th>
			<th>ANSWER</th>
			<th></th>
			<th></th>
    		</tr>
    	<?php  
    		$qry="select * from quiz_ques where sub_id=".$id." and level=".$lvl;
            $result=mysqli_query($conn,$qry);
            if(mysqli_num_rows($result)>0)
            {
                while($row=mysqli_fetch_assoc($result)) 
                {
        ?>
    	<tr>
    		<td><?php echo $row['sub_id'] ?></td>
    		<td><?php echo $row['level'] ?></td>
    		<td width="300"><?php echo $row['compr']; ?></td>
    		<td><?php echo $row['ques'] ?></td>
    		<td><?php echo $row['op1'] ?></td>
    		<td><?php echo $row['op2']; ?></td>
    		<td><?php echo $row['op3'] ?></td>
    		<td><?php echo $row['op4']; ?></td>
    		<td><?php echo $row['solution']; ?></td>
    		<td width="60"><a href="edit.php?id=<?php echo $row['id'];?>">Edit</a></td>
    		<td><a href="deleteque.php?id=<?php echo $row['id'];?>" onClick="return confirm('Do you want to Delete Y/N')">Delete</a></td>
    	</tr>
    	<?php
    		}
		}
		else
	    {
	    	echo "<script>alert('Can't Load Quiz')</script>";
	    }
	} ?>
    </table>
</div>
</section>
<?php
  include_once("footer.php");
?>