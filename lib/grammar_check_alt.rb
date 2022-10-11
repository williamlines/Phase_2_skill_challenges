def grammar_check(sentence)
  punctuation = ["!",'?','.']
  letters = sentence.split(" ").pop.split("")
  if sentence[0].upcase != sentence[0] && letters.length == (letters - punctuation).length
    return 'capitalization and punctuation error'
  elsif sentence[0].upcase != sentence[0]
    return "capitalization error"
  elsif letters.length == (letters - punctuation).length
    return "punctuation error"    
  else
    return "correct"
  end
end

