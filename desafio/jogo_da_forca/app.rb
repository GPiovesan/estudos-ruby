require_relative 'lib/jogo_da_forca'
require_relative 'lib/menu'

jogo = JogoDaForca.new
menu = 0

while jogo.jogando do
    menu = Menu.render(jogo.palavra_invisivel, jogo.tentativas_restantes, jogo.tentativas_falhas)
    case menu
        when 1
            print "Digite uma LETRA: "
            jogo.tentar_letra(gets.chomp)
        when 2
            print "Digite uma PALAVRA"
            jogo.adivinhar_palavra(gets.chomp)
        when 3
            jogo.jogando = false
    end
end
