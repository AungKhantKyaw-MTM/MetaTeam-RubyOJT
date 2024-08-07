# # Ask user to enter title and notes.
# # After that, ask user to save/cancel.

# # If user want to save, write data into file
# # Try to open to saved file.
# # If we got File not found error, catch the error with Ruby exception and rescue block and 
# # print "file not found on the screen"
# # Else, print "file data"

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
