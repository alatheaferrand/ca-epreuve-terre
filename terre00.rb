# frozen_string_literal: true

# L'alphabet
# Affiche l'alphabet en lettres minuscules suivi d'un retour à la ligne

alphabet = ''

for n in 'a'..'z'
  alphabet << n
end

puts "#{alphabet}\n"

# ('a'..'z').each do |letter|
#   alphabet << letter
# end
