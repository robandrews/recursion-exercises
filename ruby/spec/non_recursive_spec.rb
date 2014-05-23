require_relative '../non_recursive'

describe "#add_nums_to_words" do
  it "should add decreasing numbers after words, when given a string" do
    expect(add_nums_to_words("This is a test")).to eq("This4 is3 a2 test1")
    expect(add_nums_to_words("This is not recursion")).to eq("This4 is3 not2 recursion1")
  end
  
  it "should return the string itself if the string doesn't have words" do
    expect(add_nums_to_words("")).to eq("")
    expect(add_nums_to_words(" ")).to eq(" ")
  end
  
  it "should handle single word strings" do
    expect(add_nums_to_words("Test")).to eq("Test1")
  end
  
  it "retains leading and trailing spaces" do
    expect(add_nums_to_words("  testing this  ")).to eq("  testing2 this1  ")
  end
end

describe "#combine_sorted_lists" do
  it "should return a combined sorted array, when given two sorted arrays" do
    expect(combine_sorted_lists([1, 2],[3, 4])).to eq([1, 2, 3, 4])
    expect(combine_sorted_lists([1, 2, 3], [1, 2, 3])).to eq([1, 1, 2, 2, 3, 3])
  end
  
  it "should handle cases where one of the arrays is empty" do
    expect(combine_sorted_lists([], [1, 2, 3])).to eq([1, 2, 3])
    expect(combine_sorted_lists([], [1, 2, 3])).to eq([1, 2, 3])
  end
  
  it "should handle cases where both arrays are empty" do
    expect(combine_sorted_lists([], [])).to eq([])
  end
  
  it "should raise an error if only one array is given" do
    expect {combine_sorted_lists([])}.to raise_error
  end
end