# frozen_string_literal: true

# Inverser une chaîne
# Affiche l'inverse de la chaîne de caractères donnée en argument.
# Gérer les potentielles erreurs d'argument.
# Fonction interdite: reverse.

args = ARGV

if args.size != 1
  puts 'erreur'
  exit
end

string = args[0]
string_reversed = String.new

string.each_char do |char|
  string_reversed = char + string_reversed
end

puts string_reversed
