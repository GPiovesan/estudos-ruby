
class Vidas
    def self.render(vidas)
        vidas_render = ['''
 
            +---+
            |   |
                |
                |
                |
                |
          =========''','''
           
            +---+
            |   |
            O   |
                |
                |
                |
          =========''','''
           
            +---+
            |   |
            O   |
            |   |
                |
                |
          =========''','''
           
            +---+
            |   |
            O   |
           /|   |
                |
                |
          =========''','''
           
            +---+
            |   |
            O   |
           /|\  |
                |
                |
          =========''','''
           
            +---+
            |   |
            O   |
           /|\  |
           /    |
                |
          =========''','''
           
            +---+
            |   |
            O   |
           /|\  |
           / \  |
                |
          =========''']
        case vidas
            when 1
                vidas_render[5]
            when 2
                vidas_render[4]
            when 3
                vidas_render[3]
            when 4
                vidas_render[2]
            when 5
                vidas_render[1]
            when 6
                vidas_render[0]
        end
    end
end