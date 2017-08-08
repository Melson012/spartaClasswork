document.addEventListener('DOMContentLoaded', function() {
// Setup initial state variables


var display = document.getElementsByClassName("display")[0];
// for (var i =0; i<button1.length; i++) {
// 	console.log(button1[i].value);
// }
// Variables defined in global scope, not the best idea

// Setup eventListeners

var buttons = document.getElementsByClassName('number');
	



var num = getInputsByValue("1")[0];
console.log(num.value)
num.addEventListener('click',function(){
	display.value+=num.value;
})

var num2 = getInputsByValue("2")[0];
console.log(num2.value)
num2.addEventListener('click',function(){
	display.value+=num2.value;
})

var num3 = getInputsByValue("3")[0];
console.log(num3.value)
num3.addEventListener('click',function(){
	display.value+=num3.value;
})

var num4 = getInputsByValue("4")[0];
console.log(num4.value)
num4.addEventListener('click',function(){
	display.value+=num4.value;
})

var num5 = getInputsByValue("5")[0];
console.log(num5.value)
num5.addEventListener('click',function(){
	display.value+=num5.value;
})

var num6 = getInputsByValue("6")[0];
console.log(num6.value)
num6.addEventListener('click',function(){
	display.value+=num6.value;
})

var num7 = getInputsByValue("7")[0];
console.log(num7.value)
num7.addEventListener('click',function(){
	display.value+=num7.value;
})

var num8 = getInputsByValue("8")[0];
console.log(num8.value)
num8.addEventListener('click',function(){
	display.value+=num8.value;
})

var num9 = getInputsByValue("9")[0];
console.log(num9.value)
num9.addEventListener('click',function(){
	display.value+=num9.value;
})

var num0 = getInputsByValue("0")[0];
console.log(num0.value)
num0.addEventListener('click',function(){
	display.value+=num0.value;
})



function getInputsByValue(value){
    var allInputs = document.getElementsByTagName("input");
    var results = [];
    for(var x=0;x<allInputs.length;x++)
        if(allInputs[x].value == value)
            results.push(allInputs[x]);
    return results;
}

// Functions for calculator
})