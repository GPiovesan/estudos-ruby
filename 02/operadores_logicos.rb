v1 = 34
v2 = 56
v3 = 2
v4 = 7

if (v1 < v2) && (v3 < v4) # && / and
    puts "Condições atendidas nos dois casos"
else
    puts "Condições NÃO atendidas nos dois casos"
end

if (v1 < v2) || (v3 > v4) # || / OR
    puts "Pelo menos UMA das Condições foi atendida"
else
    puts "Condições NÃO atendidas nos dois casos"
end

if  !(v3 > v4) # ! / not
    puts "Negação atendida"
else
    puts "Negação NÃO atendida"
end