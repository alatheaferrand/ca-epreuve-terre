# L'alphabet à partir de
# Affiche l’alphabet à partir de la lettre donnée en argument en lettres minuscules
# suivi d’un retour à la ligne

# Récupération et conversion de l'argument en décimal (code ASCII)
first_letter = ARGV[0].ord

# Conversion en minuscule
first_letter = (first_letter + 32) if first_letter <= 90 && first_letter >= 65

alphabet = ''
i = first_letter

while i <= 122 # Code ASCII de 'z'
  alphabet << i.chr
  i += 1
end

puts alphabet
