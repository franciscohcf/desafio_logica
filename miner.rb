# frozen_string_literal: true

class Miner
  def remove_sand(soil)
    soil.split('').reject { |element| element == ('.') }
  end

  def assess_soil(soil)
    lesser = 0
    bigger = 0
    leftover = 0

    soil.split('').each do |i|
      case i
      when '<'
        lesser += 1
      when '>'
        bigger += 1
      end
    end

    leftover = if lesser > bigger
                 lesser - bigger
               else
                 bigger - lesser
               end
  end
end
