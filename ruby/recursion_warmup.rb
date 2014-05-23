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
  words = str.strip.split(/\s+/)
  spaces = str.split(/\w+/)
  num = words.count
  result = ""
  until words.empty? || spaces.empty?
    result += "#{spaces.shift}#{words.shift}#{num}"
    num -= 1
  end
  result += spaces[0] unless spaces.empty?
  result += "#{words.first}#{num}" unless words.empty?
  result
end
# There has got to be a better way to do this! ^


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
