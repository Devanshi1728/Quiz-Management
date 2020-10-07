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
  		$qry="select * from subject";
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
<form action="add.php" method="POST" class="form-container">
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
    		<th>SUB SUBJECT</th>
    		<th>DELETE SUBJECT</th>
    		</tr>
    	<?php  
    		while($row=mysqli_fetch_assoc($result)) 
    		{
    	?>
    	<tr>
    		<td><?php echo $row["sub_id"] ?></td>
    		<td><?php echo $row["name"] ?></td>
    		<td width="180px">
            <a href="addsub.php?sub_id=<?php echo $row['sub_id'];?>">Add</a></td>
            <td width="180px">
            <a href="delete.php?sub_id=<?php echo $row['sub_id'];?>" onClick="return confirm('Do you want to Delete Y/N')">Delete</a></td>
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