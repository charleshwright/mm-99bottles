class Bottles
  def verses (v1, v2)
    verse(v1)
    verse(v2)
  end

  def verse (bottleCount)
    bottleCountAfter = bottleCount - 1

    twoBottlesLeft = bottleCount == 2
    oneBottleLeft = bottleCount == 1
    noBottlesLeft = bottleCount == 0

    firstLine =  "#{bottleCount} bottles of beer on the wall, #{bottleCount} bottles of beer."
    secondLine = "\n" + "Take one down and pass it around, #{bottleCountAfter} bottles of beer on the wall." + "\n"

    if twoBottlesLeft
      secondLine = "\n" + "Take one down and pass it around, #{bottleCountAfter} bottle of beer on the wall." + "\n"
    end
    if oneBottleLeft
      firstLine =  "#{bottleCount} bottle of beer on the wall, #{bottleCount} bottle of beer."
      secondLine = "\n" + "Take it down and pass it around, no more bottles of beer on the wall." + "\n"
    end
    if noBottlesLeft
      firstLine = "No more bottles of beer on the wall, no more bottles of beer."
      secondLine = "\n" + "Go to the store and buy some more, 99 bottles of beer on the wall."  + "\n"
    end
    return firstLine + secondLine
  end
end
