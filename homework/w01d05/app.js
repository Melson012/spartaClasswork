// Edited by Melson.Fernandes
alert("Welcome to Rock, Paper, Scissors Game");

var userPick = prompt("Type in your choice | Rock| Paper| Scissors");

var computerPick = Math.random();
// Math.Random range of 0-1. ()
if (computerPick < 0.33 ) {

	alert("Rock");

} else if (computerPick <=0.66){

	alert("Paper");

}else {
	alert("Scissors");
}