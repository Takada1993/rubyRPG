# ブレス
def breath(magic_point)
  @damage = rand(3..6)
  @monster.magic_point = magic_point - 5
  
  if @monster.magic_point < 0
    @monster.magic_point = magic_point
      puts @monster.name + "のブレス攻撃！！MPが足りない！"
  else
    puts @monster.name + "のブレス攻撃！！%iのダメージ！！MPを5消費！" % @damage
    @player.health_point = @player.health_point - @damage
  end
end