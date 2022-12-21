=begin

    .to_i
    .to_f
    .to_s => Realização do cast ou coerção das variáveis
    
=end

puts "Digite sua idade:"
idade = gets.chomp.to_i # Registrando a entrada do teclado em Integer
idadeNextYear = idade + 1
puts "Sua idade ano que vem será: #{idadeNextYear}"