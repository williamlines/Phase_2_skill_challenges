class GrammarStats
  def initialize
    @successes = 0.to_f
    @total = 0.to_f

  end
  
  # Returns true or false depending on whether the text begins with a capital
  # letter and ends with a sentence-ending punctuation mark.
  def check(text) # text is a string
    if text[0] == text[0].upcase
      if [".","!","?"].include?(text[-1])
        @successes += 1
        @total += 1
        return true
      else
        @total += 1
        return false
      end
    else
      @total += 1
      return false
    end
  end
  # Returns as an integer the percentage of texts checked so far that passed
  # the check defined in the `check` method. The number 55 represents 55%.
  
  def percentage_good
    return (@successes / @total) * 100
  end
end