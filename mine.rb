# frozen_string_literal: true

require '/home/franciscohcf/desafio_logica/miner'

class Mine
  def mine_diamonds(soil)
    diamonds = 0

    leftovers = Miner.new.assess_soil(soil)

    soil = Miner.new.remove_sand(soil)

    while soil.length > leftovers
      soil.each_with_index do |_e, i|
        next unless !soil[i + 1].nil? && soil[i] + soil[i + 1] == '<>'

        diamonds += 1

        2.times do
          soil.delete_at(i)
        end
      end
    end

    print soil
    diamonds
  end

  def counts_sand(soil)
    grains = 0

    soil = soil.split('')

    soil.each do |i|
      grains += 1 if i == '.'
    end

    grains
  end
end
