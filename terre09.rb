# Racine carrée d'un nombre
# Affiche la racine carrée d'un entier positif
# Sans utiliser la fonction sqrt

# Vérifier si l'argument est valide et s'il y a le bon nombre d'argument
entier = ARGV[0]
en_trop = ARGV[1]

if en_trop
  puts 'erreur'
  exit
end

if entier.nil? || !entier.match?(/\A\d+\z/)
  puts 'erreur'
  exit
end

# Calculer la racine carrée
entier = entier.to_f
racine = 0

until racine * racine >= entier
    racine += 1
end

if racine * racine == entier
  puts racine
else
 puts racine.to_s + " (resultat arrondi a l'entier superieur)"
end
