dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
input_string = "Howdy partner, sit down! How's it going?"

  def string_normalization(text)
    cleaned_text = text.gsub(/['’]s|['’]t|['’]ve|['’]re|['’]ll|['’]d|[^\w\s]/, '').downcase
  end

  string_normalization(input_string)

  clean_string = string_normalization(input_string)
  puts clean_string

  def substrings(word, dictionary)

  end

  substrings(clean_string, dictionary)