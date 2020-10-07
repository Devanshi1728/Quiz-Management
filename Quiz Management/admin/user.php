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
		$qry="select * from registration";
		$result=mysqli_query($conn,$qry);
		if(mysqli_num_rows($result)>0)
		{

?>
<section class="datatable">
<div class="container">
    <h1><span class="highlight">LEARN</span>ERS</h1><br>
    <table border="1"width="100%">
    	<tr>
    		<th>NAME</th>
    		<th>USERNAME</th>
    		<th>EMAIL</th>
    		<th></th>
    		</tr>
    	<?php  
    		while($row=mysqli_fetch_assoc($result)) 
    		{
    	?>
    	<tr>
    		<td><?php echo $row["name"] ?></td>
    		<td><?php echo $row["username"] ?></td>
    		<td><?php echo $row["email"]; ?></td>
    		<td width="170px">
    		<a href="deleteuser.php?username=<?php echo $row['username'];?>" onClick="return  confirm('Do you want to Delete Y/N')">Delete</a></td>
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