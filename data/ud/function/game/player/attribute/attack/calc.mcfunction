#> ud:game/player/attribute/attack/calc
# @public
# @param @s {score[player.attack.base, player.attack.per_lv, player.attack.boost_flat, player.attack.boost_percent]}
#
# 计算实体的攻击力



## 计算攻击力
scoreboard players operation attack temp = @s player.attack.base

# 计算玩家的每级攻击力加成
scoreboard players operation attack_by_lv temp = @s player.attack.base.per_lv
scoreboard players operation attack_by_lv temp *= @s player.love

scoreboard players operation attack temp += attack_by_lv temp

# 计算百分比攻击力加成
scoreboard players operation attack temp *= @s player.attack.boost_percent
scoreboard players operation attack temp /= #100 const

# 计算固定攻击力加成
scoreboard players operation attack temp += @s player.attack.boost_flat

# 返回计算结果
return run scoreboard players get attack temp
