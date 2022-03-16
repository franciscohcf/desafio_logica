# frozen_string_literal: true

class Miner
  def remove_sand(soil)
    soil.split('').reject { |element| element == ('.') }
  end

  def assess_soil(soil)
    left_side = 0
    right_side = 0

    soil.split('').each do |i|
      case i
      when '<'
        left_side += 1
      when '>'
        right_side += 1
      else
        next
      end
    end

    if left_side > right_side
      left_side - right_side
    else
      right_side - left_side
    end
  end
end
