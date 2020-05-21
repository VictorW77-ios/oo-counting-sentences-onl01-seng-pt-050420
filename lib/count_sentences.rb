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
    # thank you StackOverflow. Here's the breakdown: [^] is a negation operator; we're looking for characters that are NOT .! or ?
  end
end