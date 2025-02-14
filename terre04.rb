# Pair ou impair
# Détermine si l'argument donné est pair ou impair
n = ARGV[0]

if n.to_i && n.to_i > 0 
  i = n.to_i
  if i % 2 == 0
    puts "pair"
  else
    puts "impair"
  end
else
 puts "Tu ne me la mettras pas à l'envers."
end
