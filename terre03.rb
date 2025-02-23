# frozen_string_literal: true

# L'alphabet à partir de
# Affiche l’alphabet à partir de la lettre donnée en argument en lettres minuscules,
# suivi d’un retour à la ligne.

first_letter = ARGV[0].ord
first_letter += 32 if first_letter.between?(65, 90) # Convertit en minuscule si nécessaire

alphabet = String.new #  Crée une chaîne mutable

(first_letter..122).each { |i| alphabet << i.chr }

puts alphabet
