# frozen_string_literal: true

require '/home/franciscohcf/desafio_logica/mine'

require '/home/franciscohcf/desafio_logica/miner'

class Main
  soil = '<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>'

  puts "Solo a ser minerado: #{soil}"

  puts

  puts 'Iniciando processo de mineração...'

  puts

  puts 'Removendo e contando grãos de areia...'

  puts

  puts "Total de grãos de areia: #{Mine.new.counts_sand(soil)}!"

  soil = Miner.new.remove_sand(soil)

  puts

  puts 'Iniciando avaliação do solo...'

  puts

  puts "Total de diamantes retirados: #{Mine.new.mine_diamonds(soil)}!"
end
