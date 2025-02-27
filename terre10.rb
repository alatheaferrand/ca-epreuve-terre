# frozen_string_literal: true

# Nombre premier
# Affiche si un nombre est premier ou non.
# Attention : 0 et 1 ne sont pas des nombres premiers.
# Gérer les erreurs d'arguments.

def numeric?(arg)
  !Integer(arg, exception: false).nil?
end

args = ARGV

# Vérification des erreurs
if args.size != 1
  puts 'error: 1 argument expected'
  exit
end

number = args[0]
unless numeric?(number)
  puts 'error: argument must be a number'
  exit
end

number = number.to_i
if number < 2
  puts 'error: the number must be greater than 1'
  exit
end

def prime?(number, divisor = 2)
  return true if divisor * divisor > number
  return false if (number % divisor).zero?

  prime?(number, divisor + 1)
end

puts prime?(number) ? "Oui, #{number} est un nombre premier." : "Non, #{number} n'est pas un nombre premier."
