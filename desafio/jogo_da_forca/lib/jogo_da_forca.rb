require_relative 'sortear_palavra'

class JogoDaForca
    attr_reader :palavra
    attr_accessor :tentativas_restantes
    attr_accessor :tentativas_falhas
    attr_accessor :tentativas_totais
    attr_accessor :jogando
    attr_accessor :palavra_invisivel

    VIDAS = 6

    def initialize
        @tentativas_totais = 0
        @tentativas_restantes = VIDAS
        @tentativas_falhas = []
        @jogando = true
        @palavra = SortearPalavra.sortear
        @palavra_invisivel = gerar_array_tentativas(@palavra.split(''))
    end

    def gerar_array_tentativas(palavra)
        invisivel = []
        palavra.size.times { |x| invisivel.push('*') }
        invisivel.pop
        @palavra_invisivel = invisivel
        return @palavra_invisivel
    end

    def tentar_letra(tentativa)
        @tentativas_totais += 1
        i = 0
        acertos = 0

        @palavra.split('').each do |letra|
            if letra == tentativa
                @palavra_invisivel[i] = letra
                acertos += 1
            end
            i += 1
        end

        if acertos == 0
            @tentativas_restantes -= 1
            puts "ERROU!, Você tem #{@tentativas_restantes} tentativas restantes"
            
        else
            puts "Você obteve #{acertos} acerto(s)"
        end

        verifica_condicoes_fim_de_jogo
    end

    def verifica_condicoes_fim_de_jogo
        if @tentativas_restantes == 0
            if @palavra_invisivel.any? { |n| n == '*'}
                puts "=================== PERDEU ===================="
            else
                puts "=================== VENCEU ===================="
            end
            puts "================== GAME OVER =================="
            @jogando = false
        end
    end


    def adivinhar_palavra(palavra)
        if @palavra.chomp == palavra.chomp
            puts "PARABENS!, Você adivinhou a palavra correta \nEm #{@tentativas_totais} tentativa(s)"
        else
            puts "ERROU, que pena você perdeu, tente novamente"
        end
        @jogando = false
    end
end