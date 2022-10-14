require "diary"
require "diary_entry"

RSpec.describe "diary and diary_entry integration" do
  it "can add and retrieve a diary entry" do
    diary_entry1 = DiaryEntry.new("title", "contents")
    diary_entry2 = DiaryEntry.new("title2", "contents2")
    diary = Diary.new
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    expect(diary.all).to eq "title\ntitle2"
  end
  it "count_words" do
    diary_entry1 = DiaryEntry.new("title", "contents add more words")
    diary_entry2 = DiaryEntry.new("title2", "contents2 add a couple more")
    diary = Diary.new
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    expect(diary.count_words).to eq 9
  end  
  it "reading_time at 1 word per minute" do
    diary_entry1 = DiaryEntry.new("title", "contents add more words")
    diary_entry2 = DiaryEntry.new("title2", "contents2 add a couple more")
    diary = Diary.new
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    expect(diary.reading_time(1)).to eq 9
  end      
  it "best entry for reading time" do
    diary_entry1 = DiaryEntry.new("title1", "contents add more words")
    diary_entry2 = DiaryEntry.new("title2", "contents2 add a couple more")
    diary_entry3 = DiaryEntry.new("title3", "contents add more words blah blah ")
    diary_entry4 = DiaryEntry.new("title4", "contents2 add a couple more blah blah")
    diary = Diary.new
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    diary.add(diary_entry3)
    diary.add(diary_entry4)
    expect(diary.find_best_entry_for_reading_time(1,6)).to eq "title3"
  end
end