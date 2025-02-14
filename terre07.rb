# Taille d'une chaîne
# Affiche le nombre de caractères d'une chaîne passée en argument
# Sans utiliser length ni size

input = ARGV[0]

if ARGV[1]
  puts 'erreur'
  exit
elsif ARGV.empty?
  puts 'erreur'
  exit
elsif input.match?(/\A-?\d+(\.\d+)?\z/)
  puts 'erreur'
  exit
end

count = 0
#input.each_char { count += 1 }

while input[count] do
  count += 1
end
puts count
