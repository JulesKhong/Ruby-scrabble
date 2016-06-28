class String
  define_method(:scrabble) do
    scrabble_values = Hash.new()
    scrabble_values.store(1,["a"])
    scrabble_values.store(10,["q", "z"])
    score = 0
    letter_array = self.split("")
    letter_array.each() do |letter|
      if            (scrabble_values.fetch(1)).include?(letter.downcase)
        score = score.+(1)
        elsif
         (scrabble_values.fetch(10)).include?(letter.downcase)
         score = score.+(10)
      end
    end
  score
  end
end
