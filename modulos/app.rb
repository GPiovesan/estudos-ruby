require_relative 'pagamento'

include Pagamento

p = Pagamento::Visa.new # Classes
puts p.pagando

puts PI # Constantes

puts "Digite a bandeira do cartão"
b = gets.chomp

puts "Digite a número do cartão"
n = gets.chomp

puts "Digite o valor da compra:"
v = gets.chomp

puts pagar(b, n, v) # Métodos