# frozen_string_literal: true

# 24 to 12
# Convertit une heure 24h en format 12h AM/PM

args = ARGV
if args.size != 1
  puts 'error: 1 argument expected'
  exit
end

time_format_regex = /\A(0\d|1\d|2[0-3]):[0-5]\d\z/
unless args[0].match? time_format_regex
  puts 'error: argument must be in HH:MM format (24-hour clock), e.g., 23:59'
  exit
end

# Extraction des heures et minutes
time = args[0]
hours, minutes = time.split(':').map(&:to_i)
meridian = 'PM'

# Conversion 24h → 12h
if hours.zero?
  hours = 12
  meridian = 'AM'
end

if hours > 12
  hours -= 12
else
  meridian = 'AM'
end

# Affichage final
puts "#{format('%02d', hours)}:#{format('%02d', minutes)}#{meridian}"
