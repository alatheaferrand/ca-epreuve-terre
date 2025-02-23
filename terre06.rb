# frozen_string_literal: true

# Inverser une chaîne
# Affiche l'inverse de la chaîne de caractères donnée en argument.
# Gérer les potentielles erreurs d'argument.
# Fonction interdite: reverse.

if ARGV.empty?
  puts 'erreur'
  exit
end

phrase = ARGV[0].to_s
phrase_reverse = String.new

i = phrase.length - 1
while i >= 0
  phrase_reverse << phrase[i]
  i -= 1
end

puts phrase_reverse
