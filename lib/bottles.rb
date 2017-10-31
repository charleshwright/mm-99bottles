class Bottles
  def verses (v1, v2)
    verse(v1)
    verse(v2)
  end

  def verse (bottleCount)
    bottleCountAfter = bottleCount - 1
    firstLine =  "#{bottleCount} bottles of beer on the wall, #{bottleCount} bottles of beer."
    secondLine = "\n" + "Take one down and pass it around, #{bottleCountAfter} bottles of beer on the wall." + "\n"
    if bottleCountAfter == 1
      secondLine = "\n" + "Take one down and pass it around, #{bottleCountAfter} bottle of beer on the wall." + "\n"
    end
    if bottleCountAfter == 0
      firstLine =  "#{bottleCount} bottle of beer on the wall, #{bottleCount} bottle of beer."
      secondLine = "\n" + "Take it down and pass it around, no more bottles of beer on the wall." + "\n"
    end
    if bottleCount == 0
      firstLine = "No more bottles of beer on the wall, no more bottles of beer."
      secondLine = "\n" + "Go to the store and buy some more, 99 bottles of beer on the wall."  + "\n"
    end
    return firstLine + secondLine
  end
end
