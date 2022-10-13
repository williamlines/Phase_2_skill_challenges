require "grammar_stats"

RSpec.describe GrammarStats do
  it "can check for capitalization and punctuation with .check" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("This is a correct sentence!")).to be true
    expect(grammar_stats.check("This is an incorrect sentence")).to be false
    expect(grammar_stats.check("this is an incorrect sentence?")).to be false
    expect(grammar_stats.check("")).to be false
  end
  it "can give a percentage of failures to successes" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("This is a correct sentence!")).to be true
    expect(grammar_stats.check("This is an incorrect sentence")).to be false
    expect(grammar_stats.check("this is an incorrect sentence?")).to be false
    expect(grammar_stats.percentage_good).to eq 33.33333333333333
  end
end