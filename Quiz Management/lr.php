<?php
  	include_once("header.php");
?>
<div class="grid">
<div id="quiz">
<h1> Quiz </h1><br>
<p id="progress" align="center"> Question x of y</p>
<hr style="margin-bottom: 20px">
<p id="description"> </p><br>
<p id="question"> </p>

<div class="mybutton">
<button id="bt0"> <span id="choice0"> </span> </button>
<button id="bt1"> <span id="choice1"> </span> </button>
<button id="bt2"> <span id="choice2"> </span> </button>
<button id="bt3"> <span id="choice3"> </span> </button>

</div>
</div>
</div>
<script src="js/quiz.js"> </script>
<script src="js/question.js"> </script>
<script>
function populate() 
{
    if(quiz.isEnded()) 
    {
        showScores();
    }
    else 
    {
    	//show description
        var element = document.getElementById("description");
        element.innerHTML = quiz.getQuestionIndex().description;

        // show question
        var element = document.getElementById("question");
        element.innerHTML = quiz.getQuestionIndex().text;

        // show options
        var choices = quiz.getQuestionIndex().choices;
        for(var i = 0; i < choices.length; i++) 
        {
            var element = document.getElementById("choice" + i);
            element.innerHTML = choices[i];
            guess("bt" + i, choices[i]);
        }
        showProgress();
    }
};

function guess(id, guess) 
{
    var button = document.getElementById(id);
    button.onclick = function() 
    {
        quiz.guess(guess);
        populate();
    }
};

function showProgress() {
    var currentQuestionNumber = quiz.questionIndex + 1;
    var element = document.getElementById("progress");
    element.innerHTML = "Question " + currentQuestionNumber + " of " + quiz.questions.length;
};

function showScores() {
    var gameOverHTML = "<h1>Result</h1>";
    gameOverHTML += "<h2 id='score'> Your scores: " + quiz.score + "</h2>";
    var element = document.getElementById("quiz");
    element.innerHTML = gameOverHTML;
};
var questions=[];
<?php
	$conn=mysqli_connect("localhost:3306","root","","quiz") or die("Connection failed");
	$qry="select * from quiz_ques where sub_id=3 and level=2";
	$result=mysqli_query($conn,$qry);
 	if(mysqli_num_rows($result)>0)
	{
		while($row=mysqli_fetch_assoc($result)) 
    	{
?>
var ar=<?php echo json_encode($row); ?>;
// create questions
questions.push(new Question(ar['compr'],ar['ques'],[ar['op1'],ar['op2'],ar['op3'],ar['op4']],ar['solution']));
<?php
 	  }
    }
?>

var quiz = new Quiz(questions);
populate();
</script>
<?php
  include_once("footer.php");
?>