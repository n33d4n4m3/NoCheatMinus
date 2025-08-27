#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#
# ...
# Description:  This check monitors the player's movement reaction after being hit.
# Fail:         This check fails if the player's horizontal position does not change after a latency-dependent delay.
# Author:       n33d4n4m3
# ...









scoreboard players set @a ncmPlayerIsCollisionFree 1
execute as @a at @s unless block ~1 ~ ~ #air run scoreboard players set @s ncmPlayerIsCollisionFree 0
execute as @a at @s unless block ~-1 ~ ~ #air run scoreboard players set @s ncmPlayerIsCollisionFree 0
execute as @a at @s unless block ~ ~ ~1 #air run scoreboard players set @s ncmPlayerIsCollisionFree 0
execute as @a at @s unless block ~ ~ ~-1 #air run scoreboard players set @s ncmPlayerIsCollisionFree 0
execute as @a at @s unless block ~1 ~ ~1 #air run scoreboard players set @s ncmPlayerIsCollisionFree 0
execute as @a at @s unless block ~1 ~ ~-1 #air run scoreboard players set @s ncmPlayerIsCollisionFree 0
execute as @a at @s unless block ~-1 ~ ~-1 #air run scoreboard players set @s ncmPlayerIsCollisionFree 0
execute as @a at @s unless block ~-1 ~ ~1 #air run scoreboard players set @s ncmPlayerIsCollisionFree 0
execute as @a if score @s ncmCobwebNearby matches 1.. run scoreboard players set @s ncmPlayerIsCollisionFree 0
execute as @a if score @s ncmLiquidNearby matches 1.. run scoreboard players set @s ncmPlayerIsCollisionFree 0

execute as @a store result score @s ncmFireTicks run data get entity @s Fire

execute as @a[advancements={ncm:entity_hurt_player=true}] if score @s ncmFireTicks matches -20 if score @s ncmPlayerIsCollisionFree matches 1 run scoreboard players set @s ncmTicksUntilVelocityUsed 1
execute as @a[advancements={ncm:entity_hurt_player=true}] if score @s ncmFireTicks matches -20 if score @s ncmPlayerIsCollisionFree matches 1 run scoreboard players operation @s ncmTicksUntilVelocityMustBeUsed = DataHolder ncmc_cv_1
execute as @a[advancements={ncm:entity_hurt_player=true}] if score @s ncmFireTicks matches -20 if score @s ncmPlayerIsCollisionFree matches 1 run scoreboard players operation @s ncmTicksUntilVelocityMustBeUsed += @s ncmLastLatencyLevel
execute as @a[advancements={ncm:entity_hurt_player=true}] run advancement revoke @s only ncm:entity_hurt_player
execute as @a if score @s ncmTicksUntilVelocityUsed matches 1.. run scoreboard players add @s ncmTicksUntilVelocityUsed 1
execute as @a if score @s ncmPlayerIsCollisionFree matches 0 run scoreboard players set @s ncmTicksUntilVelocityUsed 0
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasXZChanged matches 1 run scoreboard players set @s ncmTicksUntilVelocityUsed 0

execute as @a if score @s ncmTicksUntilVelocityUsed >= @s ncmTicksUntilVelocityMustBeUsed if score @s ncmPlayerIsCollisionFree matches 1 run scoreboard players set @s ncmVelocityStackingTest 1
execute as @a if score @s ncmTicksUntilVelocityUsed >= @s ncmTicksUntilVelocityMustBeUsed run scoreboard players set @s ncmTicksUntilVelocityUsed 0

execute as @a if score @s ncmVelocityStackingTest matches 1 if score DataHolder ncmc_cv_2 matches 0 run scoreboard players set @s ncmVelocityStackingTest 3
execute as @a if score @s VE.PlayerMoveEvent.hasXZChanged matches 1 run scoreboard players set @s ncmVelocityStackingTest 0
execute as @a at @s if score @s ncmVelocityStackingTest matches 1 run tp @s ~ ~0.3 ~
execute as @a if score @s ncmVelocityStackingTest matches 3 if score @s VE.PlayerMoveEvent.hasDescended matches 1 if score DataHolder ncmc_cv_2 matches 1 run scoreboard players set @s ncmFailedFCV 5
execute as @a if score @s ncmVelocityStackingTest matches 3 if score @s VE.PlayerMoveEvent.hasDescended matches 1 if score DataHolder ncmc_cv_2 matches 1 if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"","color":"light_purple"},{"text":"","color":"light_purple"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"CompliantVelocity","color":"light_purple"},{"text":" {...}","color":"gray"}]
execute as @a if score @s ncmVelocityStackingTest matches 3 if score @s VE.PlayerMoveEvent.hasDescended matches 1 if score DataHolder ncmc_cv_2 matches 1 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"","color":"light_purple"},{"text":"","color":"light_purple"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"CompliantVelocity","color":"light_purple"},{"text":" {...}","color":"gray"}]
execute as @a if score @s ncmVelocityStackingTest matches 3 if score DataHolder ncmc_cv_2 matches 0 run scoreboard players set @s ncmFailedFCV 5
execute as @a if score @s ncmVelocityStackingTest matches 3 if score DataHolder ncmc_cv_2 matches 0 if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"","color":"light_purple"},{"text":"","color":"light_purple"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"CompliantVelocity","color":"light_purple"},{"text":" {...}","color":"gray"}]
execute as @a if score @s ncmVelocityStackingTest matches 3 if score DataHolder ncmc_cv_2 matches 0 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"","color":"light_purple"},{"text":"","color":"light_purple"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"CompliantVelocity","color":"light_purple"},{"text":" {...}","color":"gray"}]

execute as @a if score @s ncmVelocityStackingTest matches 3 run scoreboard players set @s ncmVelocityStackingTest 0
execute as @a if score @s ncmVelocityStackingTest matches 1.. run scoreboard players add @s ncmVelocityStackingTest 1