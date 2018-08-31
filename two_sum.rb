require 'byebug'

def bad_two_sum?(arr, target_sum)
  i = 0
  sums = []
  while i < arr.length
    j = i + 1
    while j < arr.length
      sums.push([i,j]) if arr[i] + arr[j] == target_sum
      j += 1
    end
    i += 1
  end
  !sums.empty?
end

  def bsearch(arr, target)
    return false if arr.length < 1
    mid = arr.length/2
    
    case arr[mid] <=> target
    when 1 
      bsearch(arr[0...mid], target)
    when 0
      return true
    when -1
      bsearch(arr[mid + 1..-1], target)

    end
  end
  
  def okay_two_sum?(arr, target_sum)
    arr = arr.sort
    found_pair = false
    
    i = 0
    while i < arr.length
      target = target_sum - arr[i]
      temp_arr = arr.dup
      temp_arr.delete_at(i)
      found_pair = bsearch(temp_arr, target)
      return true if found_pair
      i += 1
    end
    found_pair
  end
  
  def two_sum?(arr, target_sum)
    hash = Hash.new {|h,k| h[k] = 0}
    arr.each do |el|
      hash[el] += 1
    end
    i = 0
    while i < arr.length
      
      target = target_sum - arr[i]
      hash[arr[i]] -= 1
      return true if hash[target] > 0
      hash[arr[i]] += 1
      i += 1
    end
    
    return false
    
  end