
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