require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    count = 0  
    sentence_array = self.split(/\s/)
    sentence_array.each do |word|
      if word.question? || word.sentence? || word.exclamation?
        count+=1 
      end
    end
    count 
  end
end