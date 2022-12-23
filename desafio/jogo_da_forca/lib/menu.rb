require_relative 'carregar_vidas'

class Menu
    def self.render(palavra_invisivel, tentativas_restantes, tentativas_falhas)
        system('cls')
        render_top_text
        # Renderização da forca com base na quantidade de tentativas restantes
        puts Vidas.render(tentativas_restantes)
        puts "Tentativas: #{tentativas_restantes}"
        if tentativas_restantes < 4
            puts "DICA: É UM ANIMAL!"
        end
        puts "Palavra: #{palavra_invisivel}"
        # Salva as tentativas falhas e exibe para o jogador (só exibe quando existir tentativas falhas)
        if tentativas_falhas.any?
            puts "Suas tentativas falhas: #{tentativas_falhas}"
        end
        puts "Suas opções: (DIGITE UM NÚMERO E PRESSIONE ENTER)"
        puts "1. Tentar LETRA"
        puts "2. Adivinhar PALAVRA"
        puts "3. Desistir"

        gets.chomp.to_i
    end

    def self.render_top_text
        puts "==============================================="
        puts "=============== JOGO DA FORCA ================="
        puts "==============================================="
    end

    def self.render_after_games(venceu, tentativas_totais)
        system('cls')
        render_top_text
        sleep 1
        puts "=================== VOCÊ ======================"
        if venceu
            sleep 1
            puts "================== VENCEU ====================="
            sleep 1
            puts "================= PARABENS ===================="
        else
            sleep 1
            puts "================== PERDEU ====================="
            sleep 1
            puts "================= QUE PENA ===================="
        end
        sleep 1
        puts "=============== TENTATIVAS: #{tentativas_totais} ================="
        
    end
end