def encrypt(text, mutation_level = -3)
  text.gsub(/[a-zA-Z]/) do |char|
    (((char.ord - "A".ord + mutation_level) % 26) + "A".ord).chr
  end
end

def decrypt(text)
  encrypt(text, 3)
end

test_text = "THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG"

puts "Encrypting:
#{test_text}
Result:
#{encrypt(test_text)}"
