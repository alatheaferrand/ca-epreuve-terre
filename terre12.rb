# frozen_string_literal: true

# 12 to 24
# Convertit une une 12h AM/PM en format 24h
# Attention: midi et minuit

args = ARGV
time_format_regex = /\A(0[1-9]|1[0-2]):([0-5]\d) ([AP]M|[ap]m)\z/

# Error handling
if args.size != 1
  puts 'error: 1 argument expected'
  exit
end

unless args[0].match? time_format_regex
  puts 'error: argument must be in HH:MM AM/PM format, e.g., 11:45 PM'
  exit
end

# Parsing
hours, minutes, meridian = args[0].split(/[: ]/)
meridian = meridian.downcase
hours = hours.to_i
minutes = minutes.to_i

# Conversion 12h → 24h
hours = 0 if hours == 12 && meridian == 'am'

hours += 12 if hours != 12 && meridian == 'pm'

puts "#{format('%02d', hours)}:#{format('%02d', minutes)}"
