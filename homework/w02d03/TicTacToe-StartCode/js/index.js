$(function(event){
	
var player1Score = "X";
var player2Score = "O";
var possibleWins = [[0,1,2]];
var player1Combination = [0,1,2];
var player2Combination = [];
var compareArray = [];
var boxes = $("td");
var X = true;
var O = false;
var i = 0;
var r = 0;
$(boxes).each(function(index,box){
	onClick(box);
})
function onClick(box1){
		 $(box1).on('click', function(){
			if (i%2==0){
		 		$(box1).html(player1Score);
		 		$(box1).addClass(player1Score);
		 		i+=1;
		 		player1Combination.push(parseInt($(box1).attr("data-num")))
		 		console.log(player1Combination);
		 	}else {
		 		$(box1).html(player2Score);
		 		$(box1).addClass(player2Score);
		 		i+=1;
		 		player2Combination.push(parseInt($(box1).attr("data-num")))
		 		console.log(player2Combination);
			}

			// if (player1Combination.lenght <=3 || player2Combination.lenght <=3){
			// 	compareArray.push(player2Combination);
			// 	console.log(compareArray);
			// }
		 })
}
console.log(player1Combination===possibleWins);
//console.log(player1Combination.[0,1,2]);
function logic(){

	possibleWins.each(function(i,val) {
	    player1Combination.each(function(j,val_j) {
	    	
	    	
	    });
	});
	
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