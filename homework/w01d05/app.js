

// Edited by Melson.Fernandes

function main() {
alert("Welcome to Rock, Paper, Scissors Game");
game1();

}

// function userWins(i){
// 	var i = 0;
// 	if (i == 5) {alert("user wins");}
	

// }
// function compWins(i){
// 	var i = 0;
// 	if (i == 5) {alert("computer wins");}
	
// }
var userPoints = 0;
var ComputerPoints = 0;


if (userPoints == 5){
	alert("User wins with"+userPoints+"ponits")


}else if (ComputerPoints == 5){
	alert("Computer wins with"+ComputerPoints+"ponits")
	
}else{
	game1();
	
}



function game1(){
var game = null;
var userPick = prompt("Type in your choice | Rock| Paper| Scissors").toLowerCase();
var randomCompu = Math.random();
// Math.Random range of 0-1. ()



if (userPick === "rock"){

	game = 1;
}else if (userPick === "paper"){
	game = 2;

}else if (userPick === "scissors") {
	game = 3;
}else{
	alert("Choose from the three only!");
}



var computerPick= null;
var namepick=null;

if (randomCompu < 0.33 ) {
	computerPick = 1; //Rock
	namepick="Rock";
}else if (randomCompu <=0.66){
	computerPick = 2; //Paper
	namepick="Paper";
}else {
	computerPick = 3; //Sissors
	namepick="Sissors";
}






// var userPoints = 0;
// var ComputerPoints = 0;

// Draw
if (computerPick == 1 && game == 1 ){
	alert("It is a Draw: "+namepick+" vs "+userPick);
	alert("User: "+ userPoints+" | | "+"Computer Points: "+ComputerPoints);
	
} else if (computerPick == 2 && game == 2) {
	alert("It is a Draw: "+namepick+" vs "+userPick);
	alert("User: "+ userPoints+" | | "+"Computer Points: "+ComputerPoints);
	
} else if (computerPick == 3 && game == 3){
	alert("It is a Draw: "+namepick+" vs "+userPick);
	alert("User: "+ userPoints+" | | "+"Computer Points: "+ComputerPoints);
	
}


if (computerPick == 1 && game == 2) {
	userPoints+=1;
	//countuser(i++);
	alert("User wins: "+userPick+" vs "+namepick);
	alert("User: "+ userPoints+" | | "+"Computer Points: "+ComputerPoints);
	
	
	
}else if (computerPick == 1 && game == 3) {
	ComputerPoints+=1;
	//countcomp(i++);
	alert("Computer wins: "+namepick+" vs "+userPick);
	alert("User: "+ userPoints+" | | "+"Computer Points: "+ComputerPoints);	
	
}




if (computerPick == 2 && game == 1) {
	ComputerPoints+=1;
	//countcomp(i++);
	alert("Computer wins: "+namepick+" vs "+userPick);
	alert("User: "+ userPoints+" | | "+"Computer Points: "+ComputerPoints);
	
	
	
}else if (computerPick == 2 && game == 3) {
	userPoints+=1;
	//countuser(i++);
	alert("User wins: "+userPick+" vs "+namepick);
	alert("User: "+ userPoints+" | | "+"Computer Points: "+ComputerPoints);
	
	
	
}else if (computerPick == 3 && game == 2) {
	ComputerPoints+=1;
	//countcomp(i++);
	alert("Computer wins: "+namepick+" vs "+userPick);
	alert("User: "+ userPoints+" | | "+"Computer Points: "+ComputerPoints);
	
	

}else if (computerPick == 3 && game == 1) {
	userPoints+=1;
	//countuser(i++);
	alert("User wins: "+userPick+" vs "+namepick);
	alert("User: "+ userPoints+" | | "+"Computer Points: "+ComputerPoints);
	
	
}



game1();


}
 main();







