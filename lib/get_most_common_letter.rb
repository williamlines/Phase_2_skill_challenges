def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    if char != " "
      counter[char] += 1
    end
  end
  #p counter.to_a.sort_by { |k, v| v }.reverse
  counter.to_a.sort_by { |k, v| v }.reverse[0][0]
end

# Intended output:
# 
#p get_most_common_letter("the roof, the roof, the roof is on fire!")
#p "o"
