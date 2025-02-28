# frozen_string_literal: true

# Trié ou pas
# Détermine si une liste d'entiers est triée ou pas
# Fonction interdite : sort

def numeric?(arg)
  !Integer(arg, exception: false).nil?
end

args = ARGV

# Error handling
if args.size < 2
  puts 'error: at least two arguments expected'
  exit
end

unless args.all? { |arg| numeric?(arg) }
  puts 'error: arguments must be numbers'
  exit
end

# Conversion en integer
i = 0
while i < args.size
  args[i] = args[i].to_i
  i += 1
end

# Vérifier si la liste est triée
i = 0
while i < args.size - 1
  if args[i] > args[i + 1]
    puts 'Pas triée !'
    exit
  end
  i += 1
end

puts 'Triée !'
