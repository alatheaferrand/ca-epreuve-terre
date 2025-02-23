# frozen_string_literal: true

# Divisions
# Affiche le résultat et le reste d'une division entre 2 nombres.

# Récupération des arguments convertis en entiers
x = ARGV[0].to_i
y = ARGV[1].to_i

# Vérification des conditions de division
if y.zero? || x < y
  puts 'erreur.'
else
  puts "résultat: #{x / y}"
  puts "reste: #{x % y}"
end
