# Inverser une chaîne
# Affiche l'inverse de la chaîne de caractères donnée en argument
# sans utiliser la fonction reverse

phrase = ARGV[0].to_s
i = phrase.length.to_i
phrase_reverse = []

if ARGV[0]
  until i == 0
    i -= 1
    phrase_reverse << phrase[i]
  end
  puts phrase_reverse.join
else
  puts 'erreur'
end
