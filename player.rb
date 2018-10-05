#encoding: utf-8
# 主人公クラス
class Player
  attr_accessor :name, :health_point, :attack,:defense,:magic_point

  def initialize
    @name = "主人公"
    @health_point = 50
    @attack = 5
    @magical_power = 5
    @defense = 3
    @magic_point = 20
  end

  def dead?
    @health_point <= 0
  end
end