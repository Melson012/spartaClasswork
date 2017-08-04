
var user = prompt("choose from the options | a for Basic calculator | b for BMI calculator | c for Mortage calculator");




if (user == "a"){

	var number1 = parseInt(prompt("Enter a number 1: "));
	var operator = prompt("Enter a operator (+ | - | / | *): ");
	var number2 = parseInt(prompt("Enter a number 2: "));	

	var result = null;

	
	
	switch (operator) {

		case "+": 

			result = number1 + number2;
			alert(number1 + "+" + number2 +"=" + result);
			break;

		case "-":
			result = number1 - number2;
			alert(number1 + "-" + number2 +"=" +result);
			break;

		case "/":
			result = number1 / number2;
			alert(number1 + "/" + number2+ "=" +result);
			break;

		case "*":
			result= number1 * number2;
			alert(number1 + "*" + number2+ "="+result);
			break;
	}


}

if (user == "b"){

	var bodyW = parseInt(prompt("Enter your body weight(kg): "));
	var uheight = parseFloat(prompt("Enter your height(m): "));


	var bmi = null;

	var squared = uheight**2;

	bmi = bodyW / squared;

	if (bmi < 20 ) {
		alert("underweight "+bmi);


	} else if (bmi <=25 ) {
		alert("Normal weight "+bmi);

	}else if (bmi <=30) {
		alert("slightly Overweight "+bmi);

	}else if (bmi >30) {
		alert("Overweight "+bmi);

	}

	

}


if (user == "c"){

	
	var m ;
	var loan = parseFloat(prompt("Enter your loan Amount: "));
	var interestR = parseFloat(prompt("Enter your Interest Rate: "));
	var yearly = parseFloat(prompt("Enter your yearly period: "));
	var n = yearly*12;

	var InterestM = interestR/100/12;

	var Mortage = monthlypay(loan,n,InterestM);

	alert("Your Mortage Total: "+ Mortage);

	function monthlypay(loan,n,InterestM) {
		return loan * InterestM * (Math.pow(1+InterestM, n)) / (Math.pow(1+InterestM,n) -1);

	}
}










