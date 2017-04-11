class Bottles
  def verse(x)
    remaining = (x-1) == 1 ? "#{x-1} bottle" : "#{x-1} bottles"

    result = <<-VERSE
#{x} bottles of beer on the wall, #{x} bottles of beer.
Take one down and pass it around, #{remaining} of beer on the wall.
VERSE
  end
end
