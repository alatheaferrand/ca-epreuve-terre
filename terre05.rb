# frozen_string_literal: true

# Divisions
# Affiche le résultat et le reste d'une division entre 2 nombres.

def numeric?(number)
  !Integer(number, exception: false).nil?
end

args = ARGV

if args.size != 2
  puts 'erreur.'
  exit
end

unless args.all? { |arg| numeric?(arg) }
  puts 'erreur.'
  exit
end

dividend = args[0].to_i
divisor = args[1].to_i

# Vérification des conditions de division
if divisor.zero? || dividend < divisor
  puts 'erreur.'
  exit
end

puts "résultat: #{dividend / divisor}"
puts "reste: #{dividend % divisor}"
