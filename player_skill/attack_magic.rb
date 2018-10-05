# 攻撃魔法
def attack_magic(magic_point)
  @damage = rand(3..6)
  @mp = 5
  if magic_point < 5
    puts "MPが足りない！！"
  else
    @player.magic_point -= @mp
      puts @player.name + "の魔法攻撃！！ %iのダメージ" % @damage
      @monster.health_point = @monster.health_point -  @damage
  end
end
