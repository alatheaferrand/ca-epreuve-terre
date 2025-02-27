# frozen_string_literal: true

# Taille d'une chaîne
# Affiche le nombre de caractères d'une chaîne passée en argument.
# Fonctions interdites: length et size.

def numeric?(str)
  !Integer(str, exception: false).nil?
end

def count_element(obj)
  count = 0
  count += 1 until obj[count].nil? # sans méthode native
  count
end

args = ARGV

if count_element(args) != 1
  puts 'erreur : un seul argument attendu'
  exit
end

string = args[0]

if numeric?(string)
  puts "erreur : l'argument ne doit pas être un nombre"
  exit
end

puts count_element(string)
