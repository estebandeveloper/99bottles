class Bottles
  def verse(x)
    result = <<-VERSE
#{x} bottles of beer on the wall, #{x} bottles of beer.
Take one down and pass it around, #{x-1} bottles of beer on the wall.
VERSE
  end
end
