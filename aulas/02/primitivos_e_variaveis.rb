# .class é utilizado para demonstrar o tipo de classe
# Tipos primitivos são Inteiros, Reais, Caracteres e Booleanos
puts 'Tipos primitivos'
puts 1
puts 4.5
puts 1 + 4
puts 4.5 + 7.8

puts ''
puts 'Obtendo classes'
puts 23.class
puts (4.5 + 7.8).class

puts ''
puts "Concatenação"
puts '3' + '1'

puts ''
puts 'Booleano'
puts true
puts false.class
puts true.class

puts ''
puts 'Variáveis'
v1 = 45
v2 = 6.5
puts "Variável 1 = #{v1}"
puts "Variável 2 = #{v2}"
puts "V1 + V2 = #{v1 + v2}"
puts "V1 + V2 = #{(v1 + v2).class}"

puts ''
v3 = 'Gabriel'
puts v3
puts "V3 = #{v3.class}"

puts ''
v4 = true
puts v4
puts "V4 = #{v4.class}"