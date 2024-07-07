require "date"

today = Date.today
xmas_this_year = Date.new(today.year, 12, 25)
xmas_next_year = Date.new(today.year + 1, 12, 25)

remains = xmas_this_year > today ? xmas_this_year - today : xmas_next_year - today

puts remains.to_i
