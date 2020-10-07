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
		$qry="select * from feedback";
		$result=mysqli_query($conn,$qry);
		if(mysqli_num_rows($result)>0)
		{

?>
<section class="datatable">
<div class="container">
    <h1><span class="highlight">FEED</span>BACK</h1><br>
    <table border="1"width="100%">
    	<tr>
    		<th>NAME</th>
    		<th>EMAIL</th>
    		<th>MESSAGE</th>
    		<th></th>
    		</tr>
    	<?php  
    		while($row=mysqli_fetch_assoc($result)) 
    		{
    	?>
    	<tr>
    		<td><?php echo $row["name"] ?></td>
    		<td><?php echo $row["email"] ?></td>
    		<td><?php echo $row["msg"]; ?></td>
    		<td width="170px">
    		<a href="deletefeedback.php?email=<?php echo $row['email'];?>" onClick="return  confirm('Do you want to Delete Y/N')">Delete</a></td>
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