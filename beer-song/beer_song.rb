class BeerSong
  def self.recite(start, num_verses)
    finish = start - num_verses + 1
    finish = finish < 0 ? 0 : finish
    start.downto(finish).map{|i| self.verse(i)}.join("\n")
  end

  def self.verse(num)
    case num
    when 0
      "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, " +
      "1 bottle of beer.\n" +
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n"
    when 2
      "2 bottles of beer on the wall, " +
      "2 bottles of beer.\n" +
      "Take one down and pass it around, " +
      "1 bottle of beer on the wall.\n"
    else
      "#{num} bottles of beer on the wall, " +
      "#{num} bottles of beer.\n" +
      "Take one down and pass it around, " +
      "#{num-1} bottles of beer on the wall.\n"
    end
  end
end

puts BeerSong.recite(99, 1)