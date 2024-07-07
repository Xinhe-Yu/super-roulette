def get_acronym(string)
  string.split.map { |word| word[0].upcase }.join
end
