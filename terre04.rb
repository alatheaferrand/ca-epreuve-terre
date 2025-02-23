# frozen_string_literal: true

# Pair ou impair
# Détermine si l'argument donné est pair ou impair, y compris pour les nombres négatifs.
# Fonctions interdites : even? et odd?

if ARGV[0] =~ /^-?\d+$/ # Vérifie que l'entrée est bien un entier (positif ou négatif)
  n = ARGV[0].to_i

  puts (n % 2).zero? ? 'pair' : 'impair'
else
  puts "Tu ne me la mettras pas à l'envers."
end
