# 24 to 12
# Transforme heure affichée d'un format 24h au format 12h
# Attention à midi et minuit

heure = ARGV[0]
en_trop = ARGV[1]

if ARGV[0].nil? || en_trop
 puts 'erreur'
 exit
end

# Vérifier si l'argument est au bon format
if !heure.match?(/\A\d{2}:\d{2}\z/)
  puts 'erreur'
  exit
end

# Récupérer les heures et les minutes
heures = (heure[0] + heure[1]).to_i
minutes = (heure[3] + heure[4]).to_s

# Convertir les heures
acronyme = 'AM'

if heures == 24
  heures = 0
end

if heures >= 13 && heures < 24
  heures = heures - 12
  acronyme = 'PM'
end

if heures >= 0 && heures <= 9
  heures = '0' + heures.to_s
end

puts heures.to_s + ':' + minutes.to_s + acronyme
