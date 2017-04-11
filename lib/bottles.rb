class Bottles
  def verse(x)
    remaining, take, total = calculate(x)
    <<-VERSE
#{total.capitalize} of beer on the wall, #{total} of beer.
#{take}, #{remaining} of beer on the wall.
VERSE
  end

  def verses(from, to)
    times = *(to..from)
    times.reverse.map {|x| verse(x)}.join("\n")
  end

  def song
    verses(99,0)
  end

  def calculate(qty)
    case qty
    when 2 then ['1 bottle', 'Take one down and pass it around', "#{qty} bottles"]
    when 1 then ['no more bottles', 'Take it down and pass it around', '1 bottle']
    when 0 then ['99 bottles', 'Go to the store and buy some more', 'no more bottles']
    else ["#{qty-1} bottles", 'Take one down and pass it around', "#{qty} bottles"]
    end
  end

end
