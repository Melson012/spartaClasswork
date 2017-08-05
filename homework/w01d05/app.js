

// Edited by Melson.Fernandes

alert("Welcome to Rock, Paper, Scissors Game");
// intro
function main(){
alert("Welcome to Rock, Paper, Scissors Game");
game1();

}


// Records the points-(needs to be outside function)
var userPoints = 0;
var ComputerPoints = 0;



// Game function
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

if (userPoints == 5){
	alert("User wins with "+userPoints+" ponits");
	userPoints = 0;
	ComputerPoints = 0;
	main();

}else if (ComputerPoints == 5){
	alert("Computer wins with "+ComputerPoints+" ponits");
	userPoints = 0;
	ComputerPoints = 0;
	main();
}else{
	game1();
	
}



game1();


}
main();







