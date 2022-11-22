require 'pry'

class String

  def sentence?
    return self.end_with?(".")
  end

  def question?
    return self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    delimiters = [".", "!", "?"]
    count = self.split(Regexp.union(delimiters)).filter { |chunk| !chunk.empty?}.count
    return count
  end
end