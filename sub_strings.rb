dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
string = "Howdy partner, sit down! How's it going?"

  def substrings(words, dictionary)
    dictionary.reduce(Hash.new(0)) do |hash, dictionary_word|
      words.downcase.split.each do |word|
        hash[dictionary_word] += 1 if word.include?(dictionary_word)
      end
      hash
    end
  end

  substrings(string, dictionary)