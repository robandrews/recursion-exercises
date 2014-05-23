def range(first, last)
  if first == last
    return [last]
  else
    [first] + range(first + 1, last)
  end
end

def recursive_sum(array)
  return if array.empty?
  return array.first if array.size == 1
  return array.pop + recursive_sum(array)
end

def iterative_sum(array)
  if array.empty?
    puts "Error!"
    return
  end
  total = 0
  array.each do |num|
    total += num
  end
  total
end

# More non-recursive exercises...

def add_nums_to_words(str)
  words = str.split(/\s+/)
  spaces = str.split(/\w+/)
  num = words.count + 1
  words.map! do |word|
    num -= 1
    !word.empty? ? "#{word}#{num}#{spaces[-num]}" : "#{word}#{spaces[-num]}"
  end.join
end

# p add_nums_to_words("   hi    my name   is  alex  ")

def combine_sorted_lists(arr1, arr2)
  i, j = 0, 0
  result = []
  while result.count < (arr1.count + arr2.count)
    if !arr1[i].nil? && arr1[i] <= arr2[j]
      result << arr1[i]
      i += 1
    else
      result << arr2[j]
      j += 1
    end
  end
  result
end
