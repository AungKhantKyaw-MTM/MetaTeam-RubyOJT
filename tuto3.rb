
# Ask user to enter first number.
# Ask user to choose the operator. (+,-,*,/).
# Ask user to enter second number.
# Print the result. Ask user decision to (stop or continue)
# If user choose continue, repeat the process.
# If user choose stop, stop the process.



def calculate
    puts "Enter First Number: "
    first_number = gets.chomp.to_f
    puts "Select Operator (+, -, *, /): "
    operator = gets.chomp
    puts "Enter Second Number: "
    second_number = gets.chomp.to_f
  
    case operator
    when "+"
        puts (first_number + second_number)
    when "-"
        puts (first_number - second_number)
    when "*"
        puts (first_number * second_number)
    when "/"
        if second_number != 0
            puts (first_number / second_number)
        else
            puts "Error: Division by zero is not allowed."
        end
    else
        puts "Invalid Operator"
    end
end
  
continue = "yes"
while continue == "yes"
    calculate
    puts "Do you want to perform another calculation? (yes/no)"
    continue = gets.chomp.downcase
end
  