puts "Digite seu nome:"
nome = gets.chomp
puts "Deseja repetir quantas vezes?"
repeat = gets.chomp.to_i

i = 1
while i <= repeat # Enquanto for verdadeiro
    puts "Seu nome é #{nome} e foi repetido #{i} vezes" 
    i += 1
end

# i será = repeat

until i <= 0 # Enquanto for falso
    puts "retornando... - #{i}"
    i -= 1 # Subtraindo até que retorne a 1
end

puts "fim!"