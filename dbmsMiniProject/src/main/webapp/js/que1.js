const questions = [
        {
        question: "What is the type of your Pokemon?",
        optionA: "Electric ",
        optionB: "Ice ",
        optionC: "Fighting ",
        optionD: "Poison",
        optionE: "None"
    },

    {
        question: "What is the type of your Pokemon?",
        optionA: "Normal",
        optionB: "Fire",
        optionC: "Water",
        optionD: "Grass",
        optionE: "None" 
    },

    {
        question: "What is the type of your Pokemon?",
        optionA: "Ground ",
        optionB: "Flying ",
        optionC: "Psychic",
        optionD: "Bug",
        optionE: "None" 
    },

    {
        question: "What is the type of your Pokemon?",
        optionA: "Rock",
        optionB: "Ghost",
        optionC: "Dark",
        optionD: "Dragon",
        optionE: "None"
    },

    {
        question: "What is the type of your Pokemon?",
        optionA: "Fairy",
        optionB: "Steel",
        optionC: "Fire",
        optionD: "Dark",
        optionE: "None"
    },

]

let shuffledQuestions = [] //empty array to hold shuffled selected questions out of all available questions

function handleQuestions() { 
    //function to shuffle and push 10 questions to shuffledQuestions array
//app would be dealing with 10questions per session
    while (shuffledQuestions.length <= 5) {
        const random = questions[Math.floor(Math.random() * questions.length)]
        if (!shuffledQuestions.includes(random)) {
            shuffledQuestions.push(random)
        }
    }
}


let questionNumber = 1 //holds the current question number
let playerScore = 0  //holds the player score
let wrongAttempt = 0 //amount of wrong answers picked by player
let indexNumber = 0 //will be used in displaying next question

// function for displaying next question in the array to dom
//also handles displaying players and quiz information to dom
function NextQuestion(index) {
    handleQuestions()
    const currentQuestion = shuffledQuestions[index]
    document.getElementById("question-number").innerHTML = questionNumber
    //document.getElementById("player-score").innerHTML = playerScore
    document.getElementById("display-question").innerHTML = currentQuestion.question;
    document.getElementById("option-one-label").innerHTML = currentQuestion.optionA;
    document.getElementById("option-two-label").innerHTML = currentQuestion.optionB;
    document.getElementById("option-three-label").innerHTML = currentQuestion.optionC;
    document.getElementById("option-four-label").innerHTML = currentQuestion.optionD;
	document.getElementById("option-five-label").innerHTML = currentQuestion.optionE;
}

//called when the next button is called
function handleNextQuestion() {
  // Get the selected option
  const selectedOption = document.querySelector('input[name="option"]:checked').value;

  // Redirect to a different link depending on the selected option
  if (selectedOption === 'option-one') {
    window.location.href = 'index.jsp';
  } else if (selectedOption === 'option-two') {
    window.location.href = 'login.jsp';
  } else if (selectedOption === 'option-three') {
    window.location.href = 'https://www.example.com/option3';
  } else if (selectedOption === 'option-four') {
    window.location.href = 'https://www.example.com/option4';
  } else if (selectedOption === 'option-five') {
    window.location.href = 'https://www.example.com/option5';
  }
}

//sets options background back to null after display the right/wrong colors
function resetOptionBackground() {
    const options = document.getElementsByName("option");
    options.forEach((option) => {
        document.getElementById(option.labels[0].id).style.backgroundColor = ""
    })
}

// unchecking all radio buttons for next question(can be done with map or foreach loop also)
function unCheckRadioButtons() {
    const options = document.getElementsByName("option");
    for (let i = 0; i < options.length; i++) {
        options[i].checked = false;
    }
}

//closes score modal, resets game and reshuffles questions
function closeScoreModal() {
    questionNumber = 1
    playerScore = 0
    wrongAttempt = 0
    indexNumber = 0
    shuffledQuestions = []
    NextQuestion(indexNumber)
    document.getElementById('score-modal').style.display = "none"
}

//function to close warning modal
function closeOptionModal() {
    document.getElementById('option-modal').style.display = "none"
}