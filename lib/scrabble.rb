class String
  define_method(:scrabble) do
    scrabble_values = Hash.new()
    scrabble_values.store(1,["a","e","i","o","u","l","n","r","s","t"])
    scrabble_values.store(2,["d","g"])
    scrabble_values.store(10,["q", "z"])
    score = 0
    letter_array = self.split("")
    letter_array.each() do |letter|
      if            (scrabble_values.fetch(1)).include?(letter.downcase)
        score = score.+(1)
        elsif
         (scrabble_values.fetch(2)).include?(letter.downcase)
         score = score.+(2)
       elsif
        (scrabble_values.fetch(10)).include?(letter.downcase)
        score = score.+(10)
      else
        score = score.+(0)
      end
    end
  score
  end
end
