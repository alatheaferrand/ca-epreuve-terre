# Divisions
# Affiche le résultat et le reste d'une division entre 2 nombres

if ARGV[1].to_i > 0 && ARGV[0].to_i >= ARGV[1].to_i
  x = ARGV[0].to_i
  y = ARGV[1].to_i
  puts "résultat : #{ (x/y) }"
  puts "reste : #{ (x % y) }"
else
  puts "erreur"
end
