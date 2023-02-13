def substrings(word, dictionary)
  wordLower = word.downcase

  result = dictionary.reduce({}) do |hash, substring|
    #Setup
    substringLower = substring.downcase
    length = substringLower.length
    howOften = 0
    possibleIndices = (0..word.length-length)

    #count occurences
    for index in possibleIndices do
      if wordLower[index...index+length] == substringLower
        howOften = howOften + 1
      end
    end

    #update hash
    if howOften > 0
      hash[substring] = howOften
    end

    #return hash
    hash
  end
end


wordList = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "Substrings in 'below':"
puts substrings("below", wordList)
puts "Substrings in 'Howdy partner, sit down! How's it going?':"
puts substrings("Howdy partner, sit down! How's it going?", wordList)