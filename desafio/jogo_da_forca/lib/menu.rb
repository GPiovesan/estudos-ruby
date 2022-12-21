require_relative 'carregar_vidas'

class Menu
    def self.render(palavra_invisivel, tentativas_restantes, tentativas_falhas)
        system('cls')
        puts "==============================================="
        puts "=============== JOGO DA VELHA ================="
        puts "==============================================="
        puts Vidas.render(tentativas_restantes)
        puts "Tentativas: #{tentativas_restantes}"
        puts "Palavra: #{palavra_invisivel}"
        if tentativas_falhas.any?
            puts "Suas tentativas falhas: #{tentativas_falhas}"
        end
        puts "Suas opções:"
        puts "1. Tentar LETRA"
        puts "2. Adivinhar PALAVRA"
        puts "3. Desistir"

        gets.chomp.to_i
    end
end