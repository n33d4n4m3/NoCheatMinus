# ...
# Description:  This function is responsible for assigning a unique identifier to each player. Experimental state!
# Author:       n33d4n4m3
# ...

# TODO (Performance): Clean this up, this file don't need to get called every tick.
execute as @e[type=minecraft:player] unless score @s hasUUID matches 1 run scoreboard players operation @s UUID = DataHolder globalUUID
execute as @e[type=minecraft:player] unless score @s hasUUID matches 1 run scoreboard players add @s UUID 1
execute as @e[type=minecraft:player] unless score @s hasUUID matches 1 run scoreboard players add DataHolder globalUUID 1
execute as @e[type=minecraft:player] unless score @s hasUUID matches 1 run scoreboard players set @s hasUUID 1
