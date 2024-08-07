
puts "Enter Title: "
title = gets.chomp
puts "Enter Notes: "
note = gets.chomp
puts "Do you want to save file? save / cancel"
choice = gets.chomp

file = "file.txt"

if choice == "save"
    begin
        File.open(file, 'w') do |file|
            file.puts "Title: #{title}"
            file.puts "Notes: #{note}"
        end
        
        File.open(file, 'r') do |file|
            data = file.read
            puts "File data: "
            puts data
        end
    rescue Errno::ENOENT
        puts "File Not Found!"
    end
else
    puts "Action Cancelled!"
end
