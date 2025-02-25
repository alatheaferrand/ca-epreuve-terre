# frozen_string_literal: true

# Trouver la Suisse
# Prend en paramètres 3 entiers et affiche la valeur du milieu
# Fonction interdite: la fonction sort

# Vérification des erreurs
if ARGV.size != 3 || ARGV.any? { |arg| !arg.match?(/\A-?\d+\z/) }
  puts 'erreur'
  exit
end

# Conversion en entiers
a, b, c = ARGV.map(&:to_i)

# Vérifier que les arguments sont différents
if a == b || b == c || a == c
  puts 'erreur'
  exit
end

# Trouver la valeur du milieu
if (a > b && a < c) || (a > c && a < b)
  puts a
elsif (b > a && b < c) || (b > c && b < a)
  puts b
else
  puts c
end
