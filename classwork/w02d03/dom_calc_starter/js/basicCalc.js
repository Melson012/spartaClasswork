// Setup initial state variables
// numbers
var numbers = document.getElementsByClassName('number');
// operators
var operators = document.getElementsByClassName('operator');
// equals
var equals = document.getElementsByClassName('eq')[0];
// clear
var clear = document.getElementsByClassName('clear')[0];
// display
var display = document.getElementsByClassName('display')[0];
// variable for frist numberin cal
var first_number=null;
// variable for second numberin cal
var second_number=null;
// variable operator
var operator = null;
// variable for answer
var answer=null;
// ---------------------seudocode-------------------\\
// setup eventListeners
function setUpListeners(){
	//numbers event listeners
	for (var i =0; i<numbers.length;i++) {
		numbers[i].addEventListener('click', updateAndDisplayNum);
	}
	//operators event listeners
	for (var i =0; i<operators.length;i++) {
		operators[i].addEventListener('click', updateAndDisplayOp);
	}
	//equals event listeners
	equals.addEventListener('click', function(){
		calculation(first_number,operator,second_number);
	});
	//clear event listeners
	clear.addEventListener('click', clearCalculator);
	//display event listeners
}
// function for calculator 
// addition
function add(num1,num2){
	return num1+num2;
}
// subtract
function sub(num1,num2){
	return num1-num2;
}
// divsion
function div(num1,num2){
	return num1/num2;
}
// multiplication
function mul(num1,num2){
	return num1*num2;
}
// ---------------------seudocode-------------------\\
// calculation
function calculation(firstNumber,operator,secondNumber){
	switch (operator){
		case "+":
			display.value = add(firstNumber,secondNumber);
			break;

		case "-":
			display.value = sub(firstNumber,secondNumber);
			break;

		case "/":
			display.value = div(firstNumber,secondNumber);
			break;

		case "x":
			display.value = mul(firstNumber,secondNumber);
			break;
	}
}
// ---------------------seudocode-------------------\\
// clear the calculator
function clearCalculator(){
	
	first_number = null;
	second_number =  null;
	operator = null;
	display.value = "";
}
// ---------------------seudocode-------------------\\
// display and store the buttons
function updateAndDisplayNum(){
	var butn = this.value;
	display.value = butn;

	if (first_number === null){
		first_number = parseFloat(butn);

	}else { 
		second_number=parseFloat(butn);
	}
}
//display and store operators
function updateAndDisplayOp(){
	operator = this.value
	display.value = operator;
}
setUpListeners();