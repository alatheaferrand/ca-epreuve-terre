# frozen_string_literal: true

# Trié ou pas
# Détermine si une liste d'entiers est triée ou pas
# Fonction interdite : sort

# Vérification des arguments
if ARGV.empty? || ARGV.any? { |arg| !arg.match?(/\A\d+\z/) }
  puts 'erreur'
  exit
end

# Conversion en entiers
nombres = ARGV.map(&:to_i)

# Vérifier si la liste est triée
i = 0
while i < nombres.length - 1
  if nombres[i] > nombres[i + 1]
    puts 'Pas triée !'
    exit
  end
  i += 1
end

puts 'Triée !'
