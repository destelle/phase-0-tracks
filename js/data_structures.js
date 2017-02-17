var colors = ["blue", "red", "yellow", "orange"];
var names = ["ED", "Daisy", "Bolt", "Sam"];

colors.push("purple");
names.push("Hank");

console.log(colors);
console.log(names);
var horse = {};
for(var i =  0; i < colors.length; i++){
	horse[names[i]] = colors[i];
}
console.log(horse);