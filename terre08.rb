# Puissance d'un nombre
# Affiche le résultat d'une puissance
# L'exposant ne pourra pas être négatif
# Ne pas utiliser la fonction pow

nombre = ARGV[0]
exposant = ARGV[1]
en_trop = ARGV[2]

# Vérifie s'il y a un argument en trop
if en_trop
  puts 'erreur'
  exit
end

# Vérifie que les arguments sont des nombres valides
if nombre.nil? || exposant.nil? || !nombre.match?(/\A-?\d+(\.\d+)?\z/) || !exposant.match?(/\A-?\d+(\.\d+)?\z/) || exposant.to_i < 0
  puts 'erreur'
  exit
end

# Conversion en nombres entiers
nombre = nombre.to_i
exposant = exposant.to_i

# Calcul de la puissance (sans pow)
resultat = 1
until exposant == 0
  resultat *= nombre
  exposant -= 1
end

puts resultat
