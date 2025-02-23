# frozen_string_literal: true

# Taille d'une chaîne
# Affiche le nombre de caractères d'une chaîne passée en argument.
# Fonctions interdites: length et size.

# Gestion des erreurs
if ARGV.empty? || ARGV[1] || ARGV[0].to_i.to_s == ARGV[0]
  puts 'erreur'
  exit
end

# Compteur manuel de caractères
input = ARGV[0]
count = 0

count += 1 while input[count]

puts count
