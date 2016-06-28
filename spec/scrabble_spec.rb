require('rspec')
require('scrabble.rb')

describe('String#scrabble') do
    it("returns a scrabble score for a letter") do
      expect("a".scrabble()).to(eq(1))
    end
    it("returns a scrabble score for a letter with a different point value") do
      expect("z".scrabble()).to(eq(10))
    end
    it("returns a scrabble score for multiple letters with different point values") do
      expect("za".scrabble()).to(eq(11))
    end
    it("returns a scrabble score for word") do
      expect("aeiou dgqz".scrabble()).to(eq(29))
    end
    # it("returns a scrabble score for word") do
    #   expect("zambia".scrabble()).to(eq(19))
    # end
end
