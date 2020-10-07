function Quiz(questions) {
    this.score = 0;
    this.questions = questions;
    this.questionIndex = 0;
}

Quiz.prototype.getQuestionIndex = function() {
    return this.questions[this.questionIndex];
}

Quiz.prototype.isAvailable = function() {
    return this.questions.length;
}

Quiz.prototype.guess = function(answer) {
    if(this.getQuestionIndex().isCorrectAnswer(answer)) {
        this.score++;
    }

    this.questionIndex++;
}

Quiz.prototype.isEnded = function() {
	if(this.questions.length!=0)
	    return this.questionIndex === this.questions.length;
	else
	{
		alert("Quiz is not Available");
		window.location="courses.php";
	}
}
