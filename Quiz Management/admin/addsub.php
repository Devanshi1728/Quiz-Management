<?php
  	include_once("header.php");
  	include_once("config.php");
  	$id=$_GET['sub_id'];
  	if(isset($_POST['submit']))
	  {
  		$nm=$_POST['subject'];
  		$qry="insert into sub_subject(sub_id,name) values($id,'$nm')";
  		if(mysqli_query($conn,$qry))
  		{
  			echo "<script> alert('Subject Added Successfully')</script>";
  			header("location:subject.php");
  		}	
  		else
  		{
  			echo "<script>alert('Error : Subject is not added')</script>";
  		}
  	}
  	@session_start();
  	if(!isset($_SESSION['admin']))
  	{
  		header("location:login.php");
  	}
  	else
  	{
  		$qry="select s.id,s.name,ss.name as subname from sub_subject s JOIN subject ss on s.sub_id=ss.sub_id where s.sub_id = ".$_GET['sub_id'];
  		$result=mysqli_query($conn,$qry);
  		if(mysqli_num_rows($result)>0)
  		{
?>
<script type="text/javascript">
function openForm() 
{
  document.getElementById("myForm").style.display="block";
} 
function closeForm()
{
  document.getElementById("myForm").style.display="none";
} 
</script>
<div class="form-popup" id="myForm">
<form action="<?php $_SERVER['PHP_SELF'] ?>" method="POST" 
	class="form-container">
<span class="close" onclick="closeForm()">&times;</span>
<h3 style="color: white;">ADD SUBJECT</h3><br>
<input type="text" name="subject" placeholder="Enter Subject Name" required="">
<button type="submit" name="submit" class="btn">ADD</button>
<button type="button" class="btn" onclick="closeForm()" style="background-color: red;">CLOSE</button>
</form> 
</div>

<section class="datatable">
<div class="container">
    <h1><span class="highlight">Learn</span> Courses</h1><br>
    <button type="submit" class="button1" onclick="openForm()">ADD</button><br/><br/>
    <table border="1"width="100%">
    	<tr>
    		<th width="180px">SUBJECT ID</th>
    		<th>SUBJECT NAME</th>
    		<th>MAIN SUBJECT</th>
    		<th>DELETE SUBJECT</th>
    		</tr>
    	<?php  
    		while($row=mysqli_fetch_assoc($result)) 
    		{
    	?>
    	<tr>
    		<td><?php echo $row['id'] ?></td>
    		<td><?php echo $row['name'] ?></td>
    		<td><?php echo $row['subname'] ?></td>
    		<td width="180px">
            <a href="deletesub.php?id=<?php echo $row['id'];?>" onClick="return confirm('Do you want to Delete Y/N')">Delete</a></td>
    	</tr>
    	<?php
    		}
		}
		else
	    {
	    	echo "<script>alert('Can not Load Subjects')</script>";
	    }
	}?>
    </table>
</div>
</section>
<?php
  include_once("footer.php");
?>