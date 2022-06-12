# frozen_string_literal: true

# class covering the 99 bottles song
class Bottles
  def song
    verses(99, 0)
  end

  def verses(start_num, end_num)
    range = start_num.downto(end_num)
    range.map { |num| verse(num) }.join("\n")
  end

  def verse(num)
    line_one(num) +
      line_two(num) +
      line_three(num) +
      line_four(num)
  end

  def line_one(num)
    "#{bottle_amt(num).capitalize} of milk on the wall, "
  end

  def line_two(num)
    "#{bottle_amt(num)} of milk.\n"
  end

  def line_three(num)
    return 'Take it down and pass it around, ' if num == 1
    return 'Go to the store and buy some more, ' if num.zero?

    'Take one down and pass it around, '
  end

  def line_four(num)
    return "1 bottle of milk on the wall.\n" if num == 2
    return "99 bottles of milk on the wall.\n" if num < 1

    "#{bottle_amt(num - 1)} of milk on the wall.\n"
  end

  def bottle_amt(num)
    return "#{num} bottles" if num > 1
    return '1 bottle' if num == 1
    return 'no more bottles' if num < 1
  end
end
