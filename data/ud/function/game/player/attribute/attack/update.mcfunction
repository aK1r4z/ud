#> ud:game/player/attribute/attack/update
# @public
# @param @s {score[player.attack.base, player.attack.per_lv, player.attack.boost_flat, player.attack.boost_percent]}
#
# 更新玩家的攻击力



## 计算并更新攻击力
execute store result score @s entity.attack run function ud:game/player/attribute/attack/calc
