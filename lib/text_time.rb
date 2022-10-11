def text_time(text)
  word_num = text.split(" ").length
  words_per_second = 0.3
  time = word_num.to_f * words_per_second
  return "#{time.to_i} seconds"
end