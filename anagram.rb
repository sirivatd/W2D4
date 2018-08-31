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

def second_anagram?(str1, str2)
  char_arr = str1.split("")
  char_arr2 = str2.split("")

  char_arr.each do |el| 
    target = char_arr2.find_index(el)
    return false if target == nil
    char_arr2.delete_at(target)
  end
  char_arr2.empty?
end
#O(n)


def third_anagram?(str1, str2)
  str1_sorted = str1.split("").sort
  str2_sorted = str2.split("").sort
  
  str1_sorted == str2_sorted
  
end
#(nlogn)

def fourth_anagram?(str1, str2)
  str1_hash = Hash.new {|h, k| h[k] = 0}
  str2_hash = Hash.new {|h, k| h[k] = 0}
  
  str1_arr = str1.split("")
  str2_arr = str2.split("")
  
  str1_arr.each_with_index do |el, i|
    str1_hash[el] += 1
  end
  
  str2_arr.each_with_index do |el, i|
    str2_hash[el] += 1
  end
  
  str1_hash == str2_hash
end
#O(n)