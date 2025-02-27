# frozen_string_literal: true

# L'alphabet
# Affiche l'alphabet en lettres minuscules suivi d'un retour à la ligne.

alphabet = String.new

first_letter = 97
last_letter = 122

(first_letter..last_letter).each { |i| alphabet << i.chr }

puts alphabet
