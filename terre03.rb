# frozen_string_literal: true

# L'alphabet à partir de
# Affiche l’alphabet à partir de la lettre donnée en argument en lettres minuscules,
# suivi d’un retour à la ligne.

code_first_letter = ARGV[0].ord
code_last_letter = 122
code_first_letter += 32 if code_first_letter.between?(65, 90) # Convertit en minuscule si nécessaire

alphabet = String.new #  Crée une chaîne mutable

(code_first_letter..code_last_letter).each { |code_letter| alphabet << code_letter.chr }

puts alphabet
