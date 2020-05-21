require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true 
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else 
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count
  end
end 

## thank you StackOverflow. Here's the breakdown for the count_sentences method: [^] is a negation operator; we're looking for characters that are NOT ' . ' ' ! ' or ' ? '. The ' + ' operator lets us ignore '...'- a test condition that really held me up for a sec! The 'strip' command removes whitespaces from a string.