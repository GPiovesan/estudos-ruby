class Papagaio
    attr_accessor :nome
    attr_accessor :idade

    def initialize(nome, idade)
        @nome = nome
        @idade = idade
    end

    def repetir_frase(frase = "curupaco")
        puts frase
    end
end

papagaio1 = Papagaio.new("Zé", 2)
papagaio2 = Papagaio.new("Carioca", 4)

papagaio1.repetir_frase("Bora Bil")
papagaio2.repetir_frase