
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
