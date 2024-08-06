def diamond(height)
    i = 1
    while i <= height
        puts " " * (height - i) + "*" * (2 * i - 1)
        i += 1
    end
    
    i = height - 1
    while i >= 1
        puts " " * (height -i ) + "*" * (2 * i - 1)
        i -= 1
    end
end

puts diamond(6)