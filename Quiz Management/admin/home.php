<?php
  include_once("header.php");
?>
<section id="showcase" 
style="background: url('../images/slide4.jpg') no-repeat -110px -70px; height: 500px;">
  <div class="container">
    <h1 style="padding-top: 90px; padding-left: 120px; color: #103a4f;">
    Welcome<?php 
    	if(isset($_SESSION['admin']))
    		echo ", ".$_SESSION['admin']; ?>
  </h1>
  </div>
</section>
<?php
  include_once("footer.php");
?>