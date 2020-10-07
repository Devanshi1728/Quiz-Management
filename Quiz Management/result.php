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
		$qry="select s.*,u.name as name from result s join sub_subject u on s.sub_id=u.id where s.username ='".$_SESSION['username']."'";
		$result=mysqli_query($conn,$qry);
		if(mysqli_num_rows($result)>0)
		{

?>
<section class="datatable">
<div class="container">
    <h1><span class="highlight">MY</span> RESULTS</h1><br>
    <table border="1"width="100%">
        <tr>
            <th>SUBJECT</th>
            <th>MARKS</th>
            <th>RANK</th>
            </tr>
        <?php  
            while($row=mysqli_fetch_assoc($result)) 
            {
        ?>
        <tr>
            <td><?php echo $row["name"] ?></td>
            <td><?php echo $row["marks"]; ?></td>
            <td><?php echo $row["rank"]; ?></td>
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