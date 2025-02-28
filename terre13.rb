# frozen_string_literal: true

# Trouver la Suisse
# Prend en paramètres 3 entiers et affiche la valeur du milieu
# Fonction interdite: la fonction sort

def numeric?(arg)
  !Integer(arg, exception: false).nil?
end

args = ARGV

# Vérification des erreurs
if args.size != 3
  puts 'error: 3 arguments expected'
  exit
end

unless args.all? { |arg| numeric?(arg) }
  puts 'error: arguments must be numbers'
  exit
end

# Parsing
i = 0
while i < args.size
  args[i] = args[i].to_i
  i += 1
end

a, b, c = args

# Vérifier que les arguments sont différents
if a == b || b == c || a == c
  puts 'error: arguments must be different'
  exit
end

# Trouver la valeur du milieu
puts a if (a > b && a < c) || (a > c && a < b)
puts b if (b > a && b < c) || (b > c && b < a)
puts c if (c > a && c < b) || (c > b && c < a)
