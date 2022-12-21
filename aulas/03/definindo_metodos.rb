#https://ruby-doc.org/docs/ruby-doc-bundle/UsersGuide/rg/accessors.html

class Pessoa
    # Utilização de accessors para acessar as variáveis sem a utilização de gets e setters
    attr_accessor :nome 
    attr_accessor :idade

=begin
    def nome=(nome)
        @nome = nome
    end

    def nome
        @nome
    end

    def idade=(idade)
        @idade = idade
    end

    def idade
        @idade
    end
=end

    def gritar(texto = "Yolooooooo") #Valor padrão para o grito
        puts "Gritando... #{texto}"
    end

    def agradecer (texto = "Obrigado!")
        puts texto
    end

    def metodos_usam_snake_case
        "nomes compostos devem se utilizar o snake_case" # Não é necessário a utilização do RETURN
    end
end

#########################

pessoa1 = Pessoa.new
pessoa1.nome= "Gabriel Piovesan"
pessoa1.idade= 23

pessoa2 = Pessoa.new
pessoa2.nome = "João"
pessoa2.idade = 30

puts pessoa1.nome
puts pessoa1.idade

puts pessoa2.nome
puts pessoa2.idade