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
# Description:   This is a util function to handle false positve sources.
# Author:        n33d4n4m3
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.

# ------------------
# FP elemination
# ------------------



# Reset 
execute as @a if score @s ncmOGJump >= DataHolder ncmc_sf_og_3 run scoreboard players set @s ncmOGJump 0
execute as @e[type=minecraft:player] if score @s ncmAviateRC >= DataHolder ncmc_sf_fp_1 run scoreboard players set @s ncmAviate 0
execute as @e[type=minecraft:player] if score @s ncmAviateRC >= DataHolder ncmc_sf_fp_1 run scoreboard players set @s ncmAviateRC 0
execute as @e[type=minecraft:player] if score @s ncmCobwebNearby matches 10.. run scoreboard players set @s ncmCobwebNearby 0
execute as @e[type=minecraft:player] if score @s ncmLiquidNearby matches 10.. run scoreboard players set @s ncmLiquidNearby 0
execute as @e[type=minecraft:player] if score @s ncmLadderNearby matches 30.. run scoreboard players set @s ncmLadderNearby 0
execute as @a if score @s ncmFPDecent matches 10.. run scoreboard players set @s ncmFPDecent 0
execute as @e[type=minecraft:player] if score @s ncmBoat matches 1.. run scoreboard players set @s ncmBoat 0



# Iron Golem FP fix

execute as @e[type=minecraft:player] at @s store result score @s ncmAngryIGNearby run data get entity @e[type=minecraft:iron_golem,limit=1,distance=..5] AngerTime 1

# Aviate / Levitate FP fix


execute as @e[type=minecraft:player] if predicate ncm:has_levitation_effect run scoreboard players operation @s ncmLevitate = DataHolder ncmc_sf_fp_1
execute as @e[type=minecraft:player,nbt={active_effects:[{id:"minecraft:jump_boost"}]}] run scoreboard players operation @s ncmLevitate = DataHolder ncmc_sf_fp_1
execute as @e[type=minecraft:player] at @s if entity @e[type=wind_charge,distance=..9] run scoreboard players set @s ncmLevitate 40
execute as @e[type=minecraft:player] at @s if entity @e[type=creeper,distance=..9] run scoreboard players set @s ncmLevitate 40
execute as @e[type=minecraft:player] at @s if entity @e[type=tnt,distance=..9] run scoreboard players set @s ncmLevitate 40
execute as @e[type=minecraft:player] if predicate ncm:raining if entity @a[nbt={SelectedItem:{id:"minecraft:trident"}}] run scoreboard players set @s ncmLevitate 60
execute as @e[type=minecraft:player] if score @s ncmLiquidNearby matches 1.. if entity @a[nbt={SelectedItem:{id:"minecraft:trident"}}] run scoreboard players set @s ncmLevitate 60
execute as @e[type=minecraft:player] if score @s ncmLevitate matches 1.. run scoreboard players remove @s ncmLevitate 1

execute as @e[type=minecraft:player] if score @s ncmAviate matches 1.. run scoreboard players add @s ncmAviateRC 1


# Fixed Jump Counter (edge block)



execute as @a[tag=VE.PlayerMoveEvent,nbt={OnGround:0b}] if score @s VE.PlayerMoveEvent.hasClimbed matches 1 if score @s ncmWasOnGround matches 1 run scoreboard players add @s ncmOGJumpR 3
execute as @a[nbt={OnGround:1b}] run scoreboard players set @s ncmWasOnGround 1
execute as @a[nbt={OnGround:0b}] run scoreboard players set @s ncmWasOnGround 0
execute as @a if score @s ncmOGJumpR matches 1.. run scoreboard players set @s ncmOGJump 1
execute as @a if score @s ncmOGJumpR matches 1.. run scoreboard players set @s ncmOGJumpR 0
execute as @a if score @s ncmOGJump matches 1.. run scoreboard players add @s ncmOGJump 1


# Stepable Fix


execute as @e[type=minecraft:player] at @s if entity @e[type=#minecraft:boat,distance=..2] run scoreboard players set @s ncmStepableNearby 10
execute as @e[type=minecraft:player] at @s if entity @e[type=oak_chest_boat,distance=..2] run scoreboard players set @s ncmStepableNearby 10
execute as @e[type=minecraft:player] at @s if entity @e[type=spruce_chest_boat,distance=..2] run scoreboard players set @s ncmStepableNearby 10
execute as @e[type=minecraft:player] at @s if entity @e[type=cherry_chest_boat,distance=..2] run scoreboard players set @s ncmStepableNearby 10
execute as @e[type=minecraft:player] at @s if entity @e[type=bamboo_chest_raft,distance=..2] run scoreboard players set @s ncmStepableNearby 10
execute as @e[type=minecraft:player] at @s if entity @e[type=mangrove_chest_boat,distance=..2] run scoreboard players set @s ncmStepableNearby 10
execute as @e[type=minecraft:player] at @s if entity @e[type=dark_oak_chest_boat,distance=..2] run scoreboard players set @s ncmStepableNearby 10
execute as @e[type=minecraft:player] at @s if entity @e[type=acacia_chest_boat,distance=..2] run scoreboard players set @s ncmStepableNearby 10
execute as @e[type=minecraft:player] at @s if entity @e[type=jungle_chest_boat,distance=..2] run scoreboard players set @s ncmStepableNearby 10
execute as @e[type=minecraft:player] at @s if entity @e[type=birch_chest_boat,distance=..2] run scoreboard players set @s ncmStepableNearby 10
execute as @e[type=minecraft:player] at @s if entity @e[type=#ncm:minecarts,distance=..4] run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~-2 ~-2 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~-2 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~-2 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~-2 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~-2 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~-2 ~-1 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~-1 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~-1 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~-1 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~-1 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~-2 ~ ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~ ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~ ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~ ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~ ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~-2 ~1 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~1 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~1 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~1 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~1 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~-2 ~2 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~2 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~2 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~2 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~2 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~-1 ~-2 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~-2 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~-2 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~-2 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~-2 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~-1 ~-1 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~-1 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~-1 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~-1 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~-1 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~-1 ~ ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~ ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~ ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~ ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~ ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~-1 ~1 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~1 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~1 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~1 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~1 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~-1 ~2 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~2 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~2 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~2 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~2 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~ ~-2 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~-2 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~-2 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~-2 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~-2 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~ ~-1 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~-1 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~-1 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~-1 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~-1 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~ ~ ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~ ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~ ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~ ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~ ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~ ~1 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~1 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~1 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~1 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~1 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~ ~2 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~2 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~2 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~2 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~2 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~1 ~-2 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~-2 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~-2 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~-2 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~-2 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~1 ~-1 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~-1 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~-1 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~-1 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~-1 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~1 ~ ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~ ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~ ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~ ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~ ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~1 ~1 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~1 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~1 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~1 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~1 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~1 ~2 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~2 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~2 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~2 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~2 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~2 ~-2 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~-2 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~-2 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~-2 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~-2 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~2 ~-1 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~-1 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~-1 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~-1 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~-1 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~2 ~ ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~ ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~ ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~ ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~ ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~2 ~1 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~1 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~1 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~1 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~1 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~2 ~2 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~2 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~2 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~2 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~2 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a if score @s ncmStepableNearby matches 1.. run scoreboard players remove @s ncmStepableNearby 1





# Cobweb & Sweet Berry Bush fix

execute as @a at @s if block ~-2 ~-2 ~-2 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~-2 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~-2 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~-2 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~-2 ~2 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~-2 ~-1 ~-2 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~-1 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~-1 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~-1 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~-1 ~2 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~-2 ~ ~-2 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~ ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~ ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~ ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~ ~2 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~-2 ~1 ~-2 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~1 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~1 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~1 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~1 ~2 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~-2 ~2 ~-2 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~2 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~2 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~2 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~2 ~2 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~-1 ~-2 ~-2 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~-2 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~-2 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~-2 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~-2 ~2 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~-1 ~-1 ~-2 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~-1 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~-1 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~-1 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~-1 ~2 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~-1 ~ ~-2 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~ ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~ ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~ ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~ ~2 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~-1 ~1 ~-2 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~1 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~1 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~1 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~1 ~2 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~-1 ~2 ~-2 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~2 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~2 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~2 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~2 ~2 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~ ~-2 ~-2 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~-2 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~-2 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~-2 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~-2 ~2 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~ ~-1 ~-2 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~-1 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~-1 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~-1 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~-1 ~2 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~ ~ ~-2 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~ ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~ ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~ ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~ ~2 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~ ~1 ~-2 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~1 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~1 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~1 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~1 ~2 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~ ~2 ~-2 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~2 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~2 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~2 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~2 ~2 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~1 ~-2 ~-2 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~-2 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~-2 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~-2 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~-2 ~2 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~1 ~-1 ~-2 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~-1 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~-1 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~-1 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~-1 ~2 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~1 ~ ~-2 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~ ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~ ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~ ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~ ~2 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~1 ~1 ~-2 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~1 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~1 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~1 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~1 ~2 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~1 ~2 ~-2 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~2 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~2 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~2 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~2 ~2 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~2 ~-2 ~-2 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~-2 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~-2 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~-2 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~-2 ~2 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~2 ~-1 ~-2 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~-1 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~-1 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~-1 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~-1 ~2 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~2 ~ ~-2 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~ ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~ ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~ ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~ ~2 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~2 ~1 ~-2 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~1 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~1 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~1 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~1 ~2 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~2 ~2 ~-2 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~2 ~-1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~2 ~ cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~2 ~1 cobweb run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~2 ~2 cobweb run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~-2 ~-2 ~-2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~-2 ~-1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~-2 ~ sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~-2 ~1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~-2 ~2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~-2 ~-1 ~-2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~-1 ~-1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~-1 ~ sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~-1 ~1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~-1 ~2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~-2 ~ ~-2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~ ~-1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~ ~ sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~ ~1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~ ~2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~-2 ~1 ~-2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~1 ~-1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~1 ~ sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~1 ~1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~1 ~2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~-2 ~2 ~-2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~2 ~-1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~2 ~ sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~2 ~1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-2 ~2 ~2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~-1 ~-2 ~-2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~-2 ~-1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~-2 ~ sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~-2 ~1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~-2 ~2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~-1 ~-1 ~-2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~-1 ~-1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~-1 ~ sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~-1 ~1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~-1 ~2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~-1 ~ ~-2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~ ~-1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~ ~ sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~ ~1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~ ~2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~-1 ~1 ~-2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~1 ~-1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~1 ~ sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~1 ~1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~1 ~2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~-1 ~2 ~-2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~2 ~-1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~2 ~ sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~2 ~1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~-1 ~2 ~2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~ ~-2 ~-2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~-2 ~-1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~-2 ~ sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~-2 ~1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~-2 ~2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~ ~-1 ~-2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~-1 ~-1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~-1 ~ sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~-1 ~1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~-1 ~2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~ ~ ~-2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~ ~-1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~ ~ sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~ ~1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~ ~2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~ ~1 ~-2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~1 ~-1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~1 ~ sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~1 ~1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~1 ~2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~ ~2 ~-2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~2 ~-1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~2 ~ sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~2 ~1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~ ~2 ~2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~1 ~-2 ~-2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~-2 ~-1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~-2 ~ sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~-2 ~1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~-2 ~2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~1 ~-1 ~-2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~-1 ~-1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~-1 ~ sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~-1 ~1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~-1 ~2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~1 ~ ~-2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~ ~-1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~ ~ sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~ ~1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~ ~2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~1 ~1 ~-2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~1 ~-1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~1 ~ sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~1 ~1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~1 ~2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~1 ~2 ~-2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~2 ~-1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~2 ~ sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~2 ~1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~1 ~2 ~2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~2 ~-2 ~-2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~-2 ~-1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~-2 ~ sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~-2 ~1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~-2 ~2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~2 ~-1 ~-2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~-1 ~-1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~-1 ~ sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~-1 ~1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~-1 ~2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~2 ~ ~-2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~ ~-1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~ ~ sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~ ~1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~ ~2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~2 ~1 ~-2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~1 ~-1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~1 ~ sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~1 ~1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~1 ~2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1

execute as @a at @s if block ~2 ~2 ~-2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~2 ~-1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~2 ~ sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~2 ~1 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1
execute as @a at @s if block ~2 ~2 ~2 sweet_berry_bush run scoreboard players set @s ncmCobwebNearby 1

execute as @e[type=minecraft:player] if score @s ncmCobwebNearby matches 1.. run scoreboard players add @s ncmCobwebNearby 1



# Piston fix
scoreboard players set @a ncmPistonNearby 0
execute as @a at @s if block ~-2 ~-2 ~-2 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~-2 ~-1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~-2 ~ piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~-2 ~1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~-2 ~2 piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~-2 ~-1 ~-2 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~-1 ~-1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~-1 ~ piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~-1 ~1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~-1 ~2 piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~-2 ~ ~-2 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~ ~-1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~ ~ piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~ ~1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~ ~2 piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~-2 ~1 ~-2 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~1 ~-1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~1 ~ piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~1 ~1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~1 ~2 piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~-2 ~2 ~-2 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~2 ~-1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~2 ~ piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~2 ~1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~2 ~2 piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~-1 ~-2 ~-2 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~-2 ~-1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~-2 ~ piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~-2 ~1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~-2 ~2 piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~-1 ~-1 ~-2 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~-1 ~-1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~-1 ~ piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~-1 ~1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~-1 ~2 piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~-1 ~ ~-2 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~ ~-1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~ ~ piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~ ~1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~ ~2 piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~-1 ~1 ~-2 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~1 ~-1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~1 ~ piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~1 ~1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~1 ~2 piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~-1 ~2 ~-2 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~2 ~-1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~2 ~ piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~2 ~1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~2 ~2 piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~ ~-2 ~-2 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~-2 ~-1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~-2 ~ piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~-2 ~1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~-2 ~2 piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~ ~-1 ~-2 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~-1 ~-1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~-1 ~ piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~-1 ~1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~-1 ~2 piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~ ~ ~-2 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~ ~-1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~ ~ piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~ ~1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~ ~2 piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~ ~1 ~-2 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~1 ~-1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~1 ~ piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~1 ~1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~1 ~2 piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~ ~2 ~-2 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~2 ~-1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~2 ~ piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~2 ~1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~2 ~2 piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~1 ~-2 ~-2 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~-2 ~-1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~-2 ~ piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~-2 ~1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~-2 ~2 piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~1 ~-1 ~-2 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~-1 ~-1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~-1 ~ piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~-1 ~1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~-1 ~2 piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~1 ~ ~-2 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~ ~-1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~ ~ piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~ ~1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~ ~2 piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~1 ~1 ~-2 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~1 ~-1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~1 ~ piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~1 ~1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~1 ~2 piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~1 ~2 ~-2 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~2 ~-1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~2 ~ piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~2 ~1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~2 ~2 piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~2 ~-2 ~-2 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~-2 ~-1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~-2 ~ piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~-2 ~1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~-2 ~2 piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~2 ~-1 ~-2 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~-1 ~-1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~-1 ~ piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~-1 ~1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~-1 ~2 piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~2 ~ ~-2 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~ ~-1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~ ~ piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~ ~1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~ ~2 piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~2 ~1 ~-2 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~1 ~-1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~1 ~ piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~1 ~1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~1 ~2 piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~2 ~2 ~-2 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~2 ~-1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~2 ~ piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~2 ~1 piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~2 ~2 piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~-2 ~-2 ~-2 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~-2 ~-1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~-2 ~ sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~-2 ~1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~-2 ~2 sticky_piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~-2 ~-1 ~-2 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~-1 ~-1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~-1 ~ sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~-1 ~1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~-1 ~2 sticky_piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~-2 ~ ~-2 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~ ~-1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~ ~ sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~ ~1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~ ~2 sticky_piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~-2 ~1 ~-2 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~1 ~-1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~1 ~ sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~1 ~1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~1 ~2 sticky_piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~-2 ~2 ~-2 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~2 ~-1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~2 ~ sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~2 ~1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-2 ~2 ~2 sticky_piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~-1 ~-2 ~-2 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~-2 ~-1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~-2 ~ sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~-2 ~1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~-2 ~2 sticky_piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~-1 ~-1 ~-2 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~-1 ~-1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~-1 ~ sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~-1 ~1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~-1 ~2 sticky_piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~-1 ~ ~-2 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~ ~-1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~ ~ sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~ ~1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~ ~2 sticky_piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~-1 ~1 ~-2 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~1 ~-1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~1 ~ sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~1 ~1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~1 ~2 sticky_piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~-1 ~2 ~-2 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~2 ~-1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~2 ~ sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~2 ~1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~-1 ~2 ~2 sticky_piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~ ~-2 ~-2 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~-2 ~-1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~-2 ~ sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~-2 ~1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~-2 ~2 sticky_piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~ ~-1 ~-2 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~-1 ~-1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~-1 ~ sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~-1 ~1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~-1 ~2 sticky_piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~ ~ ~-2 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~ ~-1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~ ~ sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~ ~1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~ ~2 sticky_piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~ ~1 ~-2 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~1 ~-1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~1 ~ sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~1 ~1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~1 ~2 sticky_piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~ ~2 ~-2 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~2 ~-1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~2 ~ sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~2 ~1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~ ~2 ~2 sticky_piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~1 ~-2 ~-2 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~-2 ~-1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~-2 ~ sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~-2 ~1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~-2 ~2 sticky_piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~1 ~-1 ~-2 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~-1 ~-1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~-1 ~ sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~-1 ~1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~-1 ~2 sticky_piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~1 ~ ~-2 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~ ~-1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~ ~ sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~ ~1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~ ~2 sticky_piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~1 ~1 ~-2 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~1 ~-1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~1 ~ sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~1 ~1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~1 ~2 sticky_piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~1 ~2 ~-2 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~2 ~-1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~2 ~ sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~2 ~1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~1 ~2 ~2 sticky_piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~2 ~-2 ~-2 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~-2 ~-1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~-2 ~ sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~-2 ~1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~-2 ~2 sticky_piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~2 ~-1 ~-2 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~-1 ~-1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~-1 ~ sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~-1 ~1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~-1 ~2 sticky_piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~2 ~ ~-2 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~ ~-1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~ ~ sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~ ~1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~ ~2 sticky_piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~2 ~1 ~-2 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~1 ~-1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~1 ~ sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~1 ~1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~1 ~2 sticky_piston run scoreboard players set @s ncmPistonNearby 1

execute as @a at @s if block ~2 ~2 ~-2 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~2 ~-1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~2 ~ sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~2 ~1 sticky_piston run scoreboard players set @s ncmPistonNearby 1
execute as @a at @s if block ~2 ~2 ~2 sticky_piston run scoreboard players set @s ncmPistonNearby 1


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


execute as @e[type=minecraft:player] at @s if block ~ ~ ~ #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~ #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~ ~1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~ #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~ ~-1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~-1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~-1 #climbable run scoreboard players set @s ncmLadderNearby 1

execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~ #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~ ~1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~ #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~ ~-1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~-1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~-1 #climbable run scoreboard players set @s ncmLadderNearby 1

execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~ #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~ ~1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~ #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~ ~-1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~-1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~-1 #climbable run scoreboard players set @s ncmLadderNearby 1



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




# Player Jump Latency Check
execute as @a if score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players set @s ncmSFJC 0
execute as @a if score @s ncmSFPlayerLatencyFP matches 1.. run scoreboard players remove @s ncmSFPlayerLatencyFP 1
execute as @a if score @s ncmSFJC matches 2.. run scoreboard players operation @s ncmSFPlayerLatencyFP = DataHolder ncmc_sf_fp_2

# Damage

execute as @a if score @s ncmFPDamageReset matches 1.. run scoreboard players set @s ncmFPDamage -50
execute as @a if score @s ncmFPDamageReset matches 1.. run scoreboard players set @s ncmFPDamageReset 0
execute as @a if score @s ncmFPDamage matches 1.. run scoreboard players set @s ncmFPDamage -50
execute as @a if score @s ncmFPDamage matches -50..-1 run scoreboard players add @s ncmFPDamage 1

execute as @a if score @s ncmFPDecent matches 1.. run scoreboard players add @s ncmFPDecent 1

