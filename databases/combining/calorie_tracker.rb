require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("calories.db")
db.results_as_hash = true
create_table = <<-SQL
	CREATE TABLE IF NOT EXISTS calories(
	id INTEGER PRIMARY KEY,
	meal VARCHAR(255),
	calories_c INT

	)
SQL

def create_calories(db,m,c)
	db.execute("INSERT INTO calories (meal,calories_c) VALUES (?,?)", [m,c])
end
db.execute(create_table)

continue = true
while continue == true
	puts "What type of meal was it? (breakfast,lunch,dinner,snack)"
	meal_temp = gets.chomp()
	puts "How many calories was in the meal?"
	cal_temp = gets.chomp().to_i

	create_calories(db,meal_temp,cal_temp)

	puts "Would you like to continue?(Y or N)"
	holder = gets.chomp()
	case holder
		when 'n','N','no','No'
			continue=false;
		
	end

end

calories = db.execute("SELECT * FROM calories")
calories.each do |c|
	puts "you had #{c['calories_c']} calories for #{c['meal']} "
end


