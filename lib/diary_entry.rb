class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @contents_as_array = contents.split(" ")
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    return @contents.split(" ").length
  end

  def reading_time(wpm) 
    return (count_words.to_f / wpm.to_f)
  end

  def reading_chunk(wpm, minutes) 
    @words_can_read = wpm.to_f * minutes.to_f
    if @contents_as_array != []
      chunk = @contents_as_array.first(@words_can_read)
      @contents_as_array.shift(@words_can_read)
      return chunk.join(" ")
    else
      @contents_as_array = contents.split(" ")
      chunk = @contents_as_array.first(@words_can_read)
      @contents_as_array.shift(@words_can_read)
      return chunk.join(" ")
    end
  end
end