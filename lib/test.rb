punctuation = ["!",'?','.']

sentence = "hello my name is john doe"


letters = sentence.split(" ").pop.split("")

if letters.length == (letters - punctuation).length
  puts "error"
end