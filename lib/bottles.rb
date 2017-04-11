class Bottles
  def verse(x)
    total = x == 1 ? '1 bottle' : "#{x} bottles"
    take = x == 1 ? 'it' : 'one'

    result = <<-VERSE
#{total} of beer on the wall, #{total} of beer.
Take #{take} down and pass it around, #{remaining(x)} of beer on the wall.
VERSE
  end

  def remaining(qty)
    case qty
    when 2 then '1 bottle'
    when 1 then 'no more bottles'
    else "#{qty-1} bottles"
    end
  end

end
