# File: lib/diary.rb
require "diary_entry"

class Diary
  def initialize
    @entries = []
  end

  def add(entry) 
    @entries << entry
    # entry is an instance of DiaryEntry
  end

  def all
    titles = []
    @entries.each do |entry|
      titles << entry.title
    end
    return titles.join("\n")

    # Returns a list of instances of DiaryEntry
  end

  def count_words
    word_count = 0
    @entries.each{ |entry| word_count += entry.count_words}
    return word_count
  end

  def reading_time(wpm)
    time = 0
    @entries.each do |entry|
      time += entry.reading_time(wpm)
    end
    return time
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    #words_can_be_read = wpm * minutes
    suitable = {}
    @entries.each do |entry| 
      if entry.reading_time(wpm) <= minutes
        suitable[entry.title] = entry.reading_time(wpm)
      end
    end
    suitable.sort_by{|k,v| v}
    return suitable.to_a[-1][0]

    
    
      # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  end
end