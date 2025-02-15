# Trié ou pas
# Détermine si une liste d'entiers est triée ou pas
# Sans utiliser la fonction sort

# Vérifier s'il y a au moins un argument
if ARGV.empty?
  puts 'erreur'
  exit
end

# Vérifier si tous les arguments sont des nombres entiers positifs
for n in ARGV
  if !n.match?(/\A\d+\z/)
    puts 'erreur'
    exit
  end
end



# Vérifier si les arguments sont rangés dans l'ordre croissant
nombre = ARGV[0].to_i
for n in ARGV
  if n.to_i >= nombre
    nombre = n.to_i
  else
    puts 'Pas triée !'
    exit
  end
end

puts 'Triée !'
