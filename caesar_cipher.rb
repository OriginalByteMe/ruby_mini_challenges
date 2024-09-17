def caesar_cipher(message, shift_factor)
  # De-capitalize the words to lowercase
  message = message.downcase

  # Split message by words into an array
  words = message.split(' ')
  print("Words #{words}")
  # For each word, convert to hexadecimal
  words = words.map do |word|
    print("word processing is: #{word}\n")
    hex_array = word.bytes
    print("\nhex_array:", hex_array)
    # Shift array by shift_factor (must be within range of 97-122, if the hex is already outside of it ignore)
    hex_array = hex_array.map do |hex|
      if hex > 122 || hex < 97
        hex
      else
        wrap_around_subtraction(hex, shift_factor)
      end
    end
    print("\nconverted hex array: ", hex_array)
    # Convert hex back into words
    hex_array.pack('c*')
  end

  result = words.join(' ')
  return result
end

def wrap_around_subtraction(number, shift_factor, lower_bound = 97, upper_bound = 122)
  result = number - shift_factor
  if result < lower_bound
    result = upper_bound - (lower_bound - result - 1)
  end
  result
end

print("\nword is: ",caesar_cipher("hello? World!", 3))