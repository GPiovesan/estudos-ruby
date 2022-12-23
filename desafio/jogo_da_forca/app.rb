require_relative 'lib/jogo_da_forca'
require_relative 'lib/menu'

jogo = JogoDaForca.new
menu = 0

while jogo.jogando do
    # Renderiza o menu do jogo em tela
    menu = Menu.render(jogo.palavra_invisivel, jogo.tentativas_restantes, jogo.tentativas_falhas)
    case menu
        when 1
            puts "Digite uma LETRA: "
            jogo.tentar_letra(gets.chomp.downcase)
        when 2
            puts "Digite uma PALAVRA: "
            jogo.adivinhar_palavra(gets.chomp)
        when 3
            jogo.jogando = false
        else
            puts "Opção inválida! Digite UM NÚMERO das opções acima"
            sleep 2
    end
end

menu = Menu.render_after_games(jogo.venceu, jogo.tentativas_totais)