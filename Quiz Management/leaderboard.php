<?php
	include_once("header.php");
  	include_once("config.php");

  	@session_start();
  	if(!isset($_SESSION['username']))
	{
		header("location:login.php");
	}
	else
	{
		$qry="select r.*,s.name as name from result r join sub_subject s on r.sub_id=s.id order by r.marks desc";
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
    		<th>SUBJECT</th>
    		<th>MARKS</th>
    		<th>RANK</th>
    	</tr>
    	<?php  
    		while($row=mysqli_fetch_assoc($result)) 
    		{
    	?>
    	<tr>
    		<td><?php echo $row["username"] ?></td>
    		<td><?php echo $row["name"] ?></td>
    		<td><?php echo $row["marks"]; ?></td>
    		<td><?php echo $row["rank"]; ?></td>
    	</tr>
    	<?php
    		}
		}
		else
	    {
	    	echo "<script>alert('Can't Load Result')</script>";
	    }
	} ?>
    </table>
</div>
</section>
<?php
	include_once("footer.php");
?>