# More non-recursive exercises...

def add_nums_to_words(str)
  return str if str.strip.empty?
  
  words = str.split(" ")
  num = words.count + 1
  words.map do |word|
    num -= 1
    "#{word}#{num}"
  end.join(" ")
end


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
