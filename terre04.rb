# frozen_string_literal: true

# Pair ou impair
# Détermine si l'argument donné est pair ou impair, y compris pour les nombres négatifs.
# Fonctions interdites : even? et odd?

args = ARGV

if args.size != 1
  puts 'error'
  exit
end

number = args[0]

if number =~ /^-?\d+$/ # Vérifie que l'entrée est bien un entier (positif ou négatif)
  number = number.to_i
  puts (number % 2).zero? ? 'pair' : 'impair'
  exit
end

puts "Tu ne me la mettras pas à l'envers."
