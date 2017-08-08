// var selected = document.querySelectorAll('li.selected');
// console.log(selected);


// for (var i=0; i<selected.length;i++){
// selected[i].innerHTML = "Hello melson";
// }

// // adding a new element:
// var pTag = document.createElement('p');
// pTag.innerHTML = "Helloooooooooo new P tag";
// document.getElementById('wrapper').appendChild(pTag);

var list2 = ["Melosn","Naz","Dyno","Will","Jeo","kane"];


var ul = document.getElementById('list');
console.log(ul);
for(var i =0; i < list2.length; i++){
		
	addNewLi(list2[i]);
}

var allTheList = document.getElementsByTagName('li');
for (var i =0; i < allTheList.length; i++){
	if(i % 2 ===0){
		allTheList[i].classList.add('even');

	}
}

var countSpan = document.getElementById('count')
countSpan.innerHTML = allTheList.length;


function addNewLi(text) {
	// body...
	 var liTag = document.createElement('li');
	 liTag.innerHTML = text;
	 ul.appendChild(liTag);
	 console.log(liTag);
}
// addNewLi('dsfsdf');