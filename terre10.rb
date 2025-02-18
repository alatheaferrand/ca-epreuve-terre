# Nombre premier
# Affiche si un nombre est premier ou pas
# Attention : 0 et 1 ne sont pas des nombres premiers

entier = ARGV[0]
en_trop = ARGV[1]

# Vérifier qu'il n'y a qu'un seul argument
if en_trop || entier.nil?
  puts 'erreur'
  exit
end

# Vérifier que l'argument est bien un nombre entier
if !entier.match?(/\A\d+\z/)
  puts 'erreur'
  exit
end

# Conversion en integer
entier = entier.to_i

# Première vérification
if entier <= 1
    puts "Non, #{entier} n'est pas un nombre premier."
    exit
  elsif entier == 2
    puts "Oui, 2 est un nombre premier."
    exit
  elsif entier % 2 == 0 # exclus tous les nombres pairs autre que 2
    puts "Non, #{entier} n'est pas un nombre premier."
    exit
  end

# Calcul de la racine carré
racine = 0
until racine * racine >= entier
  racine += 1
end

# S'assurer que racine est impair pour la prochaine boucle
if racine % 2 == 0
  racine -= 1
end

# Vérifier s'il existe un diviseur impair entre 3 et la racine
diviseur = false
while racine >= 3
  if entier % racine == 0
    diviseur = true
    break
  end
  racine -= 2
end

# Résultat final
if diviseur
  puts "Non, #{entier} n'est pas un nombre premier."
else
  puts "Oui, #{entier} est un nombre premier."
end
 