class String
  define_method(:scrabble_sinatra) do

  score = 0

  wordarray = self.split("")
  wordarray.each() do |letter|
    if letter.==("a")|letter.==("e")|letter.==("i")|letter.==("o")|letter.==("u")|letter.==("l")|letter.==("n")|letter.==("r")|letter.==("s")|letter.==("t")
      score = score + 1
    elsif letter.==("d")|letter.==("g")
      score = score + 2
    elsif letter.==("b")|letter.==("c")|letter.==("m")|letter.==("p")
      score = score + 3
    elsif letter.==("f")|letter.==("h")|letter.==("v")|letter.==("w")|letter.==("y")
      score = score + 4
    elsif letter.==("k")
      score = score + 5
    elsif letter.==("j")|letter.==("x")
      score = score + 8
    elsif letter.==("q")|letter.==("z")
      score = score + 10
    else
      "0"
    end
  end
  score
end
end
