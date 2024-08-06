def array
    puts "Enter array size: "
    array_size = gets.to_i
  
    animal_array = []
  
    puts "Enter animal name:"
    array_size.times do |i|
        print "Animal #{i + 1}: "
        animal = gets.chomp
        animal_array << animal
    end
  
    sort_array = animal_array.sort
    puts "Sorted animal array:"
    puts sort_array
  
    animal_counts = Hash.new(0)

    for animal in animal_array
        animal_counts[animal] += 1
    end

    puts "Count of each animal name:"
    animal_counts.each do |animal, count|
        puts "#{animal}: #{count}"
    end
  
    unique_array = animal_array.uniq
    puts "Array with duplicates removed:"
    puts unique_array
  
    reverse_array = unique_array.reverse
    puts "Reversed array:"
    puts reverse_array
end
  
array
  