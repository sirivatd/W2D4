require "byebug"

def my_min(list)
  i = 0
  while i < list.length
    j = i + 1
    while j < list.length
      if list[i] > list[j]
        list[i], list[j] = list[j], list[i]
      end
      j += 1
    end
    i += 1
  end
  return list.first
end
#O(n^2)

def my_min2(list)
  smallest_num = list.first
  (1...list.length).each do |i|
    if smallest_num > list[i]
      smallest_num = list[i]
    end
  end
  smallest_num
end
#O(n)

def sub_sums(list)
  sum_arr = []
  i = 0 
  while i < list.length 
    j = i + 1 
    while j < list.length
      sum_arr.push(list[i..j])
      j += 1
    end
    i += 1
  end
  k = 0 
  sums = []
  while k < sum_arr.length
    sum = 0 
    l = 0 
    while l < sum_arr[k].length 
      sum += sum_arr[k][l]
      l += 1
    end
    sums.push(sum)
    k += 1
  end
  sums.max
end
#0(n^3)


def sub_sums2(list)
  max_sum = list.max
  i = 1
  current_sum = list[0]
  # debugger
  while i < list.length 
    # while j < list.length 
      current_sum += list[i]
    if  current_sum > max_sum
      max_sum = current_sum
    elsif current_sum < 0 
      current_sum = 0
    end
   i += 1
  end
  max_sum
end 

