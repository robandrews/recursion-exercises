# very slow, easy, naive approach...
# need to include letters points, and better time efficiency

DICTIONARY = File.readlines("dictionary.txt").map { |word| word.chomp }

def find_words(str)
  dictionary = DICTIONARY.select { |word| word.length <= str.length }
  lets = str.split("")
  options = []
  (2..lets.count).each do |n|
    options += get_combos(lets, dictionary, n)
  end
  options
end

def get_combos(letters, dic, length)
  letters.permutation(length).to_a
      .map { |w| w.join }
      .select { |w| dic.include?(w) }.uniq
end

letters = "llopiws"
find_words(letters).each do |word|
  puts word
end

