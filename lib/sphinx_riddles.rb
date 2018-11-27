class Sphinx
  attr_reader(:riddle1, :riddle2, :riddle3)
  def initialize
    @riddles = ["What goes on four feet in the morning, two feet at noon, and three feet in the evening?", "Naranjita, I strip away your navel-blush veneer of zest and peel; your pithy heart falls apart, yields to me a citrus kiss.", "Three eyes have I, all in a row; when the red one opens, all freeze.", "What can run but never walks, has a mouth but never talks, has a head but never weeps, has a bed but never sleeps?", "I have holes in my top and bottom, my left and right, and in the middle. But I still hold water. What am I?"].sample(3)
    @riddle1 = @riddles[0]
    @riddle2 = @riddles[1]
    @riddle3 = @riddles[2]
  end

  def riddle_answer(answer, riddle)
    if riddle.include?("feet")
      answer.downcase.include?("man")
    elsif riddle.include?("citrus")
      answer.downcase.include?("orange")
    elsif riddle.include?("freeze")
      answer.downcase.include?("traffic light")
    elsif riddle.include?("weeps")
      answer.downcase.include?("river")
    elsif riddle.include?("holes")
      answer.downcase.include?("sponge")
    end
  end
end
