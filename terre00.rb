# L'alphabet
# Affiche l'alphabet en lettres minuscules suivi d'un retour à la ligne

alphabet = ''

i = 97 # Code ASCII de 'a'
while i <= 122 # Code ASCII de 'z'
  alphabet << i.chr
  i += 1
end

# for i in 97..122 # Code ASCII 'a'..'z'
#  alphabet << i.chr
# end

puts "#{alphabet}\n"
