#> ud:game/player/damage/calc/full
# @public
# @param scoreboard {
#       temp {
#           damage  伤害值
#           defense 防御力
#           def_f   防御系数
#           pen_p   护甲穿透百分比
#           pen_f   护甲穿透固定值
#           dre_p   伤害减免百分比
#           dre_f   伤害减免固定值
#        }
#    }
#
# 计算实体受到的伤害，完整的参数和计算过程。



## 检查输入参数
# 伤害值不能为负数
execute if score damage temp matches ..-1 run return 0

# 防御力小于零时，直接返回伤害值
execute if score defense temp matches ..-1 run return run scoreboard players get damage temp

# 护甲穿透不能为负数
execute if score pen_p temp matches ..-1 run scoreboard players set pen_p temp 0
execute if score pen_f temp matches ..-1 run scoreboard players set pen_f temp 0

# 伤害减免不能为负数
execute if score dre_p temp matches ..-1 run scoreboard players set dre_p temp 0
execute if score dre_f temp matches ..-1 run scoreboard players set dre_f temp 0



## 计算护甲穿透
scoreboard players operation defense_calc temp = defense temp

# 护甲穿透百分比
scoreboard players set pen_p_calc temp 100
scoreboard players operation pen_p_calc temp -= pen_p temp

scoreboard players operation defense_calc temp *= pen_p_calc temp
scoreboard players operation defense_calc temp /= #100 const

# 护甲穿透固定值
scoreboard players operation defense_calc temp -= pen_f temp

# 防御力小于零时，直接返回伤害值
execute if score defense_calc temp matches ..-1 run return run scoreboard players get damage temp



## 计算伤害减免
# 这里为了数据的准确性做了几个化简，会降低可读性，但是真的很快很好用
scoreboard players operation defense_calc temp += def_f temp

scoreboard players set dre_p_calc temp 100
scoreboard players operation dre_p_calc temp -= dre_p temp

scoreboard players operation damage_calc temp = damage temp
scoreboard players operation damage_calc temp *= def_f temp
scoreboard players operation damage_calc temp *= dre_p_calc temp

scoreboard players operation damage_calc temp /= defense_calc temp
scoreboard players operation damage_calc temp /= #100 const

# 伤害减免固定值
scoreboard players operation damage_calc temp -= dre_f temp

# 伤害值不能为负数
execute if score damage_calc temp matches ..-1 run return 0

## 返回结果
return run scoreboard players get damage_calc temp
