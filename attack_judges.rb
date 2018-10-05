# 攻撃補正  
def attack_judges(attack_point)
    @attack_point = attack_point - 5 + rand(10)
end

def lucky
    @num = rand(1..10)
end

def kaishin(attack_point)
    @attack_point = attack_point * 2
end
