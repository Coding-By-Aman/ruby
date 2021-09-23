def substrings(string, dictionary)
  sub_hash = Hash.new(0)
  str_array = string.downcase.split(/ /)
  dictionary.each do |word|
    str_array.each do |str|
      sub_hash[word] += 1 if str.include?(word)
    end
  end
  puts sub_hash
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)