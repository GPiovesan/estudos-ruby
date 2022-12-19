class Pessoa
    # Utilização de accessors para acessar as variáveis sem a utilização de gets e setters
    attr_accessor :nome 
    attr_accessor :idade

    # Valores padrão para inicialização de objetos
    def initialize(nome, idade)
        @nome = nome
        @idade = idade
    end

    def gritar(texto = "Yolooooooo") #Valor padrão para o grito
        puts "Gritando... #{texto}"
    end

    def agradecer (texto = "Obrigado!")
        puts texto
    end
end

#########################

pessoa1 = Pessoa.new("Gabriel Piovesan", 23)
pessoa2 = Pessoa.new("João", 30)

puts pessoa1.nome
puts pessoa1.idade

puts pessoa2.nome
puts pessoa2.idade