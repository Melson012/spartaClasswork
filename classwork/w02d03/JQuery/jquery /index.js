$(function (event){
	//console.log('DOM is ready');
	
	var count = $("#count")
	//console.log(count)

	var items = $("li");
	//console.log(items);

	var newIteam = $("li.done");
	//console.log(newIteam);


	// var li = $("<li>newIteam</li>");
	$("#list").prepend($("<li>MElsonnnn</li>"));



	var thingsToDo = ["Eat","Watch Movies","Eat","whaaa","Watch Movies","Eat"];

	$(thingsToDo).each(function(index,thingsToDo){
		//console.log(thingsToDo);
	})


	//$("#count").html(100);

	$("#count").css('color','blue');

	$("li").addClass('done')

	$("#count").html(10).css('color','pink');

	var button = $('<button id="mybutton">Click me</button>')
	$('body').append(button)

	$('#mybutton').on('click', function(){
		$('#mybutton').css('background-color','red')
	})


})