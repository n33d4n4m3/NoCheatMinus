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
#               - LiquidGravity
#               - OffGroundTicks
#               - Climb
#               - ConstantClimbRate
#               - SprintFL
#               - UnexptectedClimb
# Author:        n33d4n4m3
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.



# -----------------------------
# Subcheck: SpoofGround
# -----------------------------



execute as @a if score @s ncmSpoofWaitLatencyTicks matches -1 run scoreboard players set @s ncmSpoofIsWaiting 0
execute as @e[type=minecraft:player,nbt={OnGround:1b},gamemode=!spectator,gamemode=!creative] at @s unless entity @e[type=minecraft:skeleton_horse,distance=..2] unless entity @e[type=minecraft:strider,distance=..7] unless entity @e[type=minecraft:camel,distance=..7] unless entity @e[type=minecraft:pig,distance=..2] unless entity @e[type=minecraft:horse,distance=..2] unless score @s ncmSpoofIsWaiting matches 1 if score @s ncmAirAround matches 1 run scoreboard players set @s ncmSpoofWaitLatencyTicks 3
execute as @e[type=minecraft:player,nbt={OnGround:1b},gamemode=!spectator,gamemode=!creative] at @s unless entity @e[type=minecraft:skeleton_horse,distance=..2] unless entity @e[type=minecraft:strider,distance=..7] unless entity @e[type=minecraft:camel,distance=..7] unless entity @e[type=minecraft:pig,distance=..2] unless entity @e[type=minecraft:horse,distance=..2] unless score @s ncmSpoofIsWaiting matches 1 if score @s ncmAirAround matches 1 run scoreboard players operation @s ncmSpoofWaitLatencyTicks += @s ncmLastLatencyLevel
execute as @e[type=minecraft:player,nbt={OnGround:1b},gamemode=!spectator,gamemode=!creative] at @s unless entity @e[type=minecraft:skeleton_horse,distance=..2] unless entity @e[type=minecraft:strider,distance=..7] unless entity @e[type=minecraft:camel,distance=..7] unless entity @e[type=minecraft:pig,distance=..2] unless entity @e[type=minecraft:horse,distance=..2] unless score @s ncmSpoofIsWaiting matches 1 if score @s ncmAirAround matches 1 run scoreboard players set @s ncmSpoofIsWaiting 1


execute as @e[type=minecraft:player] if score @s ncmSpoofWaitLatencyTicks matches 0.. run scoreboard players remove @s ncmSpoofWaitLatencyTicks 1

execute as @e[type=minecraft:player] at @s unless score @s ncmOGJump matches 1.. if score @s ncmSpoofWaitLatencyTicks matches 0 if score @s ncmAirAround matches 1 unless score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players set @s ncmFailedMVMSF 2
execute as @e[type=minecraft:player] at @s unless score @s ncmOGJump matches 1.. if score @s ncmSpoofWaitLatencyTicks matches 0 if score @s ncmAirAround matches 1 unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SpoofGround","color":"light_purple"},{"text":" {...","color":"gray"},{"text":"}","color":"gray"}]
execute as @e[type=minecraft:player] at @s unless score @s ncmOGJump matches 1.. if score @s ncmSpoofWaitLatencyTicks matches 0 if score @s ncmAirAround matches 1 unless score DataHolder ncmMVMTSLagTimeout matches 1.. run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SpoofGround","color":"light_purple"},{"text":" {...","color":"gray"},{"text":"}","color":"gray"}]




#execute as @e[type=minecraft:player] if score @s ncmAirAround matches 1 run scoreboard players set @s ncmAirAround 0





# --------------------
# Subcheck: LostGround
# --------------------
execute as @e[type=minecraft:player] store result score @s ncmYMotion run data get entity @s Motion[1] 1
execute as @e[type=minecraft:player,nbt={OnGround:1b},gamemode=!creative,gamemode=!spectator] at @s unless score @s ncmLevitate matches 1.. unless score @s ncmAviate matches 1.. unless score @s ncmCobwebNearby matches 1.. unless score @s ncmLiquidNearby matches 1.. unless score @s ncmYMotion matches -1 run scoreboard players add @s ncmSFLG_ivl 1
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivl matches 1.. run scoreboard players add @s ncmSFLG_ivlrc 1
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivl >= DataHolder ncmc_sf_lg_1 unless score @s ncmCobwebNearby matches 1.. run scoreboard players set @s ncmFailedMVMSF 5
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivl >= DataHolder ncmc_sf_lg_1 unless score @s ncmCobwebNearby matches 1.. if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"LostGround","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"@s","objective":"ncmYMotion"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivl >= DataHolder ncmc_sf_lg_1 unless score @s ncmCobwebNearby matches 1.. run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"LostGround","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"@s","objective":"ncmYMotion"},"color":"gray"},{"text":"}","color":"gray"}]

execute as @e[type=minecraft:player] if score @s ncmSFLG_ivlrc >= DataHolder ncmc_sf_lg_2 run scoreboard players set @s ncmSFLG_ivl 0
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivlrc >= DataHolder ncmc_sf_lg_2 run scoreboard players set @s ncmSFLG_ivlrc 0
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivl >= DataHolder ncmc_sf_lg_1 run scoreboard players set @s ncmSFLG_ivl 0

# -----------------------
# Subcheck: LiquidGravity
# -----------------------

execute as @a store result score @s ncmMVMSFWWMotionY run data get entity @s Motion[1] 1000

execute as @a at @s unless score @s ncmLevitate matches 1.. if block ~ ~-0.01 ~ water if score @s ncmMVMSFWWMotionY matches ..-1000 run scoreboard players add @s ncmMVMSFWWFlagCount 1
execute as @a at @s unless score @s ncmLevitate matches 1.. if block ~ ~-0.01 ~ lava if score @s ncmMVMSFWWMotionY matches ..-1000 run scoreboard players add @s ncmMVMSFWWFlagCount 1


execute as @a at @s unless score @s ncmLevitate matches 1.. if block ~ ~-0.01 ~ water if score @s ncmMVMSFWWFlagCount matches 2.. run scoreboard players set @s ncmFailedMVMSF 5
execute as @a at @s unless score @s ncmLevitate matches 1.. if block ~ ~-0.01 ~ water if score @s ncmMVMSFWWFlagCount matches 2.. if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"LiquidGravity","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"@s","objective":"ncmMVMSFWWMotionY"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @a at @s unless score @s ncmLevitate matches 1.. if block ~ ~-0.01 ~ water if score @s ncmMVMSFWWFlagCount matches 2.. run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"LiquidGravity","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"@s","objective":"ncmMVMSFWWMotionY"},"color":"gray"},{"text":"}","color":"gray"}]

execute as @a if score @s ncmMVMSFWWFlagCount matches 1.. run scoreboard players add @s ncmMVMSFWWFlagCountRC 1
execute as @a if score @s ncmMVMSFWWFlagCount matches 2 run scoreboard players set @s ncmMVMSFWWFlagCount 0
execute as @a if score @s ncmMVMSFWWFlagCount matches 2 run scoreboard players set @s ncmMVMSFWWFlagCountRC 0
execute as @a if score @s ncmMVMSFWWFlagCountRC matches 30.. run scoreboard players set @s ncmMVMSFWWFlagCount 0
execute as @a if score @s ncmMVMSFWWFlagCountRC matches 30.. run scoreboard players set @s ncmMVMSFWWFlagCountRC 0



# ------------------------
# Subcheck: JumpCount
# ------------------------

execute as @a at @s unless block ~ ~2 ~ minecraft:air run scoreboard players set @s ncmSFJCCeilingGrace 20
execute as @a if score @s ncmSFJCCeilingGrace matches 1.. run scoreboard players remove @s ncmSFJCCeilingGrace 1

execute as @a if score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players set @s ncmSFJCRC 0


execute as @a if score @s ncmSFJC matches 1.. unless score @s ncmSFJCCeilingGrace matches 1.. unless score @s ncmSFPlayerLatencyFP matches 1.. run scoreboard players add @s ncmSFJCR 1
execute as @a if score @s ncmSFJCR matches 1.. run scoreboard players add @s ncmSFJCRC 1

#execute as @a if score @s ncmSFJCR > DataHolder ncmc_sf_jc_1 unless score @s ncmSFPlayerLatencyFP matches 1.. run scoreboard players set @s ncmFailedMVMSF 9
#execute as @a if score @s ncmSFJCR > DataHolder ncmc_sf_jc_1 unless score @s ncmSFPlayerLatencyFP matches 1.. if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"JumpCount","color":"light_purple"},{"text":" {...}","color":"gray"}]
#execute as @a if score @s ncmSFJCR > DataHolder ncmc_sf_jc_1 unless score @s ncmSFPlayerLatencyFP matches 1.. run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"JumpCount","color":"light_purple"},{"text":" {...}","color":"gray"}]
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


execute as @a if score @s ncmLastLatencyLevel matches 0..1 run scoreboard players set @s ncmSFOGFailLatencyBuffer 1
execute as @a if score @s ncmLastLatencyLevel matches 2..5 run scoreboard players set @s ncmSFOGFailLatencyBuffer 2
execute as @a if score @s ncmLastLatencyLevel matches 6..10 run scoreboard players set @s ncmSFOGFailLatencyBuffer 3
execute as @a if score @s ncmLastLatencyLevel matches 11..15 run scoreboard players set @s ncmSFOGFailLatencyBuffer 4
execute as @a if score @s ncmLastLatencyLevel matches 16..20 run scoreboard players set @s ncmSFOGFailLatencyBuffer 5
execute as @a if score @s ncmLastLatencyLevel matches 21.. run scoreboard players set @s ncmSFOGFailLatencyBuffer 5






execute as @a[gamemode=!creative,gamemode=!spectator,nbt={OnGround:0b}] at @s unless score @s ncmCheckPlayerLatency matches 1.. unless score @s ncmSFPlayerLatencyFP matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. unless score @s ncmOGJump matches 1.. unless entity @e[type=#minecraft:boat,distance=..2] unless entity @e[type=minecart,distance=..2] unless entity @e[type=oak_chest_boat,distance=..2] unless entity @e[type=spruce_chest_boat,distance=..2] unless entity @e[type=cherry_chest_boat,distance=..2] unless entity @e[type=bamboo_chest_raft,distance=..2] unless entity @e[type=mangrove_chest_boat,distance=..2] unless entity @e[type=dark_oak_chest_boat,distance=..2] unless entity @e[type=acacia_chest_boat,distance=..2] unless entity @e[type=jungle_chest_boat,distance=..2] unless entity @e[type=birch_chest_boat,distance=..2] unless entity @e[type=minecraft:strider,distance=..7] unless entity @e[type=minecraft:skeleton_horse,distance=..2] unless entity @e[type=minecraft:camel,distance=..2] unless entity @e[type=minecraft:horse,distance=..2] unless entity @e[type=minecraft:pig,distance=..2] unless score @s ncmPlayerIsInBed matches 1 unless score @s ncmCobwebNearby matches 1.. unless score @s ncmLiquidNearby matches 1.. unless score @s ncmDeathTime matches 1.. unless score @s ncmAngryIGNearby matches 1.. unless score @s VE.PlayerMoveEvent.hasDescended matches 1 unless score @s ncmAviate matches 1.. unless score @s ncmLevitate matches 1.. unless score @s ncmLadderNearby matches 1.. unless score @s VEGbl.thePlayer.currentMovementState matches 5 unless score @s ncmFPDamage matches -50..-1 run scoreboard players add @s ncmOffGrTicks 1

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
execute as @a if score @s VE.PlayerMoveEvent.hasDescended matches 1 run scoreboard players set @s ncmSFOGFailCountForLatencyBuffer 0
execute as @a if score @s VE.PlayerMoveEvent.hasDescended matches 1 run scoreboard players set @s ncmSFOGFailCountForLatencyBufferR 0
execute as @a if entity @s[nbt={OnGround:1b}] run scoreboard players set @s ncmSFOGFailCountForLatencyBuffer 0
execute as @a if entity @s[nbt={OnGround:1b}] run scoreboard players set @s ncmSFOGFailCountForLatencyBufferR 0



#execute as @a at @s if score @s ncmOGJumpR matches 4.. run playsound minecraft:block.note_block.cow_bell
#execute as @a at @s if score @s ncmOGJumpR matches 3 run playsound minecraft:block.note_block.guitar
#execute as @a at @s if score @s ncmOGJumpR matches 1 run playsound minecraft:block.note_block.flute

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





# -------------------------
# Subcheck: UnexpectedClimb
# -------------------------



execute as @a[gamemode=!spectator,gamemode=!creative] if score @s VE.PlayerMoveEvent.hasClimbed matches 1 unless score @s ncmClimbedWaitForLegitimation matches 1.. if score @s VE.PlayerMoveEvent.distanceVertical matches 1.. unless score @s ncmIgnoreFurtherClimb matches 1 run scoreboard players set @s ncmFlagLastClimb 1
execute as @a if score @s ncmFlagLastClimb matches 1 unless score @s ncmIgnoreFurtherClimb matches 1 run scoreboard players set @s ncmClimbedWaitForLegitimation 1
#execute as @a if score @s ncmFlagLastClimb matches 1 unless score @s ncmIgnoreFurtherClimb matches 1 run scoreboard players operation @s ncmClimbedWaitForLegitimation += @s ncmLastLatencyLevel



#execute as @a if score @s ncmFlagLastClimb matches 1 unless score @s ncmIgnoreFurtherClimb matches 1 run tellraw @s {"score":{"name":"@s","objective":"VE.PlayerMoveEvent.distanceVertical"}}
execute as @a if score @s ncmFlagLastClimb matches 1 unless score @s ncmIgnoreFurtherClimb matches 1 if score @s ncmClimbFlagCount matches 0 run scoreboard players operation @s ncmLastXBeforeClimb = @s VE.PlayerMoveEvent.fromX
execute as @a if score @s ncmFlagLastClimb matches 1 unless score @s ncmIgnoreFurtherClimb matches 1 if score @s ncmClimbFlagCount matches 0 run scoreboard players operation @s ncmLastYBeforeClimb = @s VE.PlayerMoveEvent.fromY
execute as @a if score @s ncmFlagLastClimb matches 1 unless score @s ncmIgnoreFurtherClimb matches 1 if score @s ncmClimbFlagCount matches 0 run scoreboard players operation @s ncmLastZBeforeClimb = @s VE.PlayerMoveEvent.fromZ
execute as @a if score @s ncmFlagLastClimb matches 1 unless score @s ncmIgnoreFurtherClimb matches 1 if score @s ncmClimbFlagCount matches 0 run scoreboard players operation @s ncmLastYawBeforeClimb = @s VE.PlayerMoveEvent.fromYaw
execute as @a if score @s ncmFlagLastClimb matches 1 unless score @s ncmIgnoreFurtherClimb matches 1 if score @s ncmClimbFlagCount matches 0 run scoreboard players operation @s ncmLastPitchBeforeClimb = @s VE.PlayerMoveEvent.fromPitch

execute as @a if score @s ncmFlagLastClimb matches 1 run scoreboard players set @s ncmIgnoreFurtherClimb 1

# Legitimation
execute as @a if score @s ncmOGJump matches 1.. run scoreboard players set @s ncmClimbedWaitForLegitimation 0
execute as @a if score @s ncmStepableNearby matches 1.. run scoreboard players set @s ncmClimbedWaitForLegitimation 0
execute as @a if score @s ncmLadderNearby matches 1.. run scoreboard players set @s ncmClimbedWaitForLegitimation 0
execute as @a if score @s ncmLiquidNearby matches 1.. run scoreboard players set @s ncmClimbedWaitForLegitimation 0
execute as @a if score @s ncmCheckPlayerLatency matches 1 run scoreboard players set @s ncmClimbedWaitForLegitimation 0
execute as @a if score @s ncmAviate matches 1.. run scoreboard players set @s ncmClimbedWaitForLegitimation 0
execute as @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] run scoreboard players set @s ncmClimbedWaitForLegitimation 0
execute as @a if score @s ncmLevitate matches 1.. run scoreboard players set @s ncmClimbedWaitForLegitimation 0
execute as @a at @s if entity @e[type=minecraft:strider,distance=..7] run scoreboard players set @s ncmClimbedWaitForLegitimation 0
execute as @a at @s if entity @e[type=minecraft:skeleton_horse,distance=..2] run scoreboard players set @s ncmClimbedWaitForLegitimation 0
execute as @a at @s if entity @e[type=minecraft:horse,distance=..2] run scoreboard players set @s ncmClimbedWaitForLegitimation 0
execute as @a at @s if entity @e[type=minecraft:pig,distance=..2] run scoreboard players set @s ncmClimbedWaitForLegitimation 0
execute as @a at @s if entity @e[type=minecraft:camel,distance=..2] run scoreboard players set @s ncmClimbedWaitForLegitimation 0
execute as @a if score @s ncmFPDamage matches -50..-1 run scoreboard players set @s ncmClimbedWaitForLegitimation 0

execute as @a if entity @s[nbt={flying:1b}] run scoreboard players set @s ncmClimbedWaitForLegitimation 0


# Experimental Godmode Patch: execute as @a[tag=VE.PlayerAttackEvent] if score @s ncmDeathTime > @s ncmLastLatencyLevel run say [Debug] Attacking while being dead?



execute as @a if score @s ncmClimbedWaitForLegitimation matches 1 run scoreboard players add @s ncmClimbFlagCount 1
execute as @a if score @s ncmClimbedWaitForLegitimation matches 1 run scoreboard players set @s ncmClimbedWaitForLegitimation 0
execute as @a if score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players set @s ncmClimbFlagCount 0

execute as @a if score @s ncmClimbFlagCount matches 2 unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"UnexpectedClimb","color":"light_purple"},{"text":" {...","color":"gray"},{"text":"}","color":"gray"}]
execute as @a if score @s ncmClimbFlagCount matches 2 unless score DataHolder ncmMVMTSLagTimeout matches 1.. run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"UnexpectedClimb","color":"light_purple"},{"text":" {...","color":"gray"},{"text":"}","color":"gray"}]
execute as @a if score @s ncmClimbFlagCount matches 2 unless score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players operation @s VE.PlayerMoveEvent.modX = @s ncmLastXBeforeClimb
execute as @a if score @s ncmClimbFlagCount matches 2 unless score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players operation @s VE.PlayerMoveEvent.modY = @s ncmLastYBeforeClimb
execute as @a if score @s ncmClimbFlagCount matches 2 unless score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players operation @s VE.PlayerMoveEvent.modZ = @s ncmLastZBeforeClimb
execute as @a if score @s ncmClimbFlagCount matches 2 unless score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players operation @s VE.PlayerMoveEvent.modYaw = @s ncmLastYawBeforeClimb
execute as @a if score @s ncmClimbFlagCount matches 2 unless score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players operation @s VE.PlayerMoveEvent.modPitch = @s ncmLastPitchBeforeClimb
#execute as @a if score @s ncmClimbFlagCount matches 2 run scoreboard players set @s VE.PlayerMoveEvent.willModify 1
execute as @a if score @s ncmClimbFlagCount matches 2 if score @s ncmLastLatencyLevel matches ..3 run scoreboard players set @s ncmFailedMVMSF 9
execute as @a if score @s ncmClimbFlagCount matches 2 if score @s ncmLastLatencyLevel matches 4.. run scoreboard players set @s ncmFailedMVMSF 1

execute as @a if score @s ncmClimbFlagCount matches 1.. unless score @s ncmClimbFlagCountRC matches 1.. run scoreboard players set @s ncmClimbFlagCountRCMax 20
#execute as @a if score @s ncmClimbFlagCount matches 1.. unless score @s ncmClimbFlagCountRC matches 1.. run scoreboard players operation @s ncmClimbFlagCountRCMax += @s ncmLastLatencyLevel
execute as @a if score @s ncmClimbFlagCount matches 1.. unless score @s ncmClimbFlagCountRC matches 1.. run scoreboard players operation @s ncmClimbFlagCountRC = @s ncmClimbFlagCountRCMax

execute as @a if score @s ncmClimbFlagCountRC matches 0.. run scoreboard players remove @s ncmClimbFlagCountRC 1

execute as @a if score @s ncmClimbFlagCountRC matches 0 run scoreboard players set @s ncmClimbFlagCount 0
execute as @a if score @s ncmClimbFlagCount matches 2 run scoreboard players set @s ncmClimbFlagCount 0

execute as @a if score @s ncmClimbedWaitForLegitimation matches 0 run scoreboard players set @s ncmFlagLastClimb 0
execute as @a if score @s ncmIgnoreFurtherClimb matches 1 run scoreboard players set @s ncmIgnoreFurtherClimb 0



# ------------------------
# Subcheck: Climb
# ------------------------

execute as @e[type=minecraft:player] if score @s ncmBoat matches 1.. if score @s VE.PlayerMoveEvent.hasClimbed matches 1 run scoreboard players set @s ncmFailedMVMSF 9
execute as @e[type=minecraft:player] if score @s ncmBoat matches 1.. if score @s VE.PlayerMoveEvent.hasClimbed matches 1 if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Climb","color":"light_purple"},{"text":" {Boat}","color":"gray"}]
execute as @e[type=minecraft:player] if score @s ncmBoat matches 1.. if score @s VE.PlayerMoveEvent.hasClimbed matches 1 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Climb","color":"light_purple"},{"text":" {Boat}","color":"gray"}]


execute as @e[type=minecraft:player] if score @s VEGbl.thePlayer.currentMovementState matches 10 run scoreboard players add @s ncmSFClimbAviateGrace 1
execute as @e[type=minecraft:player] unless score @s VEGbl.thePlayer.currentMovementState matches 10 run scoreboard players set @s ncmSFClimbAviateGrace 0
execute as @a[nbt={SelectedItem:{id:"minecraft:firework_rocket"}}] run scoreboard players set @s ncmSFClimbAviateGrace 1
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

execute as @e[type=minecraft:player,nbt={OnGround:0b},gamemode=!creative,gamemode=!spectator] at @s unless entity @e[type=minecraft:skeleton_horse,distance=..2] unless entity @e[type=minecraft:strider,distance=..7] unless entity @e[type=minecraft:camel,distance=..2] unless entity @e[type=minecraft:pig,distance=..2] unless entity @e[type=minecraft:horse,distance=..2] unless score @s ncmLadderNearby matches 1.. unless score @s ncmLiquidNearby matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players add @s ncmYSpMaintainRC 1
execute as @e[type=minecraft:player] if score @s ncmYSpMaintainRC matches 1 run scoreboard players operation @s ncmLastYSpeed = @s ncmYSpeed
execute as @e[type=minecraft:player] if score @s ncmLadder matches 1.. run scoreboard players set @s ncmYSpMaintainRC 0
execute as @e[type=minecraft:player] if score @s ncmLadder matches 1.. run scoreboard players set @s ncmLadder 0
execute as @e[type=minecraft:player] at @s if block ~ ~ ~ water run scoreboard players set @s ncmYSpMaintainRC 0
execute as @e[type=minecraft:player] at @s if block ~ ~ ~ lava run scoreboard players set @s ncmYSpMaintainRC 0

execute as @e[type=minecraft:player] if score @s ncmCobwebNearby matches 1.. run scoreboard players set @s ncmYSpMaintainRC 0

execute as @e[type=minecraft:player,nbt={OnGround:0b},gamemode=!creative,gamemode=!spectator] unless score @s ncmYSpeed matches 0 if score @s ncmYSpMaintainRC = DataHolder ncmc_sf_cr_2 if score @s ncmLastYSpeed = @s ncmYSpeed unless score @s ncmAviate matches 1.. unless score @s ncmLevitate matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players set @s ncmFailedMVMSF 9

execute as @e[type=minecraft:player,nbt={OnGround:0b},gamemode=!creative,gamemode=!spectator] unless score @s ncmYSpeed matches 0 if score @s ncmYSpMaintainRC = DataHolder ncmc_sf_cr_2 if score @s ncmLastYSpeed = @s ncmYSpeed unless score @s ncmAviate matches 1.. unless score @s ncmLevitate matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"ConstantClimbRate","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_cr_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_cr_2"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmYSpeed"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmMaintainY"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmLastMaintainY"},"color":"gray"},{"text":"}","color":"gray"}]

execute as @e[type=minecraft:player,nbt={OnGround:0b},gamemode=!creative,gamemode=!spectator] unless score @s ncmYSpeed matches 0 if score @s ncmYSpMaintainRC = DataHolder ncmc_sf_cr_2 if score @s ncmLastYSpeed = @s ncmYSpeed unless score @s ncmAviate matches 1.. unless score @s ncmLevitate matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"ConstantClimbRate","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_cr_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_cr_2"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmYSpeed"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmMaintainY"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmLastMaintainY"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @e[type=minecraft:player] if score @s ncmYSpMaintainRC = DataHolder ncmc_sf_cr_2 run scoreboard players set @s ncmYSpMaintainRC 0


execute as @a if score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players set @s ncmLastMaintainY -1
execute as @a if score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players set @s ncmMaintainY 0
execute as @a if score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players set @s ncmMaintainRC 0
execute as @a if score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players set @s ncmYSpMaintainRC 0
execute as @a if score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players set @s ncmLastYSpeed 0
execute as @a if score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players set @s ncmYSpeed 0

execute as @e[type=minecraft:player,nbt={OnGround:1b}] run scoreboard players set @s ncmLastMaintainY -1
execute as @e[type=minecraft:player,nbt={OnGround:1b}] run scoreboard players set @s ncmMaintainY 0

execute as @e[type=minecraft:player,nbt={OnGround:1b}] run scoreboard players set @s ncmMaintainRC 0
execute as @e[type=minecraft:player,nbt={OnGround:1b}] run scoreboard players set @s ncmYSpMaintainRC 0
execute as @e[type=minecraft:player,nbt={OnGround:1b}] run scoreboard players set @s ncmLastYSpeed 0
execute as @e[type=minecraft:player,nbt={OnGround:1b}] run scoreboard players set @s ncmYSpeed 0




scoreboard players set @a ncmClimb 0
scoreboard players set @a ncmMaintain 0
execute as @a if score @s ncmSFJC matches 1.. run scoreboard players set @s ncmSFJC 0