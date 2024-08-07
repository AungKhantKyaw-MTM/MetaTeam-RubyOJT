
# Calculate age by user input date.

# Ask user for their birthday.
# Calculate their age according to the birthdate.
# Print Child for age younger than 19. Print(18, child).
# Print Adult otherwise. Print(19, Adult).


require 'date'

def calculate_age(date_of_birth)
    today = Date.today
    age = today.year - date_of_birth.year

    if today.month < date_of_birth.month || (today.month == date_of_birth.month && today.day < date_of_birth.day)
        age -= 1
    end
    puts ("Your age is " + age.to_s)
end

puts "Enter Birth Date: "
birth_date = gets.chomp()
puts "Enter Birth Month: "
birth_month = gets.chomp()
puts "Enter Birth Year: "
birth_year = gets.chomp()

dob = Date.new(birth_year.to_i, birth_month.to_i, birth_date.to_i) 
puts calculate_age(dob)
