class String
  define_method(:title_case) do
    split_sentence = self.split()
    split_sentence.each do |word|
    conjunctions = ["the", "and", "of", "or", "but", "in", "on"]
      if conjunctions.include?(word)
        next
      else
      word.capitalize!()
      end
    split_sentence.first().capitalize!()
    end
    split_sentence.join(" ")
  end
end
