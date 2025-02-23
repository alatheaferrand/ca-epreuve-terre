# frozen_string_literal: true

# 12 to 24
# Convertit une une 12h AM/PM en format 24h
# Attention: midi et minuit

# Vérification des erreurs
if ARGV.size != 1 || !ARGV[0].match?(/\A(0[1-9]|1[0-2]):[0-5]\d[AP]M\z/)
  puts 'erreur'
  exit
end

# Extraction des heures, minutes et suffixe
heure = ARGV[0]
heures = heure[0..1]
minutes = heure[3..4]
suffixe = heure[5]

# Conversion 12h → 24h
if suffixe == 'A'
  heures = '00' if heures == '12'
elsif suffixe == 'P' && heures != '12'
  heures = heures.to_i + 12
end

puts "#{heures}:#{minutes}"
