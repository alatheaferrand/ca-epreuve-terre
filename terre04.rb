# frozen_string_literal: true

# Pair ou impair
# Détermine si l'argument donné est pair ou impair, y compris pour les nombres négatifs.
# Fonctions interdites : even? et odd?

def numeric?(number)
  !Integer(number, exception: false).nil?
end

args = ARGV

if args.size != 1
  puts 'error'
  exit
end

number = args[0]

unless numeric?(number)
  puts "Tu ne me la mettras pas à l'envers."
  exit
end

number = number.to_i
puts (number % 2).zero? ? 'pair' : 'impair'
