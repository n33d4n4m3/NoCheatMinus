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
# Subchecks:    - Distance
#               - LostGround
# Author:        n33d4n4m3
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.




# ------------------
# FP elemination
# ------------------

# Iron Golem FP fix

execute as @e[type=minecraft:player] at @s store result score @s ncmAngryIGNearby run data get entity @e[type=minecraft:iron_golem,limit=1,distance=..5] AngerTime 1

# Elytra FP fix

execute as @e[type=minecraft:player] if score @s ncmAviate matches 1.. unless score @s ncmAviateRC matches 1.. run scoreboard players set @s ncmAviateRC 1
execute as @e[type=minecraft:player] if score @s ncmAviateRC matches 1.. run scoreboard players add @s ncmAviateRC 1
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

# ------------------
# Subcheck: Distance
# ------------------




execute as @e[type=minecraft:player] if score @s ncmFPdeathTime matches ..10 run scoreboard players set @s ncmSFDS_ivl 0
execute as @e[type=minecraft:player] if score @s ncmSFDS_ivl >= DataHolder ncmc_sf_ds_1 run scoreboard players add @s ncmSFDS_ivlrc 1


execute as @e[type=minecraft:player] if score @s ncmSFDS_ivlrc >= DataHolder ncmc_sf_ds_2 run scoreboard players set @s ncmSFDS_ivl 0
execute as @e[type=minecraft:player] if score @s ncmSFDS_ivlrc >= DataHolder ncmc_sf_ds_2 run scoreboard players set @s ncmSFDS_ivlrc 0





# --------------------
# Subcheck: LostGround
# --------------------
execute as @e[type=minecraft:player] store result score @s ncmYMotion run data get entity @s Motion[1] 1
execute as @e[type=minecraft:player,nbt={OnGround:1b}] unless score @s ncmYMotion matches -1 run scoreboard players add @s ncmSFLG_ivl 1
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivl matches 1.. run scoreboard players add @s ncmSFLG_ivlrc 1
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivl >= DataHolder ncmc_sf_lg_1 unless score @s ncmAviate matches 1.. run tellraw @s[scores={inputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"LostGround","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"@s","objective":"ncmYMotion"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivl >= DataHolder ncmc_sf_lg_1 unless score @s ncmAviate matches 1.. run tellraw @a[scores={inputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"LostGround","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"@s","objective":"ncmYMotion"},"color":"gray"},{"text":"}","color":"gray"}]

execute as @e[type=minecraft:player] if score @s ncmSFLG_ivlrc >= DataHolder ncmc_sf_lg_2 run scoreboard players set @s ncmSFLG_ivl 0
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivlrc >= DataHolder ncmc_sf_lg_2 run scoreboard players set @s ncmSFLG_ivlrc 0
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivl >= DataHolder ncmc_sf_lg_1 run scoreboard players set @s ncmSFLG_ivl 0


# ------------------------
# Subcheck: OffGroundTicks
# ------------------------




execute as @a if score @s ncmOGJump matches 1.. run scoreboard players add @s ncmOGJump 1
execute as @a[gamemode=!creative] at @s unless block ~ ~ ~ cobweb if score @s ncmYMotion matches 0.. unless score @s ncmOGJump matches 1.. unless score @s ncmDeathTime matches 1.. unless score @s ncmAngryIGNearby matches 1.. unless score @s ncmAviate matches 1.. run scoreboard players add @s ncmOffGrTicks 1
execute as @a if score @s ncmOGJump >= DataHolder ncmc_sf_og_3 run scoreboard players set @s ncmOGJump 0
execute as @a if score @s ncmOffGrTicks matches 1.. run scoreboard players add @s ncmOffGrTicksC 1
execute as @a if score @s ncmOffGrTicks >= DataHolder ncmc_sf_og_1 run tellraw @s[scores={inputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"OffGroundTicks","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_og_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_og_2"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_og_3"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmOffGrTicks"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmOffGrTicksC"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @a if score @s ncmOffGrTicks >= DataHolder ncmc_sf_og_1 run tellraw @a[scores={inputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"OffGroundTicks","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_og_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_og_2"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_og_3"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmOffGrTicks"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmOffGrTicksC"},"color":"gray"},{"text":"}","color":"gray"}]

execute as @a if score @s ncmOffGrTicks >= DataHolder ncmc_sf_og_1 run scoreboard players set @s ncmOffGrTicks 0
execute as @a if score @s ncmOffGrTicksC >= DataHolder ncmc_sf_og_2 run scoreboard players set @s ncmOffGrTicks 0
execute as @a if score @s ncmOffGrTicksC >= DataHolder ncmc_sf_og_2 run scoreboard players set @s ncmOffGrTicksC 0


# ------------------------
# Subcheck: Climb
# ------------------------

execute as @e[type=minecraft:player] if score @s ncmBoat matches 1.. if score @s ncmClimb matches 1 run tellraw @s[scores={inputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Climb","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"@s","objective":"ncmBoat"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmClimb"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmLastPlayerY"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmPlayerY"},"color":"gray"},{"text":", Boat}","color":"gray"}]
execute as @e[type=minecraft:player] if score @s ncmBoat matches 1.. if score @s ncmClimb matches 1 run tellraw @a[scores={inputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Climb","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"@s","objective":"ncmBoat"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmClimb"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmLastPlayerY"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmPlayerY"},"color":"gray"},{"text":", Boat}","color":"gray"}]
execute as @e[type=minecraft:player] if score @s ncmBoat matches 1.. run scoreboard players set @s ncmBoat 0


# ---------------------------
# Subcheck: ConstantClimbRate
# ---------------------------


execute as @e[type=minecraft:player,nbt={OnGround:0b},gamemode=!creative] run scoreboard players add @s ncmMaintainRC 1
execute as @e[type=minecraft:player] if score @s ncmMaintainRC matches 1 store result score @s ncmLastMaintainY run data get entity @s Pos[1] 100000
execute as @e[type=minecraft:player] if score @s ncmMaintainRC matches 3 store result score @s ncmMaintainY run data get entity @s Pos[1] 100000

#execute as @e[type=minecraft:player,nbt={OnGround:0b}] if score @s ncmMaintainRC matches 3 if score @s ncmLastMaintainY = @s ncmMaintainY run say Maintain whilst offground.
#execute as @e[type=minecraft:player,nbt={OnGround:0b}] if score @s ncmMaintainRC matches 3 if score @s ncmLastMaintainY < @s ncmMaintainY run say Climb whilst offground.
#execute as @e[type=minecraft:player,nbt={OnGround:0b}] if score @s ncmMaintainRC matches 3 if score @s ncmLastMaintainY > @s ncmMaintainY run say Decent whilst offground.

execute as @e[type=minecraft:player] if score @s ncmMaintainRC = DataHolder ncmc_sf_cr_1 run scoreboard players operation @s ncmYSpeed = @s ncmMaintainY
execute as @e[type=minecraft:player] if score @s ncmMaintainRC = DataHolder ncmc_sf_cr_1 run scoreboard players operation @s ncmYSpeed -= @s ncmLastMaintainY

execute as @e[type=minecraft:player] if score @s ncmMaintainRC = DataHolder ncmc_sf_cr_1 run scoreboard players set @s ncmMaintainRC 0

execute as @e[type=minecraft:player,nbt={OnGround:0b},gamemode=!creative] run scoreboard players add @s ncmYSpMaintainRC 1
execute as @e[type=minecraft:player] if score @s ncmYSpMaintainRC matches 1 run scoreboard players operation @s ncmLastYSpeed = @s ncmYSpeed
execute as @e[type=minecraft:player] if score @s ncmLadder matches 1.. run scoreboard players set @s ncmYSpMaintainRC 0
execute as @e[type=minecraft:player] if score @s ncmLadder matches 1.. run scoreboard players set @s ncmLadder 0
execute as @e[type=minecraft:player] at @s if block ~ ~ ~ water run scoreboard players set @s ncmYSpMaintainRC 0
execute as @e[type=minecraft:player] if score @s ncmCobwebNearby matches 1.. run scoreboard players set @s ncmYSpMaintainRC 0


execute as @e[type=minecraft:player,nbt={OnGround:0b},gamemode=!creative] unless score @s ncmYSpeed matches 0 if score @s ncmYSpMaintainRC = DataHolder ncmc_sf_cr_2 if score @s ncmLastYSpeed = @s ncmYSpeed run tellraw @s[scores={inputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"ConstantClimbRate","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_cr_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_cr_2"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmYSpeed"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmMaintainY"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmLastMaintainY"},"color":"gray"},{"text":"}","color":"gray"}]

execute as @e[type=minecraft:player,nbt={OnGround:0b},gamemode=!creative] unless score @s ncmYSpeed matches 0 if score @s ncmYSpMaintainRC = DataHolder ncmc_sf_cr_2 if score @s ncmLastYSpeed = @s ncmYSpeed run tellraw @a[scores={inputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"ConstantClimbRate","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_cr_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_cr_2"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmYSpeed"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmMaintainY"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmLastMaintainY"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @e[type=minecraft:player] if score @s ncmYSpMaintainRC = DataHolder ncmc_sf_cr_2 run scoreboard players set @s ncmYSpMaintainRC 0


execute as @e[type=minecraft:player,nbt={OnGround:1b}] run scoreboard players set @s ncmLastMaintainY -1
execute as @e[type=minecraft:player,nbt={OnGround:1b}] run scoreboard players set @s ncmMaintainY 0

execute as @e[type=minecraft:player,nbt={OnGround:1b}] run scoreboard players set @s ncmMaintainRC 0
execute as @e[type=minecraft:player,nbt={OnGround:1b}] run scoreboard players set @s ncmYSpMaintainRC 0
execute as @e[type=minecraft:player,nbt={OnGround:1b}] run scoreboard players set @s ncmLastYSpeed 0
execute as @e[type=minecraft:player,nbt={OnGround:1b}] run scoreboard players set @s ncmYSpeed 0




scoreboard players set @a ncmClimb 0
scoreboard players set @a ncmMaintain 0


# ------------------------
# Subcheck: MonitorMotionX
# ------------------------
#execute as @e[type=minecraft:player] store result score @s ncmXMotionM run data get entity @s Motion[0] 10000
#execute as @a if score @s ncmXMotionM >= DataHolder ncmc_sf_xm_1 run say XMotion max exceeded.

# ------------------------
# Subcheck: MonitorMotionY
# ------------------------

execute as @e[type=minecraft:player] store result score @s ncmXMotion run data get entity @s Motion[0] 10000
execute as @e[type=minecraft:player] store result score @s ncmYMotionM run data get entity @s Motion[1] 10000
execute as @a if score @s ncmYMotionM > @s ncmYMotionMax run scoreboard players operation @s ncmYMotionMax = @s ncmYMotionM
execute as @e[type=minecraft:player] run scoreboard players operation @s ncmYMotionM -= @s ncmJumpBoostOffs

execute as @a if score @s ncmYMotionM >= DataHolder ncmc_sf_ym_1 unless score @s ncmAngryIGNearby matches 1.. unless score @s ncmAviate matches 1.. run tellraw @s[scores={inputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"MonitorMotionY","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_ym_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmYMotionM"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmJumpBoostOffs"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @a if score @s ncmYMotionM >= DataHolder ncmc_sf_ym_1 unless score @s ncmAngryIGNearby matches 1.. unless score @s ncmAviate matches 1.. run tellraw @s[scores={inputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"MonitorMotionY","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_ym_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmYMotionM"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmJumpBoostOffs"},"color":"gray"},{"text":"}","color":"gray"}]


# ------------------------
# Subcheck: MonitorMotionZ
# ------------------------
#execute as @e[type=minecraft:player] store result score @s ncmZMotionM run data get entity @s Motion[2] 10000
#execute as @a if score @s ncmXMotionM >= DataHolder ncmc_sf_zm_1 run say ZMotion max exceeded.
