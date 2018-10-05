# 回復
def heal(magic_point)
  @maxHP = 50
  @heal_point = rand(1..5)
  @mp = 5
  if magic_point < 5
    puts "MPが足りない！！"
  else
    @player.health_point += @heal_point
      puts @player.name + "のHPが %i回復！！" % @heal_point
        if @player.health_point >= @maxHP
           @player.health_point = @maxHP
        end
    puts @player.name + "の残ＨＰ %i" % @player.health_point
    @player.magic_point -= @mp 
  end
end
