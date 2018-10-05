#encoding: utf-8
# モンスタークラス
class Monster
  attr_accessor :name, :health_point, :attack,:defense,:magic_point

  def initialize
    @name = "モンスター"
    @health_point = 80
    @attack = 3
    @magical_power = 3
    @defense = 5
    @magic_point = 15
  end

  def dead?
    @health_point <= 0
  end
end
