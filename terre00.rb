# frozen_string_literal: true

# L'alphabet
# Affiche l'alphabet en lettres minuscules suivi d'un retour à la ligne.

alphabet = String.new

(97..122).each { |i| alphabet << i.chr }

puts alphabet
