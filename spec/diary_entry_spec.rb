require "diary_entry"

RSpec.describe DiaryEntry do
  it "initializes and successfully returns title and contents" do
    diary_entry = DiaryEntry.new("This is the title", "And this is the contents")
    expect(diary_entry.title).to eq "This is the title"
    expect(diary_entry.contents).to eq "And this is the contents"
  end
  it "can return the word count" do
    diary_entry = DiaryEntry.new("title", "this diary entry contains six words")
    expect(diary_entry.count_words).to eq 6
  end
  it "can give an estimate of the reading time given the users wpm" do
    diary_entry = DiaryEntry.new("title", "one two three four five six seven eight nine ten")
    expect(diary_entry.reading_time(1)).to eq 10
    expect(diary_entry.reading_time(2)).to eq 5
  end
  it "can return a chunk of text equivalent to what a reader can read in the given time at given speed" do
    diary_entry = DiaryEntry.new("title", "one two three four five six seven eight nine ten")
    expect(diary_entry.reading_chunk(1, 5)).to eq "one two three four five"
  end
  it "check the reading chunk method can skip to the next chunk" do
    diary_entry = DiaryEntry.new("title", "one two three four five six seven eight nine ten")
    expect(diary_entry.reading_chunk(1, 5)).to eq "one two three four five"
    expect(diary_entry.reading_chunk(1, 5)).to eq "six seven eight nine ten"
  end
  it "returns only the remaining words in the text if more than remaining words can be read" do
    diary_entry = DiaryEntry.new("title", "one two three four five six seven eight nine ten")
    expect(diary_entry.reading_chunk(1, 5)).to eq "one two three four five"
    expect(diary_entry.reading_chunk(1, 5)).to eq "six seven eight nine ten"
    expect(diary_entry.reading_chunk(1, 5)).to eq "one two three four five"
  end
end