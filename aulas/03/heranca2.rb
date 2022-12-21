class Funcionario
    attr_accessor :nome, :cpf, :salario
end

class Gerente < Funcionario
    attr_accessor :senha, :tempo_empresa
end

f = Funcionario.new
f.nome = "Gabriel"
f.cpf = 123456789
f.salario = 120

puts f.nome
puts f.cpf
puts f.salario

puts "--------------"

g = Funcionario.new
g.nome = "Gabriel"
g.cpf = 123456789
g.salario = 120
g.senha = 1234
g.tempo_empresa = 5

puts g.nome
puts g.cpf
puts g.salario
puts g.senha
puts g.tempo_empresa