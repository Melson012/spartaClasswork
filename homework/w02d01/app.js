var userPoints = 0;
var ComputerPoints = 0;
var computer = ["rock","paper","scissors","spock","lizard"]
function run(){
	alert("Welcome to Rock, Paper, Scissors, Spock, Lizard Game");
	game();
}
function gameOver(){
	if (userPoints == 3){
	alert("User wins with "+userPoints+" ponits");
	userPoints = 0;
	ComputerPoints = 0;
	run();
}else if (ComputerPoints == 3){
	alert("Computer wins with "+ComputerPoints+" ponits");
	userPoints = 0;
	ComputerPoints = 0;
	run();
}else{
	game();	
}
}
function status(){
alert("User points: "+userPoints+"\n"+"Compuer Points: "+ComputerPoints);
}
function game(){
var userPick = parseInt(prompt("Pick from below:\n 1. Rock\n 2. Paper\n 3. Scissors\n 4. Spock\n 5. Lizard\n 6. Check Score"));
var compuChoice = computer[Math.floor(computer.length * Math.random())];
// alert("computer choice: "+compuChoice);
logic(userPick,compuChoice);
}
function logic(userP,compuC){
	switch (userP){
		case 1:
			if (compuC === "lizard",compuC === "scissors") {
				alert("User Wins!\n"+compuC+" vs "+"rock\n");
				status();
				gameOver();
			}else if (compuC === "rock" ){
				alert("Draw\n"+"Computer Choice: "+compuC+" vs "+"rock"+"\n");
				status();
				gameOver();
			}else {
				alert("you lose\n"+"Computer Choice: "+compuC+" vs "+"rock"+"\n");
				ComputerPoints+=1;
				gameOver();}
			break;
		case 2:
			if (compuC === "spock" || compuC === "rock") {
				alert("User Wins!\n"+compuC+" vs "+"paper"+"\n");
				userPoints+=1;
				status();
				gameOver();
			}else if (compuC === "paper" ){
				alert("Draw\n"+"Computer Choice: "+compuC+" vs "+"paper"+"\n");
				status();
				gameOver();
			}else {alert("you lose\n"+"Computer Choice: "+compuC+" vs "+"paper"+"\n");ComputerPoints+=1;status();gameOver();}
			break;
		case 3:
			if (compuC === "paper" || compuC === "lizard") {
				alert("User Wins!\n"+compuC+" vs "+"scissors"+"\n");
				userPoints+=1;
				status();
				gameOver();
			}else if (compuC === "scissors" ){
				alert("Draw\n"+"Computer Choice: "+compuC+" vs "+"scissors"+"\n");
				status();
				gameOver();
			}else {alert("you lose\n"+"Computer Choice: "+compuC+" vs "+"scissors"+"\n");ComputerPoints+=1;status();gameOver();}
			break;
		case 4:
			if (compuC === "rock" || compuC === "scissors") {
				alert("User Wins!\n"+"Computer Choice: "+compuC+" vs "+"spock"+"\n");
				userPoints+=1;
				status();
				gameOver();
			}else if (compuC === "spock" ){
				alert("Draw\n"+"Computer Choice: "+compuC+" vs "+"spock"+"\n");
				status();
				gameOver();
			}else {alert("you lose\n"+"Computer Choice: "+compuC+" vs "+"spock"+"\n");ComputerPoints+=1;status();gameOver();}
			break;
		case 5:
			if (compuC === "spock" || compuC === "paper") {
				alert("User Wins!\n"+compuC+" vs "+"lizard"+"\n");
				userPoints+=1;
				gameOver();
			}else if (compuC === "lizard" ){
				alert("Draw\n"+"Computer Choice: "+compuC+" vs "+"lizard"+"\n");
				status();
				gameOver();
			}else {alert("you lose\n"+"Computer Choice: "+compuC+" vs "+"lizard"+"\n");ComputerPoints+=1;status();gameOver();}
			break;
		case 6:
			status();
			game();
			break;
		default: alert("invaid Input"); game();
	}
}
run();