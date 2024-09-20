input_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
input_string = "Howdy partner, sit down! How's it going?"

  def string_normalization(text)
    text.downcase.gsub(/['’]s|['’]t|['’]ve|['’]re|['’]ll|['’]d|[^\w\s]/, '')
  end

  string_normalization(input_string)

  clean_string = string_normalization(input_string)
  puts clean_string

  def substrings(string, dictionary)
    words = string.split
    substring_counts = Hash.new(0)

    dictionary.each do |dictionary_word|
      words.each do |string_word|
        if dictionary_word.include?(string_word)
          substring_counts[dictionary_word] += 1
        end
      end
    end
    substring_counts
  end

  result = substrings(clean_string, input_dictionary)
  puts result