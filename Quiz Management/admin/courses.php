<?php
  include_once("header.php");
?>
<script type="text/javascript">
function openForm(x) 
{
  document.getElementById("data").value=x;
  document.getElementById("myForm").style.display="block";
} 
function closeForm()
{
  document.getElementById("myForm").style.display="none";
} 
</script>

<div class="form-popup" id="myForm">
<form action="quiz.php" method="POST" class="form-container">
<span class="close" onclick="closeForm()">&times;</span>
<h2 style="color: white;text-align: center;">Choose Level</h2>
<input type="hidden" name="sub" id="data" value="0">
<select name="level">
  <option value="1">Easy</option>
  <option value="2">Medium</option>
  <option value="3">Hard</option>
</select>
<button type="submit" class="btn" name="submit">DISPLAY</button>
<button type="button" class="btn" onclick="closeForm()" style="background-color: red;">CLOSE</button>
</form> 
</div>

<section class="courses">
  <div class="container">
    <h1><span class="highlight">LEARN</span> QUIZ</h1>
      <br>
      <div class="subject">
      <div class="ps1">
      <img src="../images/technical.jpg">
      </div>
      <div class="btc">
        <button id="btc1" onclick="openForm(this.value)" value="C language">C language</button>
        <button id="btc1" onclick="openForm(this.value)" value="Data Structure">Data Structure</button>
        <button id="btc1" onclick="openForm(this.value)" value="C++">C++</button>
        <button id="btc1" onclick="openForm(this.value)" value="Java">Java</button>
        <button id="btc1" onclick="openForm(this.value)" value="Python">Python</button>
        <button id="btc1" onclick="openForm(this.value)" value="Networking">Networking</button>
        <button id="btc1" onclick="openForm(this.value)" value="Database Mangement System">Database Mangement System</button>
      </div>
    </div>
    <div class="subject">
    <div class="ps1">
    <img src="../images/english.png">
    </div>
    <div class="btc">
      <button id="btc1" onclick="openForm(this.value)" value="Synonyms">Synonyms</button>
      <button id="btc1" onclick="openForm(this.value)" value="Antonyms">Antonyms</button>
      <button id="btc1" onclick="openForm(this.value)" value="Sentence Correction">Sentence Correction</button>
      <button id="btc1" onclick="openForm(this.value)" value="Spellings">Spellings</button>
    </div>
    </div>
    <div class="subject">
      <div class="ps1">
      <img src="../images/aptitude.jpg">
      </div>
      <div class="btc">
        <button id="btc1" onclick="openForm(this.value)" value="Arithmetic">Arithmetic</button>
        <button id="btc1" onclick="openForm(this.value)" value="Data Interpretation">Data Interpretation</button>
      </div>
    </div>
    <div class="subject">
    <div class="ps1">
    <img src="../images/gk.png">
    </div>
    <div class="btc">
      <button id="btc1" onclick="openForm(this.value)" value="Current Affairs">Current Affairs</button>
      <button id="btc1" onclick="openForm(this.value)" value="Basic GK">Basic GK</button>
    </div>
    </div>
    <div class="subject">
      <div class="ps1">
      <img src="../images/reasoning.png">
      </div>
      <div class="btc">
        <button id="btc1" onclick="openForm(this.value)" value="Logical Reasoning">Logical Reasoning</button>
      </div>
    </div>
</div>
</section>
<?php
  include_once("footer.php");
?>