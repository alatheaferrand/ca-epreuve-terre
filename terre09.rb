# frozen_string_literal: true

# Racine carrée d'un nombre
# Affiche la racine carrée d'un entier positif
# Fonction interdite: la fonction sqrt

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

if number.negative?
  puts 'error: the number must be positive'
  exit
end

# Calculer la racine carrée
def find_root(number, root = 1)
  return root - 1 if root * root > number
  return root if root * root == number

  find_root(number, root + 1)
end

puts find_root(number)
