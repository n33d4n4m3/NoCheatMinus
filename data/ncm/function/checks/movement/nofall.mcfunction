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
# Description:  This check monitors the player's fall distance, calculates the expected fall damage and compares the calculated and the applied fall damage.
# Fail:         This check fails if the applied fall damage differs from the calculated expected fall damage.
# Author:       n33d4n4m3
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.


# FP Elimination
execute as @a run scoreboard players add @s ncmMVMNFTimeAlive 1
execute as @a if score @s ncmMVMNFTimeAlive matches ..120 run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @a if score @s ncmMVMNFDeathCount matches 1.. run scoreboard players set @s ncmMVMNFTimeAlive 0
execute as @a if score @s ncmMVMNFDeathCount matches 1.. run scoreboard players set @s ncmMVMNFDeathCount 0

scoreboard players set @e[type=player,predicate=ncm:nearby/water_fluid] ncmMVMNFFPSourceNearby 1

execute as @e[type=minecraft:player] at @s if block ~ ~ ~ #beds run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~ #beds run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~ ~1 #beds run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~1 #beds run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~ #beds run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~ ~-1 #beds run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~-1 #beds run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~1 #beds run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~-1 #beds run scoreboard players set @s ncmMVMNFFPSourceNearby 1

execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~ #beds run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~ ~1 #beds run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~1 #beds run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~ #beds run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~ ~-1 #beds run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~-1 #beds run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~1 #beds run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~-1 #beds run scoreboard players set @s ncmMVMNFFPSourceNearby 1

execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~ #beds run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~ ~1 #beds run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~1 #beds run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~ #beds run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~ ~-1 #beds run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~-1 #beds run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~1 #beds run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~-1 #beds run scoreboard players set @s ncmMVMNFFPSourceNearby 1

execute as @e[type=minecraft:player] at @s if block ~ ~ ~ #ncm:fall_damage_exempt run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~ #ncm:fall_damage_exempt run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~ ~1 #ncm:fall_damage_exempt run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~1 #ncm:fall_damage_exempt run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~ #ncm:fall_damage_exempt run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~ ~-1 #ncm:fall_damage_exempt run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~-1 #ncm:fall_damage_exempt run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~1 #ncm:fall_damage_exempt run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~-1 #ncm:fall_damage_exempt run scoreboard players set @s ncmMVMNFFPSourceNearby 1

execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~ #ncm:fall_damage_exempt run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~ ~1 #ncm:fall_damage_exempt run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~1 #ncm:fall_damage_exempt run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~ #ncm:fall_damage_exempt run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~ ~-1 #ncm:fall_damage_exempt run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~-1 #ncm:fall_damage_exempt run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~1 #ncm:fall_damage_exempt run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~-1 #ncm:fall_damage_exempt run scoreboard players set @s ncmMVMNFFPSourceNearby 1

execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~ #ncm:fall_damage_exempt run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~ ~1 #ncm:fall_damage_exempt run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~1 #ncm:fall_damage_exempt run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~ #ncm:fall_damage_exempt run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~ ~-1 #ncm:fall_damage_exempt run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~-1 #ncm:fall_damage_exempt run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~1 #ncm:fall_damage_exempt run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~-1 #ncm:fall_damage_exempt run scoreboard players set @s ncmMVMNFFPSourceNearby 1

scoreboard players set @e[type=player,predicate=ncm:nearby/slime_block] ncmMVMNFFPSourceNearby 1
scoreboard players set @e[type=player,predicate=ncm:nearby/lava_fluid] ncmMVMNFFPSourceNearby 1
scoreboard players set @e[type=player,predicate=ncm:nearby/water_fluid] ncmMVMNFFPSourceNearby 1
scoreboard players set @e[type=player,predicate=ncm:nearby/hay_block] ncmMVMNFFPSourceNearby 1

execute as @e[type=minecraft:player] at @s if entity @e[type=#minecraft:boat,distance=..2] run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if entity @e[type=oak_chest_boat,distance=..2] run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if entity @e[type=spruce_chest_boat,distance=..2] run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if entity @e[type=cherry_chest_boat,distance=..2] run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if entity @e[type=bamboo_chest_raft,distance=..2] run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if entity @e[type=mangrove_chest_boat,distance=..2] run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if entity @e[type=dark_oak_chest_boat,distance=..2] run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if entity @e[type=acacia_chest_boat,distance=..2] run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if entity @e[type=jungle_chest_boat,distance=..2] run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if entity @e[type=birch_chest_boat,distance=..2] run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if entity @e[type=#ncm:minecarts,distance=..4] run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if entity @e[type=wind_charge,distance=..8] run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if score @s ncmUsedEnderPearl matches 1.. run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if score @s ncmUsedChorusFruit matches 1.. run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player] at @s if score @s ncmUsedChorusFruit matches 1.. run scoreboard players set @s ncmUsedChorusFruit 0


execute as @e[type=minecraft:player,gamemode=creative] run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e[type=minecraft:player,gamemode=spectator] run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @a if predicate ncm:has_featherfalling_armor run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @a if predicate ncm:has_protection_armor run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @a if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:slow_falling":{}}}} run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @a if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:resistance":{}}}} run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @a if items entity @s armor.chest elytra run scoreboard players set @s ncmMVMNFFPSourceNearby 1
execute as @e on vehicle on passengers run scoreboard players set @s ncmMVMNFFPSourceNearby 1


execute as @e[type=minecraft:player] if score @s ncmMVMNFFPSourceNearby matches 1.. run scoreboard players add @s ncmMVMNFFPSourceNearby 1










execute as @a if predicate ncm:is_on_ground at @s unless score @s ncmAirAround matches 1.. store result score @s ncmNFLastYOnGrd run data get entity @s Pos[1] 100

execute as @a[tag=VE.PlayerMoveEvent] if score @s ncmAirAround matches 1 unless score @s ncmMVMNFFall matches 1.. if score @s VE.PlayerMoveEvent.hasDescended matches 1 if score @s ncmMVMNFFallStartYCoord matches 0 run scoreboard players operation @s ncmMVMNFFallStartYCoord = @s ncmNFLastYOnGrd


execute as @e[type=minecraft:player] if score @s ncmMVMNFFPSourceNearby matches 1.. run scoreboard players set @s ncmMVMNFFallStartYCoord 0

execute as @a if score @s ncmMVMNFFallEndYCoord >= @s ncmMVMNFFallStartYCoord run scoreboard players set @s ncmMVMNFFallStartYCoord 0
execute as @a if score @s ncmMVMNFFallEndYCoord >= @s ncmMVMNFFallStartYCoord run scoreboard players set @s ncmMVMNFFallEndYCoord 0

execute as @a at @s unless score @s ncmMVMNFFall matches 1.. if predicate ncm:is_on_ground unless score @s ncmAirAround matches 1 unless score @s ncmMVMNFFallStartYCoord matches 0 run scoreboard players operation @s ncmMVMNFFallEndYCoord = @s VE.PlayerMoveEvent.toY
#execute as @a at @s unless score @s ncmMVMNFFall matches 1.. if score @s ncmMVMNFFallEndYCoord matches 0 unless data entity @s {OnGround:0b} unless score @s ncmMVMNFFallStartYCoord matches 0 run scoreboard players operation @s ncmMVMNFFallEndYCoord = @s VE.PlayerMoveEvent.toY
#execute  at @s unless score @s ncmAirAround matches 1 run scoreboard players set @s ncmMVMNFFallStartYCoord 0




execute as @a unless score @s ncmMVMNFFall matches 1.. unless score @s ncmMVMNFFallEndYCoord matches 0 run scoreboard players operation @s ncmMVMNFFall = @s ncmMVMNFFallStartYCoord
execute as @a unless score @s ncmMVMNFFallEndYCoord matches 0 run scoreboard players operation @s ncmMVMNFFall -= @s ncmMVMNFFallEndYCoord
#execute as @a if score @s ncmMVMNFFallEndYCoord matches 1.. if score @s ncmMVMNFFallStartYCoord matches 1.. if score @s ncmMVMNFFall matches 1.. run tellraw @s ["","[DEBUG] Start: ",{"score":{"name":"@s","objective":"ncmMVMNFFallStartYCoord"}}," End: ",{"score":{"name":"@s","objective":"ncmMVMNFFallEndYCoord"}}," Distance: ",{"score":{"name":"@s","objective":"ncmMVMNFFall"}}]
execute as @a if score @s ncmMVMNFFall matches 1.. run scoreboard players set @s ncmMVMNFFallEndYCoord 0
execute as @a if score @s ncmMVMNFFall matches 1.. run scoreboard players set @s ncmMVMNFFallStartYCoord 0
execute store result score DataHolder ncmMVMNFApplyFDmg run gamerule fallDamage
execute as @e[type=minecraft:player] if score DataHolder ncmMVMNFApplyFDmg matches 0 run scoreboard players set @s ncmMVMNFFall 0
execute as @e[type=minecraft:player] if score @s ncmFPdeathTime matches ..10 run scoreboard players set @s ncmMVMNFFall 0
execute as @e[type=minecraft:player] run scoreboard players add @s ncmMVMNFReset 1
execute as @e[type=minecraft:player] if score @s ncmMVMNFFall matches 1.. run scoreboard players set @s ncmMVMNFDebug 1
execute as @e[type=minecraft:player] if score @s ncmMVMNFFall matches 335.. run scoreboard players add @s ncmMVMNFField1 1
execute as @e[type=minecraft:player] if score @s ncmMVMNFFall matches 335.. if score @s ncmMVMNFField1 matches 3 run scoreboard players operation @s ncmMVMNFCalcHlth -= @s ncmPlayerHealth

execute as @e[type=minecraft:player] if score @s ncmPlayerHealth > @s ncmMVMNFCalcFall if score @s ncmMVMNFField1 matches 3.. run scoreboard players operation @s ncmMVMNFBlocksFallDamage = @s ncmMVMNFFall
execute as @e[type=minecraft:player] if score @s ncmPlayerHealth > @s ncmMVMNFCalcFall if score @s ncmMVMNFField1 matches 3.. run scoreboard players operation @s ncmMVMNFSubblocksFallDamage = @s ncmMVMNFFall
execute as @e[type=minecraft:player] if score @s ncmPlayerHealth > @s ncmMVMNFCalcFall if score @s ncmMVMNFField1 matches 3.. run scoreboard players operation @s ncmMVMNFBlocksFallDamage /= DataHolder ncm.100
execute as @e[type=minecraft:player] if score @s ncmPlayerHealth > @s ncmMVMNFCalcFall if score @s ncmMVMNFField1 matches 3.. run scoreboard players operation @s ncmMVMNFSubblocksFallDamage %= DataHolder ncm.100


#execute as @a run tellraw @s ["","[DEBUG] Health: ",{"score":{"name":"@s","objective":"ncmPlayerHealth"}}]







execute as @e[type=minecraft:player] unless score @s ncmMVMNFFPSourceNearby matches 1.. unless score @s ncmMVMNFCalcHlth matches ..-1 if score @s ncmPlayerHealth > @s ncmMVMNFCalcFall if score @s ncmMVMNFField1 matches 3.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players set @s ncmFailedMVMNF 5
execute as @e[type=minecraft:player] unless score @s ncmMVMNFFPSourceNearby matches 1.. unless score @s ncmMVMNFCalcHlth matches ..-1 if score @s ncmPlayerHealth > @s ncmMVMNFCalcFall if score @s ncmMVMNFField1 matches 3.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"NoFall","color":"light_purple"},{"text":" {~","color":"gray"},{"score":{"name":"@s","objective":"ncmMVMNFBlocksFallDamage"},"color":"gray"},{"text":".","color":"gray"},{"score":{"name":"@s","objective":"ncmMVMNFSubblocksFallDamage"},"color":"gray"},{"text":" blocks, ","color":"gray"},{"score":{"name":"@s","objective":"ncmMVMNFStoreHlth"},"color":"gray"},{"text":" -> ","color":"gray"},{"score":{"name":"@s","objective":"ncmMVMNFCalcHlth"},"color":"gray"},{"text":" HP}","color":"gray"}]
execute as @e[type=minecraft:player] unless score @s ncmMVMNFFPSourceNearby matches 1.. unless score @s ncmMVMNFCalcHlth matches ..-1 if score @s ncmPlayerHealth > @s ncmMVMNFCalcFall if score @s ncmMVMNFField1 matches 3.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"NoFall","color":"light_purple"},{"text":" {~","color":"gray"},{"score":{"name":"@s","objective":"ncmMVMNFBlocksFallDamage"},"color":"gray"},{"text":".","color":"gray"},{"score":{"name":"@s","objective":"ncmMVMNFSubblocksFallDamage"},"color":"gray"},{"text":" blocks, ","color":"gray"},{"score":{"name":"@s","objective":"ncmMVMNFStoreHlth"},"color":"gray"},{"text":" -> ","color":"gray"},{"score":{"name":"@s","objective":"ncmMVMNFCalcHlth"},"color":"gray"},{"text":" HP}","color":"gray"}]

execute as @e[type=minecraft:player] unless score @s ncmMVMNFFPSourceNearby matches 1.. unless score @s ncmMVMNFCalcHlth matches ..-1 if score @s ncmPlayerHealth > @s ncmMVMNFCalcFall if score @s ncmMVMNFField1 matches 3.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score DataHolder ncmBlockMode matches 1 run scoreboard players operation @s ncmNFFallDamageToApply = @s ncmMVMNFStoreHlth
execute as @e[type=minecraft:player] unless score @s ncmMVMNFFPSourceNearby matches 1.. unless score @s ncmMVMNFCalcHlth matches ..-1 if score @s ncmPlayerHealth > @s ncmMVMNFCalcFall if score @s ncmMVMNFField1 matches 3.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score DataHolder ncmBlockMode matches 1 run scoreboard players operation @s ncmNFFallDamageToApply -= @s ncmMVMNFCalcHlth
execute as @e[type=minecraft:player] unless score @s ncmMVMNFFPSourceNearby matches 1.. unless score @s ncmMVMNFCalcHlth matches ..-1 if score @s ncmPlayerHealth > @s ncmMVMNFCalcFall if score @s ncmMVMNFField1 matches 3.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score DataHolder ncmBlockMode matches 1 if score @s ncmNFFallDamageToApply matches 1.. run function ncm:checks/movement/util/nf_applyfalldamage

# Calculating expected health drop
execute as @e[type=minecraft:player] if score @s ncmMVMNFFall matches 335.. if score @s ncmMVMNFField1 matches 1 run scoreboard players operation @s ncmMVMNFCalcFall = @s ncmMVMNFFall
execute as @e[type=minecraft:player] if score @s ncmMVMNFFall matches 335.. if score @s ncmMVMNFField1 matches 1 run scoreboard players operation @s ncmMVMNFCalcHlth = @s ncmPlayerHealth
execute as @e[type=minecraft:player] if score @s ncmMVMNFFall matches 335.. if score @s ncmMVMNFField1 matches 1 run scoreboard players operation @s ncmMVMNFCalcFall -= DataHolder ncmc_nf_1
execute as @e[type=minecraft:player] if score @s ncmMVMNFFall matches 335.. if score @s ncmMVMNFField1 matches 1 run scoreboard players operation @s ncmMVMNFCalcFall /= DataHolder ncm.100
execute as @e[type=minecraft:player] if score @s ncmMVMNFFall matches 335.. if score @s ncmMVMNFField1 matches 1 run scoreboard players operation @s ncmMVMNFStoreHlth = @s ncmMVMNFCalcFall
execute as @e[type=minecraft:player] if score @s ncmMVMNFFall matches 335.. if score @s ncmMVMNFField1 matches 1 run scoreboard players operation @s ncmMVMNFCalcFall -= @s ncmMVMNFCalcHlth
execute as @e[type=minecraft:player] if score @s ncmMVMNFFall matches 335.. if score @s ncmMVMNFField1 matches 1 run scoreboard players operation @s ncmMVMNFCalcFall *= DataHolder ncm.-1



execute as @e[type=minecraft:player] if score @s ncmMVMNFReset matches 5.. if score @s ncmMVMNFFall matches ..335 run scoreboard players set @s ncmMVMNFFall 0
execute as @e[type=minecraft:player] if score @s ncmMVMNFReset matches 5.. if score @s ncmMVMNFFall matches ..335 run scoreboard players set @s ncmMVMNFField1 0
execute as @e[type=minecraft:player] if score @s ncmMVMNFReset matches 5.. if score @s ncmMVMNFFall matches ..335 run scoreboard players set @s ncmMVMNFCalcFall 0
execute as @e[type=minecraft:player] if score @s ncmMVMNFFall matches 1.. if score @s ncmMVMNFField1 matches 3.. run scoreboard players set @s ncmMVMNFFall 0
execute as @e[type=minecraft:player] if score @s ncmMVMNFFall matches 0 run scoreboard players set @s ncmMVMNFDebug 0
execute as @e[type=minecraft:player] if score @s ncmMVMNFField1 matches 3.. run scoreboard players set @s ncmMVMNFField1 0
execute as @e[type=minecraft:player] if score @s ncmMVMNFReset matches 5.. run scoreboard players set @s ncmMVMNFReset 0
execute as @e[type=minecraft:player] if predicate ncm:is_on_ground if score @s ncmMVMNFFPSourceNearby matches 10.. run scoreboard players set @s ncmMVMNFFPSourceNearby 0