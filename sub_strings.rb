def substrings(sentance, substrings)
  substring_hash = Hash.new(0)
  string_array = sentance.split(" ")
  substrings.each do |substring| 
    string_array.each do |string|
      if string.include?(substring)
        substring_hash[substring] += 1
      end
    end
  end

  print(substring_hash, "\n")
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)