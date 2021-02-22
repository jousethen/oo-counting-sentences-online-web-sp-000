require 'pry'

class String

  def sentence?
    return true if self.end_with?(".")
    return false
  end

  def question?
    return true if self.end_with?("?")
    return false
  end

  def exclamation?
    return true if self.end_with?("!")
    return false
  end

  def count_sentences
    sentence_count = 0 
    
    sentence_count = self.split(" ").count do |x|
     
      if x.sentence? || x.question? || x.exclamation?
        return true
      end
    end
   
  end
end