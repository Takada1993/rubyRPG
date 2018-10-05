#encoding: utf-8
# 戦闘クラス
class Battle
  #attr_accessor :attack_point 
    
  def initialize(player, monster)
    @player = player
    @monster = monster
  end

  def attack
    puts "----------"
    print "1を入力すると攻撃,2を入力すると回復,3を入力すると攻撃魔法 > "
    input = gets.chomp.to_i
    if (input == 1)
      lucky()
        case @num
        when 1,2
          kaishin(@player.attack)
          puts @player.name + "の攻撃！！ 会心の一撃！　%iのダメージ" % @attack_point
          @monster.health_point = @monster.health_point - @attack_point
        else
          attack_judges(@player.attack)
            if @attack_point >= 1 && @attack_point <= 9 
              puts @player.name + "の攻撃！！ %iのダメージ" % @attack_point
              @monster.health_point = @monster.health_point - @attack_point
            else
              puts @player.name + "の攻撃！！ 攻撃がミスしました。"
            end
        end
    elsif (input == 2)
      heal(@player.magic_point)
    elsif (input == 3)
      attack_magic(@player.magic_point)
    end
    
    lucky()
      case @num
      when 1,2
        breath(@monster.magic_point)
      else
        lucky()
          case @num
          when 1,2
            kaishin(@monster.attack)
            puts @monster.name + "の攻撃！！ 会心の一撃！　%iのダメージ" % @attack_point
            @player.health_point = @player.health_point - @attack_point
          else
            attack_judges(@monster.attack)
              if @attack_point >= 1 && @attack_point <= 7 
                puts @monster.name + "の攻撃！！ %iのダメージ" % @attack_point
                @player.health_point = @player.health_point - @attack_point
              else
                puts @monster.name + "の攻撃！！ 攻撃がミスしました。"
              end
          end
      end
      
      puts @player.name + "の残ＨＰ %i,残MP %i" % [@player.health_point,@player.magic_point]
      puts @monster.name + "の残ＨＰ %i" % @monster.health_point

    @player.dead? or @monster.dead? # どちらかのキャラクターの hp が無くなったかの判定
  end
  
  def judges
    if @player.dead? and @monster.dead? # どちらも戦闘不能になった場合
      puts "相打ちになりました…"
    elsif @monster.dead?  # モンスターが戦闘不能になった場合
      puts "主人公が勝ちました！"
    elsif @player.dead? #主人公が戦闘不能になった場合
      puts "モンスターが勝ちました！"
    end
  end
  
  require './attack_judges'
  require './player_skill/heal.rb'
  require './player_skill/attack_magic.rb'
  require './monster_skill/breath.rb'
  

end