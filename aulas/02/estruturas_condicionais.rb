puts "Escolha um número entre 1 e 5:"
v1 = gets.chomp.to_i

=begin

if v1 > 10 then #then pode ser utilizado para uma leitura "agradável"
    puts "O valor digitado é maior que 10"
elsif v1 >= 5
    puts "O valor é maior ou igual a 5"
else
    puts "O valor digitado é menor que 5"
end


# Funciona como o inverso do IF
unless v1 > 10
    puts "O número digitado é menor que 10"
end

=end

case v1
    when 1
        puts "Você escolheu a opção 1"
    when 2
        puts "Você escolheu a opção 2"
    when 3
        puts "Você escolheu a opção 3"
    when 4
        puts "Você escolheu a opção 4"
    when 5
        puts "Você escolheu a opção 5"
    else # Opção default (valor padrão)
        puts "Opção inválida"
end