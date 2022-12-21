require_relative 'sortear_palavra'
require_relative 'regras'

class JogoDaForca
    include Regras

    attr_reader :palavra
    attr_accessor :tentativas_restantes
    attr_accessor :tentativas_falhas
    attr_accessor :tentativas_totais
    attr_accessor :jogando
    attr_accessor :palavra_invisivel
    attr_accessor :venceu

    def initialize
        @tentativas_totais = 0
        @tentativas_restantes = TENTATIVAS
        @tentativas_falhas = []
        @venceu = false
        @jogando = true
        @palavra = SortearPalavra.sortear
        @palavra_invisivel = gerar_array_tentativas(@palavra.split(''))
    end

    # Gera uma palavra invisível para que o jogador tente adivinhar as letras
    def gerar_array_tentativas(palavra)
        invisivel = []
        palavra.size.times { |x| invisivel.push('*') }
        invisivel.pop
        @palavra_invisivel = invisivel
        return @palavra_invisivel
    end

    # Realiza a tentativa de adivinhar uma letra
    def tentar_letra(tentativa)
        # Aumenta a contagem de tentativas, independente do acerto ou erro
        @tentativas_totais += 1 
        
        # Contagem para resgatar a posição da letra em relação a palavra e acertos
        i = 0
        acertos = 0

        @palavra.split('').each do |letra|
            if letra == tentativa
                # Substituindo o '*' pela letra correta na posição certa
                @palavra_invisivel[i] = letra
                acertos += 1
            end
            i += 1
        end

        # Caso não exista acertos foi uma tentativa falha
        if acertos == 0
            @tentativas_falhas.push(tentativa)
            @tentativas_restantes -= 1
            puts "ERROU!, Você tem #{@tentativas_restantes} tentativas restantes"
        else
            puts "Você obteve #{acertos} acerto(s)"
        end

        verifica_condicoes_fim_de_jogo
    end

    # Verifica se o jogo terminou, por falta de tentativas ou se todas as letras foram adivinhadas corretamente 
    def verifica_condicoes_fim_de_jogo
        if @palavra_invisivel.any? { |n| n == '*'} # Caso não haja '*' o jogador venceu
            if @tentativas_restantes == 0
                puts "=================== PERDEU ===================="
                @jogando = false
            end
        else
            puts "=================== VENCEU ===================="
            @venceu = true
            @jogando = false
        end
    end

    def adivinhar_palavra(palavra)
        if @palavra.chomp == palavra.chomp
            puts "PARABENS!, Você adivinhou a palavra correta \nEm #{@tentativas_totais} tentativa(s)"
            @venceu = true
        else
            puts "ERROU, que pena você perdeu, tente novamente"
        end
        @jogando = false
    end
end