# frozen_string_literal: true

class Mine
  def counts_diamonds(soil); end

  def counts_sand(soil)
    @count = 0

    soil = soil.split('')

    soil.each do |i|
      @count += 1 if i == '.'
    end

    @count
  end
end
