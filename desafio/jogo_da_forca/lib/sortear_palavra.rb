class SortearPalavra
    def self.sortear
        palavra = []
        File.open(File.expand_path('../palavras.txt', __FILE__), 'r') do |arquivo|
            while linha = arquivo.gets #enquanto houver linhas no arquivo irá repetir o código
                palavra.push(linha)
            end
        end
        return palavra.sample
    end
end