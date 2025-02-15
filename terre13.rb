# Trouver la Suisse
# Prend en paramètres 3 entiers et affiche la valeur du milieu
# Sans utiliser la fonction sort

# Vérifier les arguments : 3 nombres entiers positifs
if ARGV[0].nil? || ARGV[1].nil? || ARGV[2].nil? || ARGV[3]
  puts 'erreur'
  exit
elsif !ARGV[0].match?(/\A\d+\z/) || !ARGV[1].match?(/\A\d+\z/) || !ARGV[2].match?(/\A\d+\z/) 
  puts 'erreur'
  exit
end

# Vérifier que les arguments sont différents
if ARGV[0] == ARGV[1] || ARGV[1] == ARGV[2] || ARGV[0] == ARGV[2]
  puts 'erreur'
  exit
end

# Récupérer les arguments
a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i
val_max = a
val_min = a

# Comparer : trouver le maximum et le minimum pour déduire la valeur médiane
if b > val_max
  val_max = b
elsif c > val_max
  val_max = c
end

if b < val_min 
    val_min = b
elsif c < val_min
    val_min = c
end

# Déduire la valeur médiane
val_milieu = ( a + b + c ) - ( val_max + val_min )

# Affichage du résultat
puts val_milieu
