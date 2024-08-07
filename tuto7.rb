# create a clock 
# when user input is 9 for hour. Degree will be 270
# when user input is 30 for minute. Degree will be 90
# whenever the minute increase degree of hour will be also increase
  

def calculate_clock(hour, minute)
    minute_degree = minute * 6
    hour_degree = (hour * 30) + (minute * 0.5)

    return hour_degree, minute_degree
end

def clock
    begin
        puts "Enter Hour: "
        hour = gets.chomp.to_i
        puts "Enter Minute: "
        minute = gets.chomp.to_i

        if !(1..12).include?(hour) || !(0..59).include?(minute)
            puts "Invalid Input! Hour should be between 1-12 & minute should be between 0-59!"
            return
        end

        hour_degree, minute_degree = calculate_clock(hour, minute)

        puts "Hour Degree: #{hour_degree}"
        puts "Minute Degree: #{minute_degree}"
    rescue
        puts "Please enter valid value!"
    end
end

clock