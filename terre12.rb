# 12 to 24
# Transforme heure affichée d'un format 12h au format 24h
# Attention à midi et minuit

heure = ARGV[0]
en_trop = ARGV[1]

if ARGV[0].nil? || en_trop
 puts 'erreur'
 exit
end

# Vérifier si l'argument est au bon format
if !heure.match?(/\A\d{2}:\d{2}[AP]M\z/)
  puts 'erreur'
  exit
end

# Récupérer les heures, les minutes, l'acronyme
heures = (heure[0] + heure[1]).to_i
minutes = (heure[3] + heure[4]).to_s
acronyme = heure[5].to_s

# Convertir les heures du matin
if acronyme == 'A'
    if heures == 12
      heures = '00'
    elsif heures >= 1 && heures <= 9
      heures = '0' + heures.to_s
    end
end

# Convertir les heures de l'après-midi
if acronyme == 'P' && heures >= 1 && heures <= 11
    heures += 12
  end

puts heures.to_s + ':' + minutes
