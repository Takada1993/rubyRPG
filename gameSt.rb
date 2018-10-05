#encoding: utf-8
require './player'
require './monster'
require './battle'
# ゲームクラス
class GameSt

  # ゲーム開始
  def start
    player = Player.new
    monster = Monster.new
    battle = Battle.new(player, monster)
    decision = false
    until decision do
      puts "----------"
      puts "主人公 HP:%i,MP:%i <-> モンスター HP:%i,MP:%i" % [player.health_point,player.magic_point,monster.health_point,monster.magic_point]
      print "ENTERキーを押下すると実行, 3を入力すると終了 > "
      input = gets.chomp.to_i
      if (input == 3)
        exit
      end
      decision = battle.attack
    end
    battle.judges
  end

end

game = GameSt.new
game.start
