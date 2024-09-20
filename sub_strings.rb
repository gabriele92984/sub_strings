dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
string = "Howdy partner, sit down! How's it going?"

def string_normalization(str)
  str.downcase.gsub(/['’]s|['’]t|['’]ve|['’]re|['’]ll|['’]d|[^\w\s]/, '')
end

# Normalize the string once and store it in normalized_string
normalized_string = string_normalization(string)

def substrings(words, dictionary)
  substring_counts = Hash.new(0)

  # Iterate over each word in the normalized_string
  words.split.each do |word|
    # Check if the current word exists in the dictionary
    dictionary.each do |dictionary_word|
      if word == dictionary_word
        substring_counts[dictionary_word] += 1
      end
    end
  end

  substring_counts
end

result = substrings(normalized_string, dictionary)
puts result