console.log("The script is running!");
var img = document.getElementById("light");
img.style.visibility = 'hidden';

function addHidden(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  showImage();

 
}

function showImage(){
	var img = document.getElementById("light");
	var img2 = document.getElementById("light-off");
	if (img.style.visibility == 'visible'){
		img.style.visibility = 'hidden';
		img2.style.visibility = 'visible';
	}
	else{
		img.style.visibility = 'visible';
		img2.style.visibility = 'hidden';
	}
}



var light_switch = document.getElementById("switch_button");
light_switch.addEventListener("click", addHidden);