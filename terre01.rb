# frozen_string_literal: true

# Nom du programme
# Programme qui affiche son nom de fichier sans utiliser de méthode native.

file_path = __FILE__

# Trouver le dernier séparateur (compatible Windows & Linux/Mac)
last_separator_index = -1
i = 0

while file_path[i]
  last_separator_index = i if file_path[i] == '/' || file_path[i] == '\\'
  i += 1
end

# Extraire le nom du fichier
file_name = String.new
i = last_separator_index + 1

while file_path[i]
  file_name << file_path[i]
  i += 1
end

puts file_name
