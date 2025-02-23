# frozen_string_literal: true

# L'alphabet à partir de
# Affiche l’alphabet à partir de la lettre donnée en argument en lettres minuscules
# suivi d’un retour à la ligne.

first_letter = ARGV[0].ord

# Convertit en minuscule si l'argument est une majuscule
first_letter += 32 if first_letter.between?(65, 90)

alphabet = String.new

while first_letter <= 122 # ASCII de 'z'
  alphabet << first_letter.chr
  first_letter += 1
end

puts alphabet
