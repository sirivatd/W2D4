def first_anagram?(str1, str2)
  possibilities = []
  char_arr = str1.split("")
  i = 0 
  while i < char_arr.length
    j = i + 1
    while j < char_arr.length
      possibilities.push(char_arr[i..j].join)
      j += 1
    end
    i += 1
  end
  possibilities.include?(str2)
end