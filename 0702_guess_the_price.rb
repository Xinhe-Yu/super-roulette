price = rand(1..100)
count = 0
guess = nil

def give_indice(guess, price)
  res = guess > price ? "too high" : "too low"
  "Your answer is #{res} :("
end

until guess == price
  puts "Guess the price:"
  print "> "
  guess = gets.chomp.to_i
  count += 1
  puts give_indice(guess, price) unless guess == price
  puts ""
end

puts "Bingo, you got the right price after trying #{count == 1 ? 'only 1 time' : "#{count} times"}! :)"
