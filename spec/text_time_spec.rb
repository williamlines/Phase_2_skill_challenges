require "text_time"

RSpec.describe "text_time method" do
  it "0 words gives 0 time" do
    result = text_time("")
    expect(result).to eq "0 seconds"
  end
  it "n number of words returns x minutes" do
    result = text_time("hello my name is john doe plus some extra words")
    expect(result).to eq "3 seconds"
  end

end



