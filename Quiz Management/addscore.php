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
        $unm=$_SESSION['username'];
        $id=$_GET['id'];
        $marks=$_GET['score'];
        $level=$_GET['level'];
        $q="select * from registration where username='".$unm."'";
        $res=mysqli_query($conn,$q);
        $r=mysqli_fetch_assoc($res);
        $rank="";
        if($marks==0)
            $rank=6;
        else if($marks==1)
            $rank=5;
        else if($marks==2)
            $rank=4;
        else if($marks==3)
            $rank=3;
        else if($marks==4)
            $rank=2;
        else if($marks==5)
            $rank=1;
        $q1="insert into result(username,sub_id,marks,rank) values ('$unm',$id,$marks,$rank)";
        if(mysqli_query($conn,$q1))
        {
?>
<section class="datatable">
<div class="container">
    <div class="grid" style="height: 300px;">
        <div id="quiz">
            <h1> MY RESULT </h1><br>
            <h2 id="score">Name : <?php echo $r['name']; ?></h2><br>
            <h2 id='score'>Score : <?php echo $marks; ?></h2><br>
            <h2 id="score">Rank : <?php echo $rank; ?></h2><br>
        </div>
        <?php
            }
            else
            {
                echo "<script>alert('Your result is not recorded')</script>";    
            }
        ?>
    </div>
    <table border="1" width="100%">
        <tr>
            <th width="100px">NO.</th>
            <th>QUESTION</th>
            <th width="200px">ANSWER</th>
            </tr>
        <?php
        $qry="select * from quiz_ques where sub_id=".$id." and level=".$level;
        $result=mysqli_query($conn,$qry);
        if(mysqli_num_rows($result)>0)
        {
            $i=1;
            while($row=mysqli_fetch_assoc($result)) 
            {
        ?>
        <tr>
            <td><?php echo $i++; ?></td>
            <td><?php echo $row["ques"]; ?></td>
            <td><?php echo $row["solution"]; ?></td>
        </tr>
        <?php
            }
        }
        else
        {
            echo "<script>alert('Can't Load')</script>";
        }
    } ?>
    </table>
</div>
<br>
<a href="courses.php" style="cursor: pointer;"><button class="button1">PLAY MORE!</button></a>
</section>
<?php
  include_once("footer.php");
?>