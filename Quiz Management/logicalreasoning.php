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
		$count=1;
		$qry="select * from quiz_ques where sub_id=3 and level=2";
		$result=mysqli_query($conn,$qry);
		if(mysqli_num_rows($result)>0)
		{
?>
<br>
<section id="sub">
<div class="container">
	<form action="<?php echo $_SERVER['PHP_SELF'] ?>" method="POST">
	<h1 align="center"><span class="highlight">Logical</span> Reasoing</h1>
    <table border="1" width="100%">
    	<?php  
    		while($row=mysqli_fetch_assoc($result)) 
    		{
    	?>
    	<tr>
    		<td><?php echo $row["compr"] ?></td>
    	</tr>
    	<tr>
    		<td><?php echo "Question : ".$count."<br>"; echo $row["ques"] ?></td>
    	</tr>
    	<tr>
    		<td>
    			<input type="radio" name="radio<?php echo $count;?>" value="<?php echo $row['op1'] ?>"><?php echo $row['op1'] ?></br>
    			<input type="radio" name="radio<?php echo $count;?>" value="<?php echo $row['op2'] ?>"><?php echo $row['op2'] ?></br>
    			<input type="radio" name="radio<?php echo $count;?>" value="<?php echo $row['op3'] ?>"><?php echo $row['op3'] ?></br>
    			<input type="radio" name="radio<?php echo $count;?>" value="<?php echo $row['op4'] ?>"><?php echo $row['op4'] ?>
    		</td>
    	</tr>
    <?php 
			$count++;}
		}
		else
	    {
	    	echo "<script>alert('Can't Load Quiz')</script>";
	    }
	    if ($_SERVER["REQUEST_METHOD"]=="POST") 
	    {
	    	$qry="select * from quiz_ques where sub_id=3 and level=2";
			$result=mysqli_query($conn,$qry);
			$i=1; $t=0;$f=0;
			while($row=mysqli_fetch_assoc($result))
			{
				$ans=$_POST['radio'.$i];	    	
				if($row['solution']==$ans)
						$t++;
				else
						$f++;	
				$i++;
			}
			$i=$i-1;
			echo "<script>alert('Total Questions = $i Right Answer = $t Your wrong answer = $f')</script>";
	    }
	}?>
	<tr>
		<td align="center"><button type="submit" class="button1" name="submit">Submit</button></td>
	</tr>
    </table>
</form>
</div>	
</section>
<?php
  include_once("footer.php");
?>