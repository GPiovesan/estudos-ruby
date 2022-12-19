class Cachorro
    # Utilização de accessors para acessar as variáveis sem a utilização de gets e setters
    attr_accessor :nome 
    attr_reader :raca

    # Valores padrão para inicialização de objetos
    def initialize(nome, raca)
        @nome = nome
        @raca = raca
    end

    def latir(latido = "au au!")
        puts latido
    end
end

###############################

cachorro1 = Cachorro.new("Pandora", "Mista")
cachorro2 = Cachorro.new("Thor", "shih-tzu")

cachorro1.latir("auuuuuuuuuuu")
cachorro2.latir