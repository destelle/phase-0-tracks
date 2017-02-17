
function phrase (arr){
  var lgth = 0;
var longest;

for(var i=0; i < arr.length; i++){
    if(arr[i].length > lgth){
         lgth = arr[i].length;
        longest = arr[i];
    }      
}

return longest
}

var arr = ["long phrase","longest phrase","longer phrase"]

console.log(phrase(arr))

function compare(obj1,obj2){
  if(obj1[0] == obj2[0] || obj1[1] == obj2[1]){
    return true
  }
  
  else return false
}

var obj1 = {name: "Steven", age: 54}
var obj2 = {name: "Tamir", age: 54}
console.log(compare(obj1,obj2))

function build_array(num){
  var arr = []
 for (i = 0; i < num; i++) { 
    var temp = Math.floor(Math.random() * 10) + 1  
    arr[i] = ran_word(10);
  }
return arr
}

function ran_word(num){
  
    var text = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";

    for( var i=0; i < num; i++ )
        text += possible.charAt(Math.floor(Math.random() * possible.length));

    return text;
}

  
console.log(build_array(4))
for(var k=0; i < 10; k++){
	var temp = build_array(4);
	console.log(temp);
	console.log(phrase(temp));
}