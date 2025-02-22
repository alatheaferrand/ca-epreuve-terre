# Nom du programme
# Programme qui affiche son nom de fichier

# Récupération du chemin complet du fichier
path = __FILE__

# Trouver l'index du dernier séparateur (sans méthode native)
last_slash_index = -1
index = 0

while path[index]
  last_slash_index = index if path[index] == '/' || path[index] == '\\' # Windows & Linux/Mac
index += 1
end

# Extraction du nom du fichier
filename = ''
index = last_slash_index + 1

while path[index]
  filename << path[index]
  index += 1
end

puts filename
