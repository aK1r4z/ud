#> ud:load/scoreboard/player
# @within function ud:load/scoreboard
#
# 创建玩家计分板对象



## 玩家基础属性
scoreboard objectives add player.exp dummy "玩家处决点数"
scoreboard objectives add player.love dummy "玩家暴力等级"

scoreboard objectives add player.health.max dummy "玩家最大生命值"
scoreboard objectives add player.health.max.base dummy "玩家基础最大生命值"
scoreboard objectives add player.health.max.base.per_lv dummy "玩家基础最大生命值每级加成"
scoreboard objectives add player.health.max.boost_percent dummy "玩家最大生命值加成百分比"
scoreboard objectives add player.health.max.boost_flat dummy "玩家最大生命值加成固定值"

scoreboard objectives add player.attack.base dummy "玩家基础攻击力"
scoreboard objectives add player.attack.base.per_lv dummy "玩家基础攻击力每级加成"
scoreboard objectives add player.attack.boost_percent dummy "玩家攻击力加成百分比"
scoreboard objectives add player.attack.boost_flat dummy "玩家攻击力加成固定值"

# 防御力
scoreboard objectives add player.defense dummy "玩家防御力"



## 玩家进阶属性
# 生命恢复加成
scoreboard objectives add player.health_recover_boost_percent dummy "玩家生命恢复加成百分比"
scoreboard objectives add player.health_recover_boost_flat dummy "玩家生命恢复加成固定值"

# 生命恢复
scoreboard objectives add player.health_regeneration dummy "玩家生命恢复速度"
scoreboard objectives add player.health_regeneration.timer dummy "玩家生命恢复计时"

# 防御系数
scoreboard objectives add player.defense_factor dummy "玩家防御系数"
scoreboard objectives add player.defense_factor.base dummy "玩家基础防御系数"
scoreboard objectives add player.defense_factor.base.per_lv dummy "玩家基础防御系数每级加成"

# 护甲穿透
scoreboard objectives add player.penetration_percent dummy "玩家护甲穿透百分比"
scoreboard objectives add player.penetration_flat dummy "玩家护甲穿透固定值"

# 伤害减免
scoreboard objectives add player.damage_reduction_percent dummy "玩家伤害减免百分比"
scoreboard objectives add player.damage_reduction_flat dummy "玩家伤害减免固定值"



## 玩家技能
scoreboard objectives add player.skill.0.value dummy "玩家技能0数值"
scoreboard objectives add player.skill.0.timer dummy "玩家技能0计时"
scoreboard objectives add player.skill.0.cdown dummy "玩家技能0冷却"
scoreboard objectives add player.skill.0.level dummy "玩家技能0等级"
scoreboard objectives add player.skill.0.state dummy "玩家技能0状态"

scoreboard objectives add player.skill.1.value dummy "玩家技能1数值"
scoreboard objectives add player.skill.1.timer dummy "玩家技能1计时"
scoreboard objectives add player.skill.1.cdown dummy "玩家技能1冷却"
scoreboard objectives add player.skill.1.level dummy "玩家技能1等级"
scoreboard objectives add player.skill.1.state dummy "玩家技能1状态"

scoreboard objectives add player.skill.2.value dummy "玩家技能2数值"
scoreboard objectives add player.skill.2.timer dummy "玩家技能2计时"
scoreboard objectives add player.skill.2.cdown dummy "玩家技能2冷却"
scoreboard objectives add player.skill.2.level dummy "玩家技能2等级"
scoreboard objectives add player.skill.2.state dummy "玩家技能2状态"

scoreboard objectives add player.skill.3.value dummy "玩家技能3数值"
scoreboard objectives add player.skill.3.timer dummy "玩家技能3计时"
scoreboard objectives add player.skill.3.cdown dummy "玩家技能3冷却"
scoreboard objectives add player.skill.3.level dummy "玩家技能3等级"
scoreboard objectives add player.skill.3.state dummy "玩家技能3状态"

scoreboard objectives add player.skill.4.value dummy "玩家技能4数值"
scoreboard objectives add player.skill.4.timer dummy "玩家技能4计时"
scoreboard objectives add player.skill.4.cdown dummy "玩家技能4冷却"
scoreboard objectives add player.skill.4.level dummy "玩家技能4等级"
scoreboard objectives add player.skill.4.state dummy "玩家技能4状态"
