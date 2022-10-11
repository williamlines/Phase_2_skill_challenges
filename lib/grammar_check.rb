def grammar_check(sentence)
  punctuation = ["!",'?','.']
  if sentence[0].upcase != sentence[0] && !punctuation.include?(sentence[-1])
    return 'capitalization and punctuation error'
  elsif sentence[0].upcase != sentence[0]
    return "capitalization error"
  elsif !punctuation.include?(sentence[-1])
    return "punctuation error"    
  else
    return "correct"
  end
end