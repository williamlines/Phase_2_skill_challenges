require 'count_words'

RSpec.describe "Count words method" do
  it "works when empty" do
    result = count_words("")
    expect(result).to eq 0
  end

  it "return word number" do
    result = count_words("hello, my name is john doe")
    expect(result).to eq 6
  end
end
