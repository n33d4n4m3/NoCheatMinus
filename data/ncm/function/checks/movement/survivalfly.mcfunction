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
# Description:  This check monitors the player's motion.
# Fail:         This check fails if the player's motion differs from the expected motion in Subcheck-defined situations.
# Subchecks:    - LostGround
#               - OffGroundTicks
#               - Climb
#               - ClimbState
#               - ConstantClimbRate
#               - SprintFL
# Author:        n33d4n4m3
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.


# ------------------
# FP elemination
# ------------------

# Iron Golem FP fix

execute as @e[type=minecraft:player] at @s store result score @s ncmAngryIGNearby run data get entity @e[type=minecraft:iron_golem,limit=1,distance=..5] AngerTime 1

# Aviate / Levitate FP fix


execute as @e[type=minecraft:player] if predicate ncm:has_levitation_effect run scoreboard players operation @s ncmLevitate = DataHolder ncmc_sf_fp_1
execute as @e[type=minecraft:player] at @s if entity @e[type=wind_charge,distance=..9] run scoreboard players set @s ncmLevitate 40
execute as @e[type=minecraft:player] if score @s ncmLevitate matches 1.. run scoreboard players remove @s ncmLevitate 1

execute as @e[type=minecraft:player] if score @s ncmAviate matches 1.. run scoreboard players add @s ncmAviateRC 1
execute as @e[type=minecraft:player] if score @s ncmAviateRC >= DataHolder ncmc_sf_fp_1 run scoreboard players set @s ncmAviate 0
execute as @e[type=minecraft:player] if score @s ncmAviateRC >= DataHolder ncmc_sf_fp_1 run scoreboard players set @s ncmAviateRC 0




# Cobweb fix

execute as @e[type=minecraft:player] at @s if block ~ ~ ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~ ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~ ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~ ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~ ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~ ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~ ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @e[type=minecraft:player] if score @s ncmCobwebNearby matches 1.. run scoreboard players add @s ncmCobwebNearby 1
execute as @e[type=minecraft:player] if score @s ncmCobwebNearby matches 10.. run scoreboard players set @s ncmCobwebNearby 0


# Liquid fix

execute as @e[type=minecraft:player] at @s if block ~ ~ ~ water run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~ water run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~ ~1 water run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~1 water run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~ water run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~ ~-1 water run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~-1 water run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~1 water run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~-1 water run scoreboard players set @s ncmLiquidNearby 1

execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~ water run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~ ~1 water run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~1 water run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~ water run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~ ~-1 water run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~-1 water run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~1 water run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~-1 water run scoreboard players set @s ncmLiquidNearby 1

execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~ water run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~ ~1 water run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~1 water run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~ water run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~ ~-1 water run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~-1 water run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~1 water run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~-1 water run scoreboard players set @s ncmLiquidNearby 1



execute as @e[type=minecraft:player] at @s if block ~ ~ ~ bubble_column run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~ bubble_column run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~ ~1 bubble_column run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~1 bubble_column run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~ bubble_column run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~ ~-1 bubble_column run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~-1 bubble_column run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~1 bubble_column run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~-1 bubble_column run scoreboard players set @s ncmLiquidNearby 1

execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~ bubble_column run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~ ~1 bubble_column run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~1 bubble_column run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~ bubble_column run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~ ~-1 bubble_column run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~-1 bubble_column run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~1 bubble_column run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~-1 bubble_column run scoreboard players set @s ncmLiquidNearby 1

execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~ bubble_column run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~ ~1 bubble_column run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~1 bubble_column run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~ bubble_column run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~ ~-1 bubble_column run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~-1 bubble_column run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~1 bubble_column run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~-1 bubble_column run scoreboard players set @s ncmLiquidNearby 1















execute as @e[type=minecraft:player] at @s if block ~ ~ ~ lava run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~ lava run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~ ~1 lava run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~1 lava run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~ lava run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~ ~-1 lava run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~-1 lava run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~1 lava run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~-1 lava run scoreboard players set @s ncmLiquidNearby 1

execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~ lava run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~ ~1 lava run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~1 lava run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~ lava run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~ ~-1 lava run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~-1 lava run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~1 lava run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~-1 lava run scoreboard players set @s ncmLiquidNearby 1

execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~ lava run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~ ~1 lava run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~1 lava run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~ lava run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~ ~-1 lava run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~-1 lava run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~1 lava run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~-1 lava run scoreboard players set @s ncmLiquidNearby 1

execute as @e[type=minecraft:player] if score @s ncmLiquidNearby matches 1.. run scoreboard players add @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] if score @s ncmLiquidNearby matches 10.. run scoreboard players set @s ncmLiquidNearby 0

execute as @e[type=minecraft:player] at @s if block ~ ~ ~ ladder run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~ ladder run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~ ~1 ladder run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~1 ladder run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~ ladder run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~ ~-1 ladder run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~-1 ladder run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~1 ladder run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~-1 ladder run scoreboard players set @s ncmLadderNearby 1

execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~ ladder run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~ ~1 ladder run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~1 ladder run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~ ladder run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~ ~-1 ladder run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~-1 ladder run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~1 ladder run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~-1 ladder run scoreboard players set @s ncmLadderNearby 1

execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~ ladder run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~ ~1 ladder run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~1 ladder run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~ ladder run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~ ~-1 ladder run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~-1 ladder run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~1 ladder run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~-1 ladder run scoreboard players set @s ncmLadderNearby 1



# Slime block

execute as @e[type=minecraft:player] at @s if block ~ ~ ~ slime_block run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~ slime_block run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~ ~1 slime_block run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~1 slime_block run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~ slime_block run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~ ~-1 slime_block run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~-1 slime_block run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~1 slime_block run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~-1 slime_block run scoreboard players set @s ncmLadderNearby 1

execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~ slime_block run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~ ~1 slime_block run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~1 slime_block run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~ slime_block run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~ ~-1 slime_block run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~-1 slime_block run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~1 slime_block run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~-1 slime_block run scoreboard players set @s ncmLadderNearby 1

execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~ slime_block run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~ ~1 slime_block run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~1 slime_block run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~ slime_block run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~ ~-1 slime_block run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~-1 slime_block run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~1 slime_block run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~-1 slime_block run scoreboard players set @s ncmLadderNearby 1

execute as @e[type=minecraft:player] if score @s ncmLadderNearby matches 1.. run scoreboard players add @s ncmLadderNearby 1
execute as @e[type=minecraft:player] if score @s ncmLadderNearby matches 30.. run scoreboard players set @s ncmLadderNearby 0



# Player Latency Check
execute as @a if score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players set @s ncmSFJC 0
execute as @a if score @s ncmSFPlayerLatencyFP matches 1.. run scoreboard players remove @s ncmSFPlayerLatencyFP 1
execute as @a if score @s ncmSFJC matches 2.. run scoreboard players operation @s ncmSFPlayerLatencyFP = DataHolder ncmc_sf_fp_2























# --------------------
# Subcheck: LostGround
# --------------------
execute as @e[type=minecraft:player] store result score @s ncmYMotion run data get entity @s Motion[1] 1
execute as @e[type=minecraft:player,nbt={OnGround:1b},gamemode=!creative,gamemode=!spectator] unless score @s ncmLevitate matches 1.. unless score @s ncmAviate matches 1.. unless score @s ncmCobwebNearby matches 1.. unless score @s ncmLiquidNearby matches 1.. unless score @s ncmYMotion matches -1 run scoreboard players add @s ncmSFLG_ivl 1
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivl matches 1.. run scoreboard players add @s ncmSFLG_ivlrc 1
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivl >= DataHolder ncmc_sf_lg_1 run scoreboard players set @s ncmFailedMVMSF 5
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivl >= DataHolder ncmc_sf_lg_1 if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"LostGround","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"@s","objective":"ncmYMotion"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivl >= DataHolder ncmc_sf_lg_1 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"LostGround","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"@s","objective":"ncmYMotion"},"color":"gray"},{"text":"}","color":"gray"}]

execute as @e[type=minecraft:player] if score @s ncmSFLG_ivlrc >= DataHolder ncmc_sf_lg_2 run scoreboard players set @s ncmSFLG_ivl 0
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivlrc >= DataHolder ncmc_sf_lg_2 run scoreboard players set @s ncmSFLG_ivlrc 0
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivl >= DataHolder ncmc_sf_lg_1 run scoreboard players set @s ncmSFLG_ivl 0


# ------------------------
# Subcheck: JumpCount
# ------------------------

execute as @a at @s unless block ~ ~2 ~ minecraft:air run scoreboard players set @s ncmSFJCCeilingGrace 20
execute as @a if score @s ncmSFJCCeilingGrace matches 1.. run scoreboard players remove @s ncmSFJCCeilingGrace 1

execute as @a if score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players set @s ncmSFJCRC 0


execute as @a if score @s ncmSFJC matches 1.. unless score @s ncmSFJCCeilingGrace matches 1.. unless score @s ncmSFPlayerLatencyFP matches 1.. run scoreboard players add @s ncmSFJCR 1
execute as @a if score @s ncmSFJCR matches 1.. run scoreboard players add @s ncmSFJCRC 1

execute as @a if score @s ncmSFJCR > DataHolder ncmc_sf_jc_1 unless score @s ncmSFPlayerLatencyFP matches 1.. run scoreboard players set @s ncmFailedMVMSF 9
execute as @a if score @s ncmSFJCR > DataHolder ncmc_sf_jc_1 unless score @s ncmSFPlayerLatencyFP matches 1.. if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"JumpCount","color":"light_purple"},{"text":" {...}","color":"gray"}]
execute as @a if score @s ncmSFJCR > DataHolder ncmc_sf_jc_1 unless score @s ncmSFPlayerLatencyFP matches 1.. run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"JumpCount","color":"light_purple"},{"text":" {...}","color":"gray"}]
execute as @a if score @s ncmSFJCR > DataHolder ncmc_sf_jc_1 run scoreboard players set @s ncmSFJCR 0
execute as @a if score @s ncmSFJCR > DataHolder ncmc_sf_jc_1 run scoreboard players set @s ncmSFJCRC 0
execute as @a if score @s ncmSFJCRC >= DataHolder ncmc_sf_jc_2 run scoreboard players set @s ncmSFJCR 0
execute as @a if score @s ncmSFJCRC >= DataHolder ncmc_sf_jc_2 run scoreboard players set @s ncmSFJCRC 0

# ------------------------
# Subcheck: OffGroundTicks
# ------------------------



execute as @a if score @s ncmLeaveGame matches 1.. run scoreboard players set @s ncmSFOGJoinGrace 601
execute as @a if score @s[nbt={OnGround:0b}] ncmLeaveGame matches 1.. run scoreboard players set @s ncmSFOGJoinGrace 601
execute as @a if score @s[nbt={OnGround:1b}] ncmSFOGJoinGrace matches 601 run scoreboard players set @s ncmSFOGJoinGrace 600
execute as @a if score @s ncmSFOGJoinGrace matches 1..600 run scoreboard players remove @s ncmSFOGJoinGrace 1
execute as @a if score @s ncmLeaveGame matches 1.. run scoreboard players set @s ncmLeaveGame 0


execute as @a if score @s ncmLastLatencyLevel matches 0..1 run scoreboard players set @s ncmSFOGFailLatencyBuffer 1
execute as @a if score @s ncmLastLatencyLevel matches 2..5 run scoreboard players set @s ncmSFOGFailLatencyBuffer 2
execute as @a if score @s ncmLastLatencyLevel matches 6..10 run scoreboard players set @s ncmSFOGFailLatencyBuffer 3
execute as @a if score @s ncmLastLatencyLevel matches 11..15 run scoreboard players set @s ncmSFOGFailLatencyBuffer 4
execute as @a if score @s ncmLastLatencyLevel matches 16..20 run scoreboard players set @s ncmSFOGFailLatencyBuffer 5
execute as @a if score @s ncmLastLatencyLevel matches 21.. run scoreboard players set @s ncmSFOGFailLatencyBuffer 5



execute as @a if score @s ncmFPDamage matches 1.. run scoreboard players set @s ncmFPDamage -50
execute as @a if score @s ncmFPDamage matches -50..-1 run scoreboard players add @s ncmFPDamage 1

execute as @a if score @s ncmFPDecent matches 1.. run scoreboard players add @s ncmFPDecent 1
execute as @a if score @s ncmOGJump matches 1.. run scoreboard players add @s ncmOGJump 1
execute as @a[gamemode=!creative,gamemode=!spectator,nbt={OnGround:0b}] at @s unless score @s ncmSFPlayerLatencyFP matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. unless score @s ncmOGJump matches 1.. unless entity @e[type=#minecraft:boat,distance=..2] unless entity @e[type=oak_chest_boat,distance=..2] unless entity @e[type=spruce_chest_boat,distance=..2] unless entity @e[type=cherry_chest_boat,distance=..2] unless entity @e[type=bamboo_chest_raft,distance=..2] unless entity @e[type=mangrove_chest_boat,distance=..2] unless entity @e[type=dark_oak_chest_boat,distance=..2] unless entity @e[type=acacia_chest_boat,distance=..2] unless entity @e[type=jungle_chest_boat,distance=..2] unless entity @e[type=birch_chest_boat,distance=..2] unless score @s ncmPlayerIsInBed matches 1 unless score @s ncmCobwebNearby matches 1.. unless score @s ncmLiquidNearby matches 1.. unless score @s ncmDeathTime matches 1.. unless score @s ncmAngryIGNearby matches 1.. unless score @s VE.PlayerMoveEvent.hasDescended matches 1 unless score @s ncmAviate matches 1.. unless score @s ncmLevitate matches 1.. unless score @s ncmLadderNearby matches 1.. unless score @s VEGbl.thePlayer.currentMovementState matches 5 unless score @s ncmFPDamage matches -50..-1 run scoreboard players add @s ncmOffGrTicks 1
execute as @a if score @s ncmOGJump >= DataHolder ncmc_sf_og_3 run scoreboard players set @s ncmOGJump 0
execute as @a if score @s ncmOffGrTicks matches 1.. run scoreboard players add @s ncmOffGrTicksC 1

execute as @a if score @s ncmOffGrTicks >= DataHolder ncmc_sf_og_1 unless score @s ncmSFOGJoinGrace matches 1.. unless score @s ncmSFPlayerLatencyFP matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. unless score @s ncmAviate matches 1.. unless score @s ncmLevitate matches 1.. run scoreboard players add @s ncmSFOGFailCountForLatencyBuffer 1
# Debug: execute as @a if score @s ncmOffGrTicks >= DataHolder ncmc_sf_og_1 unless score @s ncmSFOGJoinGrace matches 1.. unless score @s ncmSFPlayerLatencyFP matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. unless score @s ncmAviate matches 1.. unless score @s ncmLevitate matches 1.. if score @s ncmSFOGFailLatencyBuffer matches 1.. unless score @s ncmSFOGFailCountForLatencyBuffer > @s ncmSFOGFailLatencyBuffer run tellraw @a ["",{"text":"[TestNCM] Holding back MVMSFOG-Flag (","color":"gray"},{"score":{"name":"@s","objective":"ncmSFOGFailCountForLatencyBuffer"},"color":"gray"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"ncmSFOGFailLatencyBuffer"},"color":"gray"},{"text":") for player ","color":"gray"},{"selector":"@s","color":"gray"},{"text":" due to their latency (","color":"gray"},{"score":{"name":"@s","objective":"ncmLastLatencyLevel"},"color":"gray"},{"text":")","color":"gray"}]


execute as @a if score @s ncmSFOGFailCountForLatencyBuffer > @s ncmSFOGFailLatencyBuffer if score @s ncmLastLatencyLevel matches ..3 run scoreboard players set @s ncmFailedMVMSF 5
execute as @a if score @s ncmSFOGFailCountForLatencyBuffer > @s ncmSFOGFailLatencyBuffer if score @s ncmLastLatencyLevel matches 4.. run scoreboard players set @s ncmFailedMVMSF 3
execute as @a if score @s ncmSFOGFailCountForLatencyBuffer > @s ncmSFOGFailLatencyBuffer if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"OffGroundTicks","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_og_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_og_2"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_og_3"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmOffGrTicks"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmOffGrTicksC"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @a if score @s ncmSFOGFailCountForLatencyBuffer > @s ncmSFOGFailLatencyBuffer run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"OffGroundTicks","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_og_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_og_2"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_og_3"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmOffGrTicks"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmOffGrTicksC"},"color":"gray"},{"text":"}","color":"gray"}]

execute as @a if score @s ncmSFOGFailCountForLatencyBuffer matches 1.. unless score @s ncmSFOGFailCountForLatencyBufferR matches 1.. run scoreboard players set @s ncmSFOGFailCountForLatencyBufferR 300
execute as @a if score @s ncmSFOGFailCountForLatencyBufferR matches 1.. run scoreboard players remove @s ncmSFOGFailCountForLatencyBufferR 1
execute as @a if score @s ncmSFOGFailCountForLatencyBufferR matches 0 run scoreboard players set @s ncmSFOGFailCountForLatencyBuffer 0

execute as @a if score @s ncmSFOGFailCountForLatencyBuffer > @s ncmSFOGFailLatencyBuffer run scoreboard players set @s ncmSFOGFailCountForLatencyBuffer 0
execute as @a if entity @s[nbt={OnGround:1b}] run scoreboard players set @s ncmSFOGFailCountForLatencyBuffer 0
execute as @a if entity @s[nbt={OnGround:1b}] run scoreboard players set @s ncmSFOGFailCountForLatencyBufferR 0


execute as @a if score @s ncmOGJumpR matches 1.. run scoreboard players set @s ncmOGJump 1
execute as @a if score @s ncmOGJumpR matches 1.. run scoreboard players set @s ncmOGJumpR 0
execute as @a if score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players set @s ncmOffGrTicks 0
execute as @a if score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players set @s ncmOffGrTicksC 0
execute as @a if score @s ncmSFPlayerLatencyFP matches 1.. run scoreboard players set @s ncmOffGrTicks 0
execute as @a if score @s ncmSFPlayerLatencyFP matches 1.. run scoreboard players set @s ncmOffGrTicksC 0

execute as @a if score @s ncmOffGrTicks >= DataHolder ncmc_sf_og_1 run scoreboard players set @s ncmOffGrTicks 0
execute as @a if score @s ncmOffGrTicksC >= DataHolder ncmc_sf_og_2 run scoreboard players set @s ncmOffGrTicks 0
execute as @a if score @s ncmOffGrTicksC >= DataHolder ncmc_sf_og_2 run scoreboard players set @s ncmOffGrTicksC 0

#execute as @a[gamemode=!creative,gamemode=!spectator,nbt={OnGround:1b}] if score @s ncmOffGrTicks matches 1.. run tellraw @s {"score":{"name":"@s","objective":"ncmOffGrTicks"}}
execute as @a[gamemode=!creative,gamemode=!spectator,nbt={OnGround:1b}] run scoreboard players set @s ncmOffGrTicks 0
execute as @a[gamemode=!creative,gamemode=!spectator,nbt={OnGround:1b}] run scoreboard players set @s ncmOffGrTicksC 0
execute as @a if score @s ncmFPDecent matches 10.. run scoreboard players set @s ncmFPDecent 0

# ------------------------
# Subcheck: Climb
# ------------------------

execute as @e[type=minecraft:player] if score @s ncmBoat matches 1.. if score @s VE.PlayerMoveEvent.hasClimbed matches 1 run scoreboard players set @s ncmFailedMVMSF 9
execute as @e[type=minecraft:player] if score @s ncmBoat matches 1.. if score @s VE.PlayerMoveEvent.hasClimbed matches 1 if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Climb","color":"light_purple"},{"text":" {Boat}","color":"gray"}]
execute as @e[type=minecraft:player] if score @s ncmBoat matches 1.. if score @s VE.PlayerMoveEvent.hasClimbed matches 1 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Climb","color":"light_purple"},{"text":" {Boat}","color":"gray"}]
execute as @e[type=minecraft:player] if score @s ncmBoat matches 1.. run scoreboard players set @s ncmBoat 0

execute as @e[type=minecraft:player] if score @s VEGbl.thePlayer.currentMovementState matches 10 run scoreboard players add @s ncmSFClimbAviateGrace 1
execute as @e[type=minecraft:player] unless score @s VEGbl.thePlayer.currentMovementState matches 10 run scoreboard players set @s ncmSFClimbAviateGrace 0
execute as @e[type=minecraft:player] if score @s ncmSFClimbAviateGrace matches 15.. if score @s VE.PlayerMoveEvent.hasClimbed matches 1 if score @s VE.PlayerMoveEvent.hasXZChanged matches 0 run scoreboard players set @s ncmFailedMVMSF 9
execute as @e[type=minecraft:player] if score @s ncmSFClimbAviateGrace matches 15.. if score @s VE.PlayerMoveEvent.hasClimbed matches 1 if score @s VE.PlayerMoveEvent.hasXZChanged matches 0 if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Climb","color":"light_purple"},{"text":" {Aviate}","color":"gray"}]
execute as @e[type=minecraft:player] if score @s ncmSFClimbAviateGrace matches 15.. if score @s VE.PlayerMoveEvent.hasClimbed matches 1 if score @s VE.PlayerMoveEvent.hasXZChanged matches 0 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Climb","color":"light_purple"},{"text":" {Aviate}","color":"gray"}]








# ------------------------
# Subcheck: SprintFL
# ------------------------

execute as @a run scoreboard players set @s ncmIndividualFoodLevelGrace 30
execute as @a run scoreboard players operation @s ncmIndividualFoodLevelGrace += @s ncmLastLatencyLevel
execute as @a store result score @s ncmFoodLevel run data get entity @s foodLevel
execute as @a if score @s ncmFoodLevel matches ..6 unless score @s ncmFoodLevelGraceT >= @s ncmIndividualFoodLevelGrace run scoreboard players add @s ncmFoodLevelGraceT 1
execute as @a if score @s ncmFoodLevel matches 7.. run scoreboard players reset @s ncmFoodLevelGraceT
execute as @a[tag=VE.PlayerMoveEvent] if score @s VEGbl.thePlayer.currentMovementState matches 2 if score @s ncmFoodLevelGraceT >= @s ncmIndividualFoodLevelGrace run scoreboard players set @s ncmFailedMVMSF 9
execute as @a[tag=VE.PlayerMoveEvent] if score @s VEGbl.thePlayer.currentMovementState matches 2 if score @s ncmFoodLevelGraceT >= @s ncmIndividualFoodLevelGrace if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SprintFL","color":"light_purple"},{"text":" {...}","color":"gray"}]
execute as @a[tag=VE.PlayerMoveEvent] if score @s VEGbl.thePlayer.currentMovementState matches 2 if score @s ncmFoodLevelGraceT >= @s ncmIndividualFoodLevelGrace run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SprintFL","color":"light_purple"},{"text":" {...}","color":"gray"}]
execute as @a[tag=VE.PlayerMoveEvent] if score @s VEGbl.thePlayer.currentMovementState matches 2 if score @s ncmFoodLevelGraceT >= @s ncmIndividualFoodLevelGrace run scoreboard players set @s VE.PlayerMoveEvent.willModify 1



# ---------------------------
# Subcheck: ConstantClimbRate
# ---------------------------



execute as @e[type=minecraft:player,nbt={OnGround:0b},gamemode=!creative] run scoreboard players add @s ncmMaintainRC 1
execute as @e[type=minecraft:player] if score @s ncmMaintainRC matches 1 store result score @s ncmLastMaintainY run data get entity @s Pos[1] 100000
execute as @e[type=minecraft:player] if score @s ncmMaintainRC matches 3 store result score @s ncmMaintainY run data get entity @s Pos[1] 100000

#execute as @e[type=minecraft:player,nbt={OnGround:0b}] if score @s ncmMaintainRC matches 3 if score @s ncmLastMaintainY = @s ncmMaintainY run say Maintain whilst offground.
#execute as @e[type=minecraft:player,nbt={OnGround:0b}] if score @s ncmMaintainRC matches 3 if score @s ncmLastMaintainY < @s ncmMaintainY run say Climb whilst offground.
execute as @e[type=minecraft:player,nbt={OnGround:0b}] if score @s ncmMaintainRC matches 3 if score @s ncmLastMaintainY > @s ncmMaintainY run scoreboard players set @s ncmFPDecent 1

execute as @e[type=minecraft:player] if score @s ncmMaintainRC = DataHolder ncmc_sf_cr_1 run scoreboard players operation @s ncmYSpeed = @s ncmMaintainY
execute as @e[type=minecraft:player] if score @s ncmMaintainRC = DataHolder ncmc_sf_cr_1 run scoreboard players operation @s ncmYSpeed -= @s ncmLastMaintainY

execute as @e[type=minecraft:player] if score @s ncmMaintainRC = DataHolder ncmc_sf_cr_1 run scoreboard players set @s ncmMaintainRC 0

execute as @e[type=minecraft:player,nbt={OnGround:0b},gamemode=!creative,gamemode=!spectator] unless score @s ncmLadderNearby matches 1.. unless score @s ncmLiquidNearby matches 1.. run scoreboard players add @s ncmYSpMaintainRC 1
execute as @e[type=minecraft:player] if score @s ncmYSpMaintainRC matches 1 run scoreboard players operation @s ncmLastYSpeed = @s ncmYSpeed
execute as @e[type=minecraft:player] if score @s ncmLadder matches 1.. run scoreboard players set @s ncmYSpMaintainRC 0
execute as @e[type=minecraft:player] if score @s ncmLadder matches 1.. run scoreboard players set @s ncmLadder 0
execute as @e[type=minecraft:player] at @s if block ~ ~ ~ water run scoreboard players set @s ncmYSpMaintainRC 0
execute as @e[type=minecraft:player] at @s if block ~ ~ ~ lava run scoreboard players set @s ncmYSpMaintainRC 0

execute as @e[type=minecraft:player] if score @s ncmCobwebNearby matches 1.. run scoreboard players set @s ncmYSpMaintainRC 0

execute as @e[type=minecraft:player,nbt={OnGround:0b},gamemode=!creative,gamemode=!spectator] unless score @s ncmYSpeed matches 0 if score @s ncmYSpMaintainRC = DataHolder ncmc_sf_cr_2 if score @s ncmLastYSpeed = @s ncmYSpeed unless score @s ncmAviate matches 1.. unless score @s ncmLevitate matches 1.. run scoreboard players set @s ncmFailedMVMSF 9

execute as @e[type=minecraft:player,nbt={OnGround:0b},gamemode=!creative,gamemode=!spectator] unless score @s ncmYSpeed matches 0 if score @s ncmYSpMaintainRC = DataHolder ncmc_sf_cr_2 if score @s ncmLastYSpeed = @s ncmYSpeed unless score @s ncmAviate matches 1.. unless score @s ncmLevitate matches 1.. if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"ConstantClimbRate","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_cr_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_cr_2"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmYSpeed"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmMaintainY"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmLastMaintainY"},"color":"gray"},{"text":"}","color":"gray"}]

execute as @e[type=minecraft:player,nbt={OnGround:0b},gamemode=!creative,gamemode=!spectator] unless score @s ncmYSpeed matches 0 if score @s ncmYSpMaintainRC = DataHolder ncmc_sf_cr_2 if score @s ncmLastYSpeed = @s ncmYSpeed unless score @s ncmAviate matches 1.. unless score @s ncmLevitate matches 1.. run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"ConstantClimbRate","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_cr_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_cr_2"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmYSpeed"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmMaintainY"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmLastMaintainY"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @e[type=minecraft:player] if score @s ncmYSpMaintainRC = DataHolder ncmc_sf_cr_2 run scoreboard players set @s ncmYSpMaintainRC 0


execute as @e[type=minecraft:player,nbt={OnGround:1b}] run scoreboard players set @s ncmLastMaintainY -1
execute as @e[type=minecraft:player,nbt={OnGround:1b}] run scoreboard players set @s ncmMaintainY 0

execute as @e[type=minecraft:player,nbt={OnGround:1b}] run scoreboard players set @s ncmMaintainRC 0
execute as @e[type=minecraft:player,nbt={OnGround:1b}] run scoreboard players set @s ncmYSpMaintainRC 0
execute as @e[type=minecraft:player,nbt={OnGround:1b}] run scoreboard players set @s ncmLastYSpeed 0
execute as @e[type=minecraft:player,nbt={OnGround:1b}] run scoreboard players set @s ncmYSpeed 0




scoreboard players set @a ncmClimb 0
scoreboard players set @a ncmMaintain 0
execute as @a if score @s ncmSFJC matches 1.. run scoreboard players set @s ncmSFJC 0