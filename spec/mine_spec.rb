# frozen_string_literal: true

require '/home/franciscohcf/desafio_logica/mine'

describe 'Counts' do
  it 'the number of grains of sand' do
    soil = '<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>'

    expect(Mine.new.counts_sand(soil)).to eq 'O total de grãos de areia é: 9!'
  end

  it 'and mine diamonds' do
    soil = '<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>'

    expect(Mine.new.mine_diamonds(soil)).to eq 'O total de diamantes retirados é: 11!'
  end
end
