require "make_snippet"

RSpec.describe "make_snippet method" do
  it "return 1 word when given 1 word" do
    result = make_snippet("hello")
    expect(result).to eq "hello"
  end
  it "returns 5 words... when given 6 words" do
    result = make_snippet("hello, my name is John Doe")
    expect(result).to eq "hello, my name is John..."
  end
  it "returns 5 words... when given 6 + words" do
    result = make_snippet("hello, my name is John Doe add some words")
    expect(result).to eq "hello, my name is John..."
  end
end