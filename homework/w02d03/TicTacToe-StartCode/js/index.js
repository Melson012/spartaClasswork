$(function(event){
	
var player1Score = "X";
var player2Score = "O";
var possibleWins = [[0,1,2],[3,4,5],[6,7,8],[1,4,7],[0,4,8],[2,5,8],[0,3,6],[2,4,6]];
var player1Combination = [];
var player2Combination = [];
var compareArray = [];
var win = false;
var display=$(".playerTurn");
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
		 		compareOP(player1Combination,player1Score);
		 	}else {
		 		$(box1).html(player2Score);
		 		$(box1).addClass(player2Score);
		 		i+=1;
		 		player2Combination.push(parseInt($(box1).attr("data-num")))
		 		console.log(player2Combination);
		 		compareOP(player2Combination,player2Score);
			}
		 })
}

function compareOP(valueCom,player){
	
	for(var i=0;i<possibleWins.length;i++){
		logic(valueCom,i,player);

	}
}

function logic(comb,ind,winner){
	win = possibleWins[ind].every(function(element, index){
		return comb.includes(element);

	});

if(win==true){
	$(display.html(winner +" wins"));
}
}



})


	

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