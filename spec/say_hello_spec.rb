require "say_hello"

RSpec.describe "say_hello method" do
  it "says hello" do
    expect(say_hello("John")).to eq "hello John"
  end
end