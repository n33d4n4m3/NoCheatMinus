scoreboard players add @s ncmeutil.sqrt.tick 1

# Using newton's method to get the square root of the input number.
scoreboard players operation @s ncmeutil.sqrt.field1 = @s ncmeutil.sqrt.input
scoreboard players operation @s ncmeutil.sqrt.field1 /= @s ncmeutil.sqrt.field3

scoreboard players operation @s ncmeutil.sqrt.field2 = @s ncmeutil.sqrt.field3
scoreboard players operation @s ncmeutil.sqrt.field2 += @s ncmeutil.sqrt.field1

scoreboard players operation @s ncmeutil.sqrt.field2 /= 2 ncmeNumber

scoreboard players operation @s ncmeutil.sqrt.field1 = @s ncmeutil.sqrt.field2


scoreboard players operation @s ncmeutil.sqrt.field1 -= @s ncmeutil.sqrt.field3
execute if score @s ncmeutil.sqrt.field1 matches ..-1 run scoreboard players operation @s ncmeutil.sqrt.field1 *= -1 ncmeNumber



execute if score @s ncmeutil.sqrt.field1 matches 1.. unless score @s ncmeutil.sqrt.tick matches 100.. run scoreboard players operation @s ncmeutil.sqrt.field3 = @s ncmeutil.sqrt.field2
execute if score @s ncmeutil.sqrt.field1 matches 1.. unless score @s ncmeutil.sqrt.tick matches 100.. run function ncm:event/util/sqrt


execute if score @s ncmeutil.sqrt.tick matches 100.. run scoreboard players operation @s ncmeutil.sqrt.output = @s ncmeutil.sqrt.field2
execute if score @s ncmeutil.sqrt.field1 matches ..0 run scoreboard players operation @s ncmeutil.sqrt.output = @s ncmeutil.sqrt.field2
