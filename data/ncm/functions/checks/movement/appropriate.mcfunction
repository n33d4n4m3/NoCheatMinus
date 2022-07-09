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
# Description:  This check monitors generic movement stats of the player by counting certain movements and resetting these counters after a certain amount of time.
# Fail:         This check fails if a player exceeds a configurable movement stat before it gets reset by a configurable timer.
# Subchecks:    - Nofall/fallDamage
#               - Speed (WalkSpeed)
#               - Speed (SprintSpeed)
#               - Speed (SneakSpeed)
# Author:        n33d4n4m3
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.


# ---------------------------
# Subcheck: Nofall/fallDamage
# ---------------------------
execute store result score DataHolder ncmAPNFApplyFDmg run gamerule fallDamage
execute as @e[type=minecraft:player] if score DataHolder ncmAPNFApplyFDmg matches 0 run scoreboard players set @s ncmAPNFFall 0
execute as @e[type=minecraft:player] if score @s ncmFPdeathTime matches ..10 run scoreboard players set @s ncmAPNFFall 0
execute as @e[type=minecraft:player] run scoreboard players add @s ncmAPNFReset 1
execute as @e[type=minecraft:player] if score @s ncmAPNFFall matches 1.. run scoreboard players set @s ncmAPNFDebug 1
execute as @e[type=minecraft:player] if score @s ncmAPNFFall matches 335.. run scoreboard players add @s ncmAPNFField1 1
execute as @e[type=minecraft:player] if score @s ncmAPNFFall matches 335.. if score @s ncmAPNFField1 matches 3 run scoreboard players operation @s ncmAPNFCalcHlth -= @s ncmPlayerHealth
execute as @e[type=minecraft:player] if score @s ncmPlayerHealth > @s ncmAPNFCalcFall if score @s ncmAPNFField1 matches 3.. run scoreboard players set @s ncmFailedMVMAP 0
execute as @e[type=minecraft:player] if score @s ncmPlayerHealth > @s ncmAPNFCalcFall if score @s ncmAPNFField1 matches 3.. run tellraw @s[scores={ncmInputR=1}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed "},{"text":"AppropriateMovement"},{"text":": "},{"text":"received less ("},{"score":{"name":"@s","objective":"ncmAPNFCalcHlth"}},{"text":" HP)"},{"text":" damage after falling "},{"score":{"name":"@s","objective":"ncmAPNFFall"}},{"text":" cm than appropiate ("},{"score":{"name":"@s","objective":"ncmAPNFStoreHlth"}},{"text":" HP)."}]
execute as @e[type=minecraft:player] if score @s ncmPlayerHealth > @s ncmAPNFCalcFall if score @s ncmAPNFField1 matches 3.. run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed "},{"text":"AppropriateMovement"},{"text":": "},{"text":"received less ("},{"score":{"name":"@s","objective":"ncmAPNFCalcHlth"}},{"text":" HP)"},{"text":" damage after falling "},{"score":{"name":"@s","objective":"ncmAPNFFall"}},{"text":" cm than appropiate ("},{"score":{"name":"@s","objective":"ncmAPNFStoreHlth"}},{"text":" HP)."}]

# Calculating expected health drop
execute as @e[type=minecraft:player] if score @s ncmAPNFFall matches 335.. if score @s ncmAPNFField1 matches 1 run scoreboard players operation @s ncmAPNFCalcFall = @s ncmAPNFFall
execute as @e[type=minecraft:player] if score @s ncmAPNFFall matches 335.. if score @s ncmAPNFField1 matches 1 run scoreboard players operation @s ncmAPNFCalcHlth = @s ncmPlayerHealth
execute as @e[type=minecraft:player] if score @s ncmAPNFFall matches 335.. if score @s ncmAPNFField1 matches 1 run scoreboard players operation @s ncmAPNFCalcFall -= DataHolder ncmc_ap_nf_1
execute as @e[type=minecraft:player] if score @s ncmAPNFFall matches 335.. if score @s ncmAPNFField1 matches 1 run scoreboard players operation @s ncmAPNFCalcFall /= DataHolder ncm.100
execute as @e[type=minecraft:player] if score @s ncmAPNFFall matches 335.. if score @s ncmAPNFField1 matches 1 run scoreboard players operation @s ncmAPNFStoreHlth = @s ncmAPNFCalcFall
execute as @e[type=minecraft:player] if score @s ncmAPNFFall matches 335.. if score @s ncmAPNFField1 matches 1 run scoreboard players operation @s ncmAPNFCalcFall -= @s ncmAPNFCalcHlth
execute as @e[type=minecraft:player] if score @s ncmAPNFFall matches 335.. if score @s ncmAPNFField1 matches 1 run scoreboard players operation @s ncmAPNFCalcFall *= DataHolder ncm.-1



execute as @e[type=minecraft:player] if score @s ncmAPNFReset matches 5.. if score @s ncmAPNFFall matches ..335 run scoreboard players set @s ncmAPNFFall 0
execute as @e[type=minecraft:player] if score @s ncmAPNFReset matches 5.. if score @s ncmAPNFFall matches ..335 run scoreboard players set @s ncmAPNFField1 0
execute as @e[type=minecraft:player] if score @s ncmAPNFReset matches 5.. if score @s ncmAPNFFall matches ..335 run scoreboard players set @s ncmAPNFCalcFall 0
execute as @e[type=minecraft:player] if score @s ncmAPNFFall matches 1.. if score @s ncmAPNFField1 matches 3.. run scoreboard players set @s ncmAPNFFall 0
execute as @e[type=minecraft:player] if score @s ncmAPNFFall matches 0 run scoreboard players set @s ncmAPNFDebug 0
execute as @e[type=minecraft:player] if score @s ncmAPNFField1 matches 3.. run scoreboard players set @s ncmAPNFField1 0
execute as @e[type=minecraft:player] if score @s ncmAPNFReset matches 5.. run scoreboard players set @s ncmAPNFReset 0






# -------------------------
# Subcheck: Speed (General)
# -------------------------

execute as @a at @s if block ~ ~-1 ~ minecraft:ice run scoreboard players set @s ncmAPSIce 1
execute as @a at @s unless block ~ ~-1 ~ minecraft:ice run scoreboard players set @s ncmAPSIce 0

execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffI matches 1.. run scoreboard players remove @e[type=minecraft:player,nbt=!{ActiveEffects:[{Id:1b,Amplifier:0b}]}] ncmAPSSpeedEffI 1
execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffII matches 1.. run scoreboard players remove @e[type=minecraft:player,nbt=!{ActiveEffects:[{Id:1b,Amplifier:1b}]}] ncmAPSSpeedEffII 1
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:1b,Amplifier:0b}]}] ncmAPSSpeedEffI 20
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:1b,Amplifier:1b}]}] ncmAPSSpeedEffII 20



# ---------------------------
# Subcheck: Speed (WalkSpeed)
# ---------------------------


execute as @e[type=minecraft:player] if score @s ncmAPSWalk matches 1.. run scoreboard players add @s ncmAPSResetC 1

execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffI matches 0 if score @s ncmAPSSpeedEffII matches 0 if score @s ncmAPSWalk >= DataHolder ncmc_ap_ws_1 if score @s ncmAPSIce matches 0 run scoreboard players set @s ncmFailedMVMAP 1
execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffI matches 0 if score @s ncmAPSSpeedEffII matches 0 if score @s ncmAPSWalk >= DataHolder ncmc_ap_ws_2 if score @s ncmAPSIce matches 1 run scoreboard players set @s ncmFailedMVMAP 1

execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffI matches 0 if score @s ncmAPSSpeedEffII matches 0 if score @s ncmAPSWalk >= DataHolder ncmc_ap_ws_1 if score @s ncmAPSIce matches 0 run tellraw @s[scores={ncmInputR=1}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"walked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"ncmAPSWalk"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_7"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_1"},"color":"white"},{"text":" cm)","color":"white"}]
execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffI matches 0 if score @s ncmAPSSpeedEffII matches 0 if score @s ncmAPSWalk >= DataHolder ncmc_ap_ws_2 if score @s ncmAPSIce matches 1 run tellraw @s[scores={ncmInputR=1}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"walked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"ncmAPSWalk"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_7"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_2"},"color":"white"},{"text":" cm, on ice)","color":"white"}]


execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffI matches 0 if score @s ncmAPSSpeedEffII matches 0 if score @s ncmAPSWalk >= DataHolder ncmc_ap_ws_1 if score @s ncmAPSIce matches 0 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"walked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"ncmAPSWalk"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_7"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_1"},"color":"white"},{"text":" cm)","color":"white"}]
execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffI matches 0 if score @s ncmAPSSpeedEffII matches 0 if score @s ncmAPSWalk >= DataHolder ncmc_ap_ws_2 if score @s ncmAPSIce matches 1 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"walked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"ncmAPSWalk"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_7"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_2"},"color":"white"},{"text":" cm, on ice)","color":"white"}]


execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffI matches 1.. if score @s ncmAPSWalk >= DataHolder ncmc_ap_ws_3 if score @s ncmAPSIce matches 0 run scoreboard players set @s ncmFailedMVMAP 1
execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffI matches 1.. if score @s ncmAPSWalk >= DataHolder ncmc_ap_ws_4 if score @s ncmAPSIce matches 1 run scoreboard players set @s ncmFailedMVMAP 1
execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffII matches 1.. if score @s ncmAPSWalk >= DataHolder ncmc_ap_ws_5 if score @s ncmAPSIce matches 0 run scoreboard players set @s ncmFailedMVMAP 1
execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffII matches 1.. if score @s ncmAPSWalk >= DataHolder ncmc_ap_ws_6 if score @s ncmAPSIce matches 1 run scoreboard players set @s ncmFailedMVMAP 1

execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffI matches 1.. if score @s ncmAPSWalk >= DataHolder ncmc_ap_ws_3 if score @s ncmAPSIce matches 0 run tellraw @s[scores={ncmInputR=1}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"walked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"ncmAPSWalk"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_7"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_3"},"color":"white"},{"text":" cm, speed I)","color":"white"}]
execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffI matches 1.. if score @s ncmAPSWalk >= DataHolder ncmc_ap_ws_4 if score @s ncmAPSIce matches 1 run tellraw @s[scores={ncmInputR=1}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"walked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"ncmAPSWalk"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_7"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_4"},"color":"white"},{"text":" cm, speed I, on ice)","color":"white"}]
execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffII matches 1.. if score @s ncmAPSWalk >= DataHolder ncmc_ap_ws_5 if score @s ncmAPSIce matches 0 run tellraw @s[scores={ncmInputR=1}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"walked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"ncmAPSWalk"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_7"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_5"},"color":"white"},{"text":" cm, speed II)","color":"white"}]
execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffII matches 1.. if score @s ncmAPSWalk >= DataHolder ncmc_ap_ws_6 if score @s ncmAPSIce matches 1 run tellraw @s[scores={ncmInputR=1}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"walked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"ncmAPSWalk"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_7"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_6"},"color":"white"},{"text":" cm, speed II, on ice)","color":"white"}]


execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffI matches 1.. if score @s ncmAPSWalk >= DataHolder ncmc_ap_ws_3 if score @s ncmAPSIce matches 0 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"walked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"ncmAPSWalk"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_7"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_3"},"color":"white"},{"text":" cm, speed I)","color":"white"}]
execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffI matches 1.. if score @s ncmAPSWalk >= DataHolder ncmc_ap_ws_4 if score @s ncmAPSIce matches 1 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"walked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"ncmAPSWalk"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_7"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_4"},"color":"white"},{"text":" cm, speed I, on ice)","color":"white"}]
execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffII matches 1.. if score @s ncmAPSWalk >= DataHolder ncmc_ap_ws_5 if score @s ncmAPSIce matches 0 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"walked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"ncmAPSWalk"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_7"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_5"},"color":"white"},{"text":" cm, speed II)","color":"white"}]
execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffII matches 1.. if score @s ncmAPSWalk >= DataHolder ncmc_ap_ws_6 if score @s ncmAPSIce matches 1 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"walked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"ncmAPSWalk"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_7"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_6"},"color":"white"},{"text":" cm, speed II, on ice)","color":"white"}]



execute as @e[type=minecraft:player] if score @s ncmAPSResetC >= DataHolder ncmc_ap_ws_7 run scoreboard players set @s ncmAPSWalk 0
execute as @e[type=minecraft:player] if score @s ncmAPSResetC >= DataHolder ncmc_ap_ws_7 run scoreboard players set @s ncmAPSResetC 0

execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffI matches 0 if score @s ncmAPSWalk >= DataHolder ncmc_ap_ws_1 if score @s ncmAPSIce matches 0 run scoreboard players set @s ncmAPSWalk 0
execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffII matches 0 if score @s ncmAPSWalk >= DataHolder ncmc_ap_ws_2 if score @s ncmAPSIce matches 1 run scoreboard players set @s ncmAPSWalk 0

execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffI matches 1.. if score @s ncmAPSWalk >= DataHolder ncmc_ap_ws_3 if score @s ncmAPSIce matches 0 run scoreboard players set @s ncmAPSWalk 0
execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffI matches 1.. if score @s ncmAPSWalk >= DataHolder ncmc_ap_ws_4 if score @s ncmAPSIce matches 1 run scoreboard players set @s ncmAPSWalk 0
execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffII matches 1.. if score @s ncmAPSWalk >= DataHolder ncmc_ap_ws_5 if score @s ncmAPSIce matches 0 run scoreboard players set @s ncmAPSWalk 0
execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffII matches 1.. if score @s ncmAPSWalk >= DataHolder ncmc_ap_ws_6 if score @s ncmAPSIce matches 1 run scoreboard players set @s ncmAPSWalk 0


execute as @e[type=minecraft:player] if score @s ncmAPSLostSprB matches 1.. run scoreboard players set @s ncmAPSlostSprIgn 1
execute as @e[type=minecraft:player] if score @s ncmAPSLostSprB matches 1.. run scoreboard players set @s ncmAPSLostSprB 0
execute as @e[type=minecraft:player] if score @s ncmAPSlostSprIgn matches 1.. run scoreboard players add @s ncmAPSlostSprIgn 1
execute as @e[type=minecraft:player] if score @s ncmAPSlostSprIgn matches 1.. run scoreboard players set @s ncmAPSWalk 0
execute as @e[type=minecraft:player] if score @s ncmAPSlostSprIgn >= DataHolder ncmc_ap_ws_8 run scoreboard players set @s ncmAPSlostSprIgn 0


# -----------------------------
# Subcheck: Speed (SprintSpeed)
# -----------------------------

execute as @e[type=minecraft:player] if score @s ncmAPSSprJmp matches 1.. run scoreboard players add @s ncmAPSSprJmp 1
execute as @e[type=minecraft:player] if score @s ncmAPSSprJmp >= DataHolder ncmc_ap_sp_1 run scoreboard players set @s ncmAPSSprJmp 0
execute as @e[type=minecraft:player] if score @s ncmAPSSprJmpII matches 1.. run scoreboard players add @s ncmAPSSprJmpII 1
execute as @e[type=minecraft:player] if score @s ncmAPSSprJmpII >= DataHolder ncmc_ap_sp_2 run scoreboard players set @s ncmAPSSprJmpII 0
execute as @e[type=minecraft:player] if score @s ncmAPSIce matches 1.. run scoreboard players operation @s ncmStOnIceC = DataHolder ncmc_ap_sp_3
execute as @e[type=minecraft:player] if score @s ncmStOnIceC matches 1.. run scoreboard players remove @s ncmStOnIceC 1


execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffI matches 0 if score @s ncmAPSSpeedEffII matches 0 if score @s ncmAPSSprint >= DataHolder ncmc_ap_sp_4 if score @s ncmStOnIceC >= DataHolder ncmc_ap_sp_7 unless score @s ncmAPSSprJmp matches 1.. unless score @s ncmAPSSprJmpII matches 1.. run scoreboard players add @s ncmAPSinvVLSpr 1
execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffI matches 1.. if score @s ncmAPSSprint >= DataHolder ncmc_ap_sp_5 if score @s ncmStOnIceC matches 17.. unless score @s ncmAPSSprJmp matches 1.. unless score @s ncmAPSSprJmpII matches 1.. run scoreboard players add @s ncmAPSinvVLSpr 1
execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffII matches 1.. if score @s ncmAPSSprint >= DataHolder ncmc_ap_sp_6 if score @s ncmStOnIceC matches 17.. unless score @s ncmAPSSprJmp matches 1.. unless score @s ncmAPSSprJmpII matches 1.. run scoreboard players add @s ncmAPSinvVLSpr 1

execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffI matches 0 if score @s ncmAPSSpeedEffII matches 0 if score @s ncmAPSSprint >= DataHolder ncmc_ap_sp_4 if score @s ncmStOnIceC matches 0 unless score @s ncmAPSSprJmp matches 1.. unless score @s ncmAPSSprJmpII matches 1.. run scoreboard players add @s ncmAPSinvVLSpr 1
execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffI matches 1.. if score @s ncmAPSSprint >= DataHolder ncmc_ap_sp_5 if score @s ncmStOnIceC matches 0 unless score @s ncmAPSSprJmp matches 1.. unless score @s ncmAPSSprJmpII matches 1.. run scoreboard players add @s ncmAPSinvVLSpr 1
execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffII matches 1.. if score @s ncmAPSSprint >= DataHolder ncmc_ap_sp_6 if score @s ncmStOnIceC matches 0 unless score @s ncmAPSSprJmp matches 1.. unless score @s ncmAPSSprJmpII matches 1.. run scoreboard players add @s ncmAPSinvVLSpr 1


execute as @e[type=minecraft:player] if score @s ncmAPSinvVLSpr >= DataHolder ncmc_ap_sp_8 run scoreboard players set @s ncmFailedMVMAP 1
execute as @e[type=minecraft:player] if score @s ncmAPSinvVLSpr >= DataHolder ncmc_ap_sp_8 run tellraw @s[scores={ncmInputR=1}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"sprinted","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"ncmAPSSprint"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"text":"one tick than appropriate","color":"white"}]
execute as @e[type=minecraft:player] if score @s ncmAPSinvVLSpr >= DataHolder ncmc_ap_sp_8 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"sprinted","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"ncmAPSSprint"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"text":"one tick than appropriate","color":"white"}]

execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffI matches 0 if score @s ncmAPSSpeedEffII matches 0 if score @s ncmAPSSprint >= DataHolder ncmc_ap_sp_4 run scoreboard players set @s ncmAPSSprint 0
execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffI matches 1.. if score @s ncmAPSSprint >= DataHolder ncmc_ap_sp_5 run scoreboard players set @s ncmAPSSprint 0
execute as @e[type=minecraft:player] if score @s ncmAPSSpeedEffII matches 1.. if score @s ncmAPSSprint >= DataHolder ncmc_ap_sp_6 run scoreboard players set @s ncmAPSSprint 0

execute as @e[type=minecraft:player] run scoreboard players set @s ncmAPSSprint 0

execute as @e[type=minecraft:player] if score @s ncmAPSinvVLSpr >= DataHolder ncmc_ap_sp_8 run scoreboard players set @s ncmAPSinvVLSpr 0
execute as @e[type=minecraft:player] if score @s ncmAPSinvVLSpr matches 1.. run scoreboard players add @s ncmAPSInvVLSprRC 1
execute as @e[type=minecraft:player] if score @s ncmAPSInvVLSprRC >= DataHolder ncmc_ap_sp_9 run scoreboard players set @s ncmAPSinvVLSpr 0
execute as @e[type=minecraft:player] if score @s ncmAPSInvVLSprRC >= DataHolder ncmc_ap_sp_9 run scoreboard players set @s ncmAPSInvVLSprRC 0




# ----------------------------
# Subcheck: Speed (SneakSpeed)
# ----------------------------


execute as @e[type=minecraft:player] if score @s ncmAPSWalk matches 1.. run scoreboard players operation @s ncmAPSLostWalkFP = DataHolder ncmc_ap_sn_1
execute as @e[type=minecraft:player] if score @s ncmAPSLostWalkFP matches 1.. run scoreboard players remove @s ncmAPSLostWalkFP 1

execute as @e[type=minecraft:player] if score @s ncmAPSSneak matches 1.. run scoreboard players add @s ncmAPSResetCSn 1
execute as @e[type=minecraft:player] if score @s ncmAPSResetCSn >= DataHolder ncmc_ap_sn_2 run scoreboard players set @s ncmAPSSneak 0
execute as @e[type=minecraft:player] if score @s ncmAPSResetCSn >= DataHolder ncmc_ap_sn_2 run scoreboard players set @s ncmAPSResetCSn 0

execute as @e[type=minecraft:player] unless score @s ncmAPSLostWalkFP matches 1.. if score @s ncmAPSSpeedEffI matches 0 if score @s ncmAPSSpeedEffII matches 0 if score @s ncmAPSSneak >= DataHolder ncmc_ap_sn_3 run scoreboard players set @s ncmFailedMVMAP 1
execute as @e[type=minecraft:player] unless score @s ncmAPSLostWalkFP matches 1.. if score @s ncmAPSSpeedEffI matches 0 if score @s ncmAPSSpeedEffII matches 0 if score @s ncmAPSSneak >= DataHolder ncmc_ap_sn_3 run tellraw @s[scores={ncmInputR=1}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"sneaked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"ncmAPSSneak"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_sn_2"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_sn_3"},"color":"white"},{"text":" cm)","color":"white"}]
execute as @e[type=minecraft:player] unless score @s ncmAPSLostWalkFP matches 1.. if score @s ncmAPSSpeedEffI matches 0 if score @s ncmAPSSpeedEffII matches 0 if score @s ncmAPSSneak >= DataHolder ncmc_ap_sn_3 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"sneaked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"ncmAPSSneak"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_sn_2"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_sn_3"},"color":"white"},{"text":" cm)","color":"white"}]

execute as @e[type=minecraft:player] if score @s ncmAPSSneak >= DataHolder ncmc_ap_sn_3 if score @s ncmAPSSpeedEffI matches 0 if score @s ncmAPSSpeedEffII matches 0 run scoreboard players set @s ncmAPSResetCSn 0
execute as @e[type=minecraft:player] if score @s ncmAPSSneak >= DataHolder ncmc_ap_sn_3 if score @s ncmAPSSpeedEffI matches 0 if score @s ncmAPSSpeedEffII matches 0 run scoreboard players set @s ncmAPSSneak 0

execute as @e[type=minecraft:player] unless score @s ncmAPSLostWalkFP matches 1.. if score @s ncmAPSSpeedEffI matches 1.. if score @s ncmAPSSneak >= DataHolder ncmc_ap_sn_4 run scoreboard players set @s ncmFailedMVMAP 1
execute as @e[type=minecraft:player] unless score @s ncmAPSLostWalkFP matches 1.. if score @s ncmAPSSpeedEffI matches 1.. if score @s ncmAPSSneak >= DataHolder ncmc_ap_sn_4 run tellraw @s[scores={ncmInputR=1}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"sneaked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"ncmAPSSneak"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_sn_2"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_sn_4"},"color":"white"},{"text":" cm, speed I)","color":"white"}]
execute as @e[type=minecraft:player] unless score @s ncmAPSLostWalkFP matches 1.. if score @s ncmAPSSpeedEffI matches 1.. if score @s ncmAPSSneak >= DataHolder ncmc_ap_sn_4 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"sneaked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"ncmAPSSneak"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_sn_2"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_sn_4"},"color":"white"},{"text":" cm, speed I)","color":"white"}]

execute as @e[type=minecraft:player] if score @s ncmAPSSneak >= DataHolder ncmc_ap_sn_4 if score @s ncmAPSSpeedEffI matches 1.. run scoreboard players set @s ncmAPSResetCSn 0
execute as @e[type=minecraft:player] if score @s ncmAPSSneak >= DataHolder ncmc_ap_sn_4 if score @s ncmAPSSpeedEffI matches 1.. run scoreboard players set @s ncmAPSSneak 0

execute as @e[type=minecraft:player] unless score @s ncmAPSLostWalkFP matches 1.. if score @s ncmAPSSpeedEffII matches 1.. if score @s ncmAPSSneak >= DataHolder ncmc_ap_sn_5 run scoreboard players set @s ncmFailedMVMAP 1
execute as @e[type=minecraft:player] unless score @s ncmAPSLostWalkFP matches 1.. if score @s ncmAPSSpeedEffII matches 1.. if score @s ncmAPSSneak >= DataHolder ncmc_ap_sn_5 run tellraw @s[scores={ncmInputR=1}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"sneaked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"ncmAPSSneak"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_sn_2"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_sn_5"},"color":"white"},{"text":" cm, speed II)","color":"white"}]
execute as @e[type=minecraft:player] unless score @s ncmAPSLostWalkFP matches 1.. if score @s ncmAPSSpeedEffII matches 1.. if score @s ncmAPSSneak >= DataHolder ncmc_ap_sn_5 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"sneaked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"ncmAPSSneak"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_sn_2"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_sn_5"},"color":"white"},{"text":" cm, speed II)","color":"white"}]

execute as @e[type=minecraft:player] if score @s ncmAPSSneak >= DataHolder ncmc_ap_sn_5 if score @s ncmAPSSpeedEffII matches 1.. run scoreboard players set @s ncmAPSResetCSn 0
execute as @e[type=minecraft:player] if score @s ncmAPSSneak >= DataHolder ncmc_ap_sn_5 if score @s ncmAPSSpeedEffII matches 1.. run scoreboard players set @s ncmAPSSneak 0
