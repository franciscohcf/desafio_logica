# frozen_string_literal: true

require '/home/franciscohcf/desafio_logica/mine'

describe 'User counts' do
  it 'the number of grains of sand' do
    soil = '<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>'

    expect(Mine.new.counts_sand(soil)).to eq 9
  end

  it 'the number of diamonds' do
    soil = '<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>'

    expect(Mine.new.counts_diamonds(soil)).to eq 11
  end
end
