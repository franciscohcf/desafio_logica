# frozen_string_literal: true

require '/home/franciscohcf/desafio_logica/miner'

describe 'Miner' do
  it 'removes grains of sand' do
    soil = '<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>'

    expect(Miner.new.remove_sand(soil)).not_to include '.'
  end

  it 'counts diamonds leftovers' do
    soil = '<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>'

    expect(Miner.new.leftovers(soil)).to eq 4
  end
end
