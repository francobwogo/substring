def substrings(string, dictionary)
  # Convert the input string to lowercase to ensure case-insensitive searching
  lowercase_string = string.downcase

  # Initialize an empty hash with a default value of 0
  # This will store the count of occurrences of each word from the dictionary
  counts = Hash.new(0)

  # Iterate through each word in the dictionary
  dictionary.each do |word|
    # Use the 'scan' method to find all occurrences of 'word' in the string
    # 'scan' returns an array of all matches, and '.size' returns the number of occurrences
    counts[word] = lowercase_string.scan(word).size
  end

  # Return a filtered hash with only non-zero counts
  counts.select { |word, count| count > 0 }
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)