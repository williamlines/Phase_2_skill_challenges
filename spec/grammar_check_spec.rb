require "grammar_check"

RSpec.describe "grammar_check method" do
  it "returns 'capitalization error' when given 'incorrectly capitalized sentence'" do
    result = grammar_check("hello world!")
    expect(result).to eq "capitalization error"
  end
  it "returns 'punctuation error' when given 'incorrectly punctuated sentence'" do
    result = grammar_check("Hello world")
    expect(result).to eq "punctuation error"
  end
  it "returns 'correct' when given correct sentence" do
    result = grammar_check("Hello world.")
    expect(result).to eq "correct"
  end
  it "returns 'capitalization and punctuation error' when given very wrong sentence" do
    result = grammar_check("hello world")
    expect(result).to eq 'capitalization and punctuation error'
  end
end