document.addEventListener('DOMContentLoaded', function() {
// Setup initial state variables
var operator = '';
var display = document.getElementsByClassName("display")[0];
var number1 = 0;
var number2 = 0;
var result = 0;
function calculate(){
// numbers
var num = getInputsByValue("1")[0];
num.addEventListener('click',function(){
	display.value+=num.value;
})
var num2 = getInputsByValue("2")[0];
num2.addEventListener('click',function(){
	display.value+=num2.value;
})
var num3 = getInputsByValue("3")[0];
num3.addEventListener('click',function(){
	display.value+=num3.value;
})
var num4 = getInputsByValue("4")[0];
num4.addEventListener('click',function(){
	display.value+=num4.value;
})
var num5 = getInputsByValue("5")[0];
num5.addEventListener('click',function(){
	display.value+=num5.value;
})
var num6 = getInputsByValue("6")[0];
num6.addEventListener('click',function(){
	display.value+=num6.value;
})
var num7 = getInputsByValue("7")[0];
num7.addEventListener('click',function(){
	display.value+=num7.value;
})
var num8 = getInputsByValue("8")[0];
num8.addEventListener('click',function(){
	display.value+=num8.value;
})
var num9 = getInputsByValue("9")[0];
num9.addEventListener('click',function(){
	display.value+=num9.value;
})
var num0 = getInputsByValue("0")[0];
num0.addEventListener('click',function(){
	display.value+=num0.value;
})
// operators
var plus = getInputsByValue("+")[0];
plus.addEventListener('click',function(){
	operator= '+';
	number1 = display.value;
	display.value=null;
	console.log(number1);
})
var minus = getInputsByValue("-")[0];
minus.addEventListener('click',function(){
	operator= '-';
	number1 = display.value;
	display.value=null;
	console.log(number1);
})
var div = getInputsByValue("/")[0];
div.addEventListener('click',function(){
	operator= '/';
	number1 = display.value;
	display.value=null;
	console.log(number1);
})
var mul = getInputsByValue("x")[0];
mul.addEventListener('click',function(){
	operator= 'x';
	number1 = display.value;
	display.value=null;
	console.log(number1);
})
var clear = getInputsByValue("c")[0];
clear.addEventListener('click',function(){
	result = 0;
	number1=0;
	number2=0;
	display.value=null;
})
// Evaluating the type of operators to use 
var equals = getInputsByValue("=")[0];
equals.addEventListener('click',function(){
	number2 = display.value;
if (operator== "+") {
	result = parseInt(number1)+parseInt(number2);
}else if (operator== "-") {
	result = parseInt(number1)-parseInt(number2);
}else if (operator=="/") {
	result = parseInt(number1)/parseInt(number2);
}else if (operator=="x") {
	var equals = getInputsByValue("=")[0];
	result = parseInt(number1)*parseInt(number2);
}
display.value=result;
})
}
function getInputsByValue(value){
    var allInputs = document.getElementsByTagName("input");
    var results = [];
    for(var x=0;x<allInputs.length;x++)
        if(allInputs[x].value == value)
            results.push(allInputs[x]);
    return results;
}
calculate();
})