class Pagamento
    def quack!
        "Quack! Quack!"
    end
end

class PatoDoente
    def quack!
        "Queeeeck..."
    end
end

class Pessoa
    def apertar_o_pato(pato)
        pato.quack!
    end
end

p1 = Pato.new
p2 = PatoDoente.new

p = Pessoa.new

p.apertar_o_pato(p1)
p.apertar_o_pato(p2)