a = [1, 4, 6, 89, 0]

a.each { |element| 
    puts element
    puts "========"
}

=begin

    Operadores de intervalo podem ser utilizados para percorrer números sem muito esforço ou utilização de um array

    1...5 => 1 até 4 (até o penúltimo elemento)
    1..5 => 1 até 5 (até o ultimo)

=end

(1..5).each { |x| puts x} #percorre de 1 a 5 