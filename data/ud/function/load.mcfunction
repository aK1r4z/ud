#> ud:load
# @within tag/function minecraft:load
# 这个函数在数据包加载时被调用。



## 创建计分板对象
function ud:load/scoreboard

## 初始化系统常量
function ud:load/const

## 初始化系统变量
execute unless score state system matches -2147483648..2147483647 run scoreboard players set state system 0

## 调试信息
tellraw @a {"translate": "datapack.ud.load", "fallback": "Loaded UD datapack"}
