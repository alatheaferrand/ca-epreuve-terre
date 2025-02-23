# frozen_string_literal: true

# Puissance d'un nombre
# Affiche le résultat d'une puissance.
# L'exposant ne pourra pas être négatif.
# Fonction interdite: la fonction pow.

# Vérification des erreurs
if ARGV.size != 2 || ARGV[0].to_i.to_s != ARGV[0] || ARGV[1].to_i.to_s != ARGV[1] || ARGV[1].to_i.negative?
  puts 'erreur'
  exit
end

# Conversion en entiers
nombre = ARGV[0].to_i
exposant = ARGV[1].to_i

# Calcul de la puissance (sans pow)
resultat = 1
while exposant.positive?
  resultat *= nombre
  exposant -= 1
end

puts resultat
