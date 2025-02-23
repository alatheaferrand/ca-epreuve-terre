# frozen_string_literal: true

# 24 to 12
# Convertit une heure 24h en format 12h AM/PM

# Vérification des erreurs
if ARGV.size != 1 || !ARGV[0].match?(/\A(0\d|1\d|2[0-4]):[0-5]\d\z/)
  puts 'erreur'
  exit
end

# Empêche 24:XX sauf 24:00
if ARGV[0][0..1] == '24' && ARGV[0][-3..] != ':00'
  puts 'erreur'
  exit
end

# Extraction des heures et minutes
heure = ARGV[0]
heures = heure[0..1].to_i
minutes = heure[3..4]
suffixe = 'AM'

# Conversion 24h → 12h
if [0, 24].include?(heures)
  heures = 12
elsif heures == 12
  suffixe = 'PM'
elsif heures > 12
  heures -= 12
  suffixe = 'PM'
end

# Assurer l'affichage correct des heures (ex: 01 au lieu de 1)
heures = "0#{heures}" if heures < 10

# Affichage final
puts "#{heures}:#{minutes}#{suffixe}"
