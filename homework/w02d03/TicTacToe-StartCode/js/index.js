$(function(event){
	
var player1Score = null;
var player2Score = null;
var possibleWins = [];
var boxes = $("td");
$(boxes).each(function(index,box){
	onClick(box);
})
function onClick(box1){
		//console.log($(box).attr("data-num"));
		 $(box1).on('click', function(){
		 	console.log($(box1).attr("data-num"))
		 })
}





});


	

// $(function (event){

// // define the variables 











// // ————————————————————————— 

// // Logic:
// // 3x3 boxes = div

// // each has id= 1,2,3 etc till 9

// // possible win combination =  123 | 456  | 789 | 
// // 					   159 | 357 | 147 | 258 | 369
 


// //  ——————————————————— —— ———
// // Function checkWin

// // function for X

// // function for O



// })