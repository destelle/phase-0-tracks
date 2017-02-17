/**
method: reverse string
input: string value
Method: takes a pasted in string and reverses the word
output: returns a new string in the inverse order of the paramater string

*/
 function reverse(s){
 	 var temp = '';
  for (var i = s.length - 1; i >= 0; i--)
    temp += s[i];
  return temp;
 }


 /*
 Driver Code ======================================================================
 */
 word = "hello"
if (word == word){
   console.log( reverse(word));
}
