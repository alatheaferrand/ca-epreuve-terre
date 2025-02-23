# frozen_string_literal: true

# Nombre premier
# Affiche si un nombre est premier ou non.
# Attention : 0 et 1 ne sont pas des nombres premiers.
# Gérer les erreurs d'arguments.

# Vérification des erreurs
if ARGV.size != 1 || ARGV[0].to_i.to_s != ARGV[0] || ARGV[0].to_i.negative?
  puts 'erreur'
  exit
end

entier = ARGV[0].to_i

# Cas particuliers
if [0, 1].include?(entier)
  puts "Non, #{entier} n'est pas un nombre premier."
  exit
elsif entier == 2
  puts 'Oui, 2 est un nombre premier.'
  exit
elsif (entier % 2).zero?
  puts "Non, #{entier} n'est pas un nombre premier."
  exit
end

# Vérification de la primalité en testant uniquement jusqu'à la racine carrée
racine = 1
racine += 1 while racine * racine <= entier

is_prime = true
i = 3

while i <= racine
  if (entier % i).zero?
    is_prime = false
    break
  end
  i += 2 # On saute les nombres pairs
end

puts is_prime ? "Oui, #{entier} est un nombre premier." : "Non, #{entier} n'est pas un nombre premier."
