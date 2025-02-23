# frozen_string_literal: true

# Racine carrée d'un nombre
# Affiche la racine carrée d'un entier positif
# Fonction interdite: la fonction sqrt

# Vérification des erreurs
if ARGV.size != 1 || ARGV[0].to_i.to_s != ARGV[0] || ARGV[0].to_i.negative?
  puts 'erreur'
  exit
end

# Calculer la racine carrée
entier = ARGV[0].to_i
racine = 0

racine += 1 while racine * racine < entier

# Vérifie si la racine est exacte ou arrondie
puts racine * racine == entier ? racine : "#{racine} (résultat arrondi à l'entier supérieur)"
