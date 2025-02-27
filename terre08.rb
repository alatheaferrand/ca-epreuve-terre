# frozen_string_literal: true

# Puissance d'un nombre
# Affiche le résultat d'une puissance.
# L'exposant ne pourra pas être négatif.
# Fonction interdite: la fonction pow.

def numeric?(str)
  !Integer(str, exception: false).nil?
end

args = ARGV

# Vérification des erreurs
if args.size != 2
  puts 'error: 2 arguments expected'
  exit
end

number, exponent = args.each do |number|
  unless numeric?(number)
    puts 'error: arguments must be numbers'
    exit
  end
end

number = number.to_i
exponent = exponent.to_i

if exponent.negative?
  puts 'error: the exponent must be positive'
  exit
end

# Calcul de la puissance (sans pow)
result = 1
i = 0
while i < exponent
  result *= number
  i += 1
end

puts result
