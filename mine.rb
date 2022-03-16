# frozen_string_literal: true

require '/home/franciscohcf/desafio_logica/miner'

class Mine
  def counts_diamonds(soil)
    @diamonds = 0

    soil = soil.split('').reject { |element| element == ('.') }

    soil.each_with_index do |_e, i|
      next unless soil[i] + soil[i + 1] == '<>'

      @diamonds += 1

      2.times do
        soil.delete_at(i)
      end
    end

    @diamonds
  end

  def counts_sand(soil)
    @grains = 0

    soil = soil.split('')

    soil.each do |i|
      @grains += 1 if i == '.'
    end

    @grains
  end
end
