# L'alphabet à partir de
# Affiche l’alphabet à partir de la lettre donnée en argument en lettres minuscules
# suivi d’un retour à la ligne

letter = ARGV[0].downcase
alphabet = ''

for n in (letter..'z')
  alphabet << n
end

# alphabet = (letter..'z').to_a.join

puts "#{alphabet}\n"