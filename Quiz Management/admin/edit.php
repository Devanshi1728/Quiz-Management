<?php
	include_once("header.php");
	include_once("config.php");
	$id = $_GET['sub_id'];
	$qry1="select * from quiz_ques where id=".$id;
	$r1=mysqli_query($conn,$qry1);
	$r=mysqli_fetch_assoc($r1);
	if(isset($_POST['submit']))
	{
		$nm=$_POST['nm'];
		$type=$_POST['type'];
		$sub=$_POST['subtype'];
		$qry="Update quiz_ques set name='$nm',type=$type, subtype=$sub where id = ".$id;
		if(mysqli_query($conn,$qry))
		{
			echo "<script> alert('Subject Edited Successfully')</script>";
			header("location:subject.php");
		}	
		else
		{
			echo "<script>alert('Error : Subject is not Edited')</script>";
		}
	}
	@session_start();
  	if(!isset($_SESSION['admin']))
	{
		header("location:login.php");
	}
	else
	{
		$qry="select * from subject where type=1";
		$result=mysqli_query($conn,$qry);
		if(mysqli_num_rows($result)>0)
		{
?>
<section class="datatable">
<div class="container" align="center">
	<h1><span class="highlight">EDIT</span> SUBJECT</h1><br>
	<form name="add" action="<?php $_SERVER['PHP_SELF'] ?>" method="POST">
			<input type="text" name="id" value="<?php echo $id; ?>" disabled>
			<br><br>
			<input type="text" name="nm" placeholder="Enter Subject Name" required="" value="<?php echo $r['name'] ?>"><br><br>
			<select name="type" required="">
				<option>Select Type</option>
				<option value="1">Main</option>
				<option value="0">Sub</option>
			</select><br><br>
			<select name="subtype">
				<option value="0">Select Sub Type</option>
				<?php  
		    		while($row=mysqli_fetch_assoc($result)) 
		    		{
		    	?>
		    	<option value="<?php echo $row['sub_id'];?>"><?php echo $row["name"] ?></option>
				<?php
				}
			}
		}?>	</select>		
			<br><br>	
			<button type="submit" class="button1" name="submit">Save</button>
			<button type="reset" class="button1" name="reset">Clear</button>
		</form>
</div>
</section>
<?php
	include_once("footer.php");
?>