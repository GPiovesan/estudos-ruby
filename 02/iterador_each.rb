a = [1, 4, 6, 89, 0]

a.each { |element| 
    puts element
    puts "========"
}

a.each do |element|
    puts element
    puts element * 2
    puts element * 3
    puts "--------"
end