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
# Subchecks:    - NoFall/FallDamage
#               - Speed (WalkSpeed)
#               - Speed (SprintSpeed)
#               - Speed (SneakSpeed)
# Author:        n33d4n4m3
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.


# ---------------------------
# Subcheck: NoFall/FallDamage
# ---------------------------
execute store result score DataHolder ncmApplyFallDmg run gamerule fallDamage
execute as @e[type=minecraft:player] if score DataHolder ncmApplyFallDmg matches 0 run scoreboard players set @s fall 0
execute as @e[type=minecraft:player] run scoreboard players add @s noFallReset 1
#execute as @e[type=minecraft:player] if score @s fall matches 1.. if score @s noFallDebug matches 0 run tellraw @a ["",{"selector":"@s","color":"gray"},{"text":" has been fallen ","color":"gray"},{"score":{"name":"@s","objective":"fall"},"color":"red"},{"text":" cm","color":"red"},{"text":".","color":"gray"}]
execute as @e[type=minecraft:player] if score @s fall matches 1.. run scoreboard players set @s noFallDebug 1
execute as @e[type=minecraft:player] if score @s fall matches 335.. run scoreboard players add @s noFallField1 1
execute as @e[type=minecraft:player] if score @s fall matches 335.. if score @s noFallField1 matches 3 run scoreboard players operation @s calcHealth -= @s playerHealth
execute as @e[type=minecraft:player] if score @s playerHealth > @s calcFall if score @s noFallField1 matches 3.. run tellraw @s[scores={inputR=1}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed "},{"text":"AppropriateMovement"},{"text":": "},{"text":"received less ("},{"score":{"name":"@s","objective":"calcHealth"}},{"text":" HP)"},{"text":" damage after falling "},{"score":{"name":"@s","objective":"fall"}},{"text":" cm than appropiate ("},{"score":{"name":"@s","objective":"storeHealth"}},{"text":" HP)."}]
execute as @e[type=minecraft:player] if score @s playerHealth > @s calcFall if score @s noFallField1 matches 3.. run tellraw @a[scores={inputR=2}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed "},{"text":"AppropriateMovement"},{"text":": "},{"text":"received less ("},{"score":{"name":"@s","objective":"calcHealth"}},{"text":" HP)"},{"text":" damage after falling "},{"score":{"name":"@s","objective":"fall"}},{"text":" cm than appropiate ("},{"score":{"name":"@s","objective":"storeHealth"}},{"text":" HP)."}]

# Calculating expected health drop
execute as @e[type=minecraft:player] if score @s fall matches 335.. if score @s noFallField1 matches 1 run scoreboard players operation @s calcFall = @s fall
execute as @e[type=minecraft:player] if score @s fall matches 335.. if score @s noFallField1 matches 1 run scoreboard players operation @s calcHealth = @s playerHealth
execute as @e[type=minecraft:player] if score @s fall matches 335.. if score @s noFallField1 matches 1 run scoreboard players operation @s calcFall -= DataHolder ncmc_ap_nf_1
execute as @e[type=minecraft:player] if score @s fall matches 335.. if score @s noFallField1 matches 1 run scoreboard players operation @s calcFall /= DataHolder const_100
execute as @e[type=minecraft:player] if score @s fall matches 335.. if score @s noFallField1 matches 1 run scoreboard players operation @s storeHealth = @s calcFall
execute as @e[type=minecraft:player] if score @s fall matches 335.. if score @s noFallField1 matches 1 run scoreboard players operation @s calcFall -= @s calcHealth
execute as @e[type=minecraft:player] if score @s fall matches 335.. if score @s noFallField1 matches 1 run scoreboard players operation @s calcFall *= DataHolder const_n1



execute as @e[type=minecraft:player] if score @s noFallReset matches 5.. if score @s fall matches ..335 run scoreboard players set @s fall 0
execute as @e[type=minecraft:player] if score @s noFallReset matches 5.. if score @s fall matches ..335 run scoreboard players set @s noFallField1 0
execute as @e[type=minecraft:player] if score @s noFallReset matches 5.. if score @s fall matches ..335 run scoreboard players set @s calcFall 0
execute as @e[type=minecraft:player] if score @s fall matches 1.. if score @s noFallField1 matches 3.. run scoreboard players set @s fall 0
execute as @e[type=minecraft:player] if score @s fall matches 0 run scoreboard players set @s noFallDebug 0
execute as @e[type=minecraft:player] if score @s noFallField1 matches 3.. run scoreboard players set @s noFallField1 0
execute as @e[type=minecraft:player] if score @s noFallReset matches 5.. run scoreboard players set @s noFallReset 0






# -------------------------
# Subcheck: Speed (General)
# -------------------------

execute as @a at @s if block ~ ~-1 ~ minecraft:ice run scoreboard players set @s standsOnIce 1
execute as @a at @s unless block ~ ~-1 ~ minecraft:ice run scoreboard players set @s standsOnIce 0

execute as @e[type=minecraft:player] if score @s hasSpeedEffI matches 1.. run scoreboard players remove @e[type=minecraft:player,nbt=!{ActiveEffects:[{Id:1b,Amplifier:0b}]}] hasSpeedEffI 1
execute as @e[type=minecraft:player] if score @s hasSpeedEffII matches 1.. run scoreboard players remove @e[type=minecraft:player,nbt=!{ActiveEffects:[{Id:1b,Amplifier:1b}]}] hasSpeedEffII 1
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:1b,Amplifier:0b}]}] hasSpeedEffI 20
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:1b,Amplifier:1b}]}] hasSpeedEffII 20



# ---------------------------
# Subcheck: Speed (WalkSpeed)
# ---------------------------


execute as @e[type=minecraft:player] if score @s walkOneCm matches 1.. run scoreboard players add @s speedResetC 1

execute as @e[type=minecraft:player] if score @s hasSpeedEffI matches 0 if score @s hasSpeedEffII matches 0 if score @s walkOneCm >= DataHolder ncmc_ap_ws_1 if score @s standsOnIce matches 0 run tellraw @s[scores={inputR=1}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"walked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"walkOneCm"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_7"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_1"},"color":"white"},{"text":" cm)","color":"white"}]
execute as @e[type=minecraft:player] if score @s hasSpeedEffI matches 0 if score @s hasSpeedEffII matches 0 if score @s walkOneCm >= DataHolder ncmc_ap_ws_2 if score @s standsOnIce matches 1 run tellraw @s[scores={inputR=1}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"walked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"walkOneCm"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_7"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_2"},"color":"white"},{"text":" cm, on ice)","color":"white"}]


execute as @e[type=minecraft:player] if score @s hasSpeedEffI matches 0 if score @s hasSpeedEffII matches 0 if score @s walkOneCm >= DataHolder ncmc_ap_ws_1 if score @s standsOnIce matches 0 run tellraw @a[scores={inputR=2}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"walked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"walkOneCm"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_7"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_1"},"color":"white"},{"text":" cm)","color":"white"}]
execute as @e[type=minecraft:player] if score @s hasSpeedEffI matches 0 if score @s hasSpeedEffII matches 0 if score @s walkOneCm >= DataHolder ncmc_ap_ws_2 if score @s standsOnIce matches 1 run tellraw @a[scores={inputR=2}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"walked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"walkOneCm"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_7"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_2"},"color":"white"},{"text":" cm, on ice)","color":"white"}]



execute as @e[type=minecraft:player] if score @s hasSpeedEffI matches 1.. if score @s walkOneCm >= DataHolder ncmc_ap_ws_3 if score @s standsOnIce matches 0 run tellraw @s[scores={inputR=1}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"walked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"walkOneCm"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_7"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_3"},"color":"white"},{"text":" cm, speed I)","color":"white"}]
execute as @e[type=minecraft:player] if score @s hasSpeedEffI matches 1.. if score @s walkOneCm >= DataHolder ncmc_ap_ws_4 if score @s standsOnIce matches 1 run tellraw @s[scores={inputR=1}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"walked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"walkOneCm"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_7"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_4"},"color":"white"},{"text":" cm, speed I, on ice)","color":"white"}]
execute as @e[type=minecraft:player] if score @s hasSpeedEffII matches 1.. if score @s walkOneCm >= DataHolder ncmc_ap_ws_5 if score @s standsOnIce matches 0 run tellraw @s[scores={inputR=1}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"walked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"walkOneCm"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_7"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_5"},"color":"white"},{"text":" cm, speed II)","color":"white"}]
execute as @e[type=minecraft:player] if score @s hasSpeedEffII matches 1.. if score @s walkOneCm >= DataHolder ncmc_ap_ws_6 if score @s standsOnIce matches 1 run tellraw @s[scores={inputR=1}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"walked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"walkOneCm"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_7"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_6"},"color":"white"},{"text":" cm, speed II, on ice)","color":"white"}]


execute as @e[type=minecraft:player] if score @s hasSpeedEffI matches 1.. if score @s walkOneCm >= DataHolder ncmc_ap_ws_3 if score @s standsOnIce matches 0 run tellraw @a[scores={inputR=2}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"walked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"walkOneCm"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_7"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_3"},"color":"white"},{"text":" cm, speed I)","color":"white"}]
execute as @e[type=minecraft:player] if score @s hasSpeedEffI matches 1.. if score @s walkOneCm >= DataHolder ncmc_ap_ws_4 if score @s standsOnIce matches 1 run tellraw @a[scores={inputR=2}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"walked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"walkOneCm"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_7"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_4"},"color":"white"},{"text":" cm, speed I, on ice)","color":"white"}]
execute as @e[type=minecraft:player] if score @s hasSpeedEffII matches 1.. if score @s walkOneCm >= DataHolder ncmc_ap_ws_5 if score @s standsOnIce matches 0 run tellraw @a[scores={inputR=2}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"walked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"walkOneCm"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_7"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_5"},"color":"white"},{"text":" cm, speed II)","color":"white"}]
execute as @e[type=minecraft:player] if score @s hasSpeedEffII matches 1.. if score @s walkOneCm >= DataHolder ncmc_ap_ws_6 if score @s standsOnIce matches 1 run tellraw @a[scores={inputR=2}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"walked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"walkOneCm"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_7"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_ws_6"},"color":"white"},{"text":" cm, speed II, on ice)","color":"white"}]



execute as @e[type=minecraft:player] if score @s speedResetC >= DataHolder ncmc_ap_ws_7 run scoreboard players set @s walkOneCm 0
execute as @e[type=minecraft:player] if score @s speedResetC >= DataHolder ncmc_ap_ws_7 run scoreboard players set @s speedResetC 0

execute as @e[type=minecraft:player] if score @s hasSpeedEffI matches 0 if score @s walkOneCm >= DataHolder ncmc_ap_ws_1 if score @s standsOnIce matches 0 run scoreboard players set @s walkOneCm 0
execute as @e[type=minecraft:player] if score @s hasSpeedEffII matches 0 if score @s walkOneCm >= DataHolder ncmc_ap_ws_2 if score @s standsOnIce matches 1 run scoreboard players set @s walkOneCm 0

execute as @e[type=minecraft:player] if score @s hasSpeedEffI matches 1.. if score @s walkOneCm >= DataHolder ncmc_ap_ws_3 if score @s standsOnIce matches 0 run scoreboard players set @s walkOneCm 0
execute as @e[type=minecraft:player] if score @s hasSpeedEffI matches 1.. if score @s walkOneCm >= DataHolder ncmc_ap_ws_4 if score @s standsOnIce matches 1 run scoreboard players set @s walkOneCm 0
execute as @e[type=minecraft:player] if score @s hasSpeedEffII matches 1.. if score @s walkOneCm >= DataHolder ncmc_ap_ws_5 if score @s standsOnIce matches 0 run scoreboard players set @s walkOneCm 0
execute as @e[type=minecraft:player] if score @s hasSpeedEffII matches 1.. if score @s walkOneCm >= DataHolder ncmc_ap_ws_6 if score @s standsOnIce matches 1 run scoreboard players set @s walkOneCm 0


execute as @e[type=minecraft:player] if score @s lostSprintB matches 1.. run scoreboard players set @s lostSprintIgn 1
execute as @e[type=minecraft:player] if score @s lostSprintB matches 1.. run scoreboard players set @s lostSprintB 0
execute as @e[type=minecraft:player] if score @s lostSprintIgn matches 1.. run scoreboard players add @s lostSprintIgn 1
execute as @e[type=minecraft:player] if score @s lostSprintIgn matches 1.. run scoreboard players set @s walkOneCm 0
execute as @e[type=minecraft:player] if score @s lostSprintIgn >= DataHolder ncmc_ap_ws_8 run scoreboard players set @s lostSprintIgn 0


# -----------------------------
# Subcheck: Speed (SprintSpeed)
# -----------------------------

execute as @e[type=minecraft:player] if score @s sprintJumpFP matches 1.. run scoreboard players add @s sprintJumpFP 1
execute as @e[type=minecraft:player] if score @s sprintJumpFP >= DataHolder ncmc_ap_sp_1 run scoreboard players set @s sprintJumpFP 0
execute as @e[type=minecraft:player] if score @s sprintJumpFPII matches 1.. run scoreboard players add @s sprintJumpFPII 1
execute as @e[type=minecraft:player] if score @s sprintJumpFPII >= DataHolder ncmc_ap_sp_2 run scoreboard players set @s sprintJumpFPII 0
execute as @e[type=minecraft:player] if score @s standsOnIce matches 1.. run scoreboard players operation @s stOnIceC = DataHolder ncmc_ap_sp_3
execute as @e[type=minecraft:player] if score @s stOnIceC matches 1.. run scoreboard players remove @s stOnIceC 1


execute as @e[type=minecraft:player] if score @s hasSpeedEffI matches 0 if score @s hasSpeedEffII matches 0 if score @s sprintOneCm >= DataHolder ncmc_ap_sp_4 if score @s stOnIceC >= DataHolder ncmc_ap_sp_7 unless score @s sprintJumpFP matches 1.. unless score @s sprintJumpFPII matches 1.. run scoreboard players add @s invVLSprint 1
execute as @e[type=minecraft:player] if score @s hasSpeedEffI matches 1.. if score @s sprintOneCm >= DataHolder ncmc_ap_sp_5 if score @s stOnIceC matches 17.. unless score @s sprintJumpFP matches 1.. unless score @s sprintJumpFPII matches 1.. run scoreboard players add @s invVLSprint 1
execute as @e[type=minecraft:player] if score @s hasSpeedEffII matches 1.. if score @s sprintOneCm >= DataHolder ncmc_ap_sp_6 if score @s stOnIceC matches 17.. unless score @s sprintJumpFP matches 1.. unless score @s sprintJumpFPII matches 1.. run scoreboard players add @s invVLSprint 1

execute as @e[type=minecraft:player] if score @s hasSpeedEffI matches 0 if score @s hasSpeedEffII matches 0 if score @s sprintOneCm >= DataHolder ncmc_ap_sp_4 if score @s stOnIceC matches 0 unless score @s sprintJumpFP matches 1.. unless score @s sprintJumpFPII matches 1.. run scoreboard players add @s invVLSprint 1
execute as @e[type=minecraft:player] if score @s hasSpeedEffI matches 1.. if score @s sprintOneCm >= DataHolder ncmc_ap_sp_5 if score @s stOnIceC matches 0 unless score @s sprintJumpFP matches 1.. unless score @s sprintJumpFPII matches 1.. run scoreboard players add @s invVLSprint 1
execute as @e[type=minecraft:player] if score @s hasSpeedEffII matches 1.. if score @s sprintOneCm >= DataHolder ncmc_ap_sp_6 if score @s stOnIceC matches 0 unless score @s sprintJumpFP matches 1.. unless score @s sprintJumpFPII matches 1.. run scoreboard players add @s invVLSprint 1



execute as @e[type=minecraft:player] if score @s invVLSprint >= DataHolder ncmc_ap_sp_8 run tellraw @s[scores={inputR=1}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"sprinted","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"sprintOneCm"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"text":"one tick than appropriate","color":"white"}]
execute as @e[type=minecraft:player] if score @s invVLSprint >= DataHolder ncmc_ap_sp_8 run tellraw @a[scores={inputR=2}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"sprinted","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"sprintOneCm"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"text":"one tick than appropriate","color":"white"}]

execute as @e[type=minecraft:player] if score @s hasSpeedEffI matches 0 if score @s hasSpeedEffII matches 0 if score @s sprintOneCm >= DataHolder ncmc_ap_sp_4 run scoreboard players set @s sprintOneCm 0
execute as @e[type=minecraft:player] if score @s hasSpeedEffI matches 1.. if score @s sprintOneCm >= DataHolder ncmc_ap_sp_5 run scoreboard players set @s sprintOneCm 0
execute as @e[type=minecraft:player] if score @s hasSpeedEffII matches 1.. if score @s sprintOneCm >= DataHolder ncmc_ap_sp_6 run scoreboard players set @s sprintOneCm 0

execute as @e[type=minecraft:player] run scoreboard players set @s sprintOneCm 0

execute as @e[type=minecraft:player] if score @s invVLSprint >= DataHolder ncmc_ap_sp_8 run scoreboard players set @s invVLSprint 0
execute as @e[type=minecraft:player] if score @s invVLSprint matches 1.. run scoreboard players add @s invVLSprRC 1
execute as @e[type=minecraft:player] if score @s invVLSprRC >= DataHolder ncmc_ap_sp_9 run scoreboard players set @s invVLSprint 0
execute as @e[type=minecraft:player] if score @s invVLSprRC >= DataHolder ncmc_ap_sp_9 run scoreboard players set @s invVLSprRC 0




# ----------------------------
# Subcheck: Speed (SneakSpeed)
# ----------------------------


execute as @e[type=minecraft:player] if score @s walkOneCm matches 1.. run scoreboard players operation @s lostWalkFP = DataHolder ncmc_ap_sn_1
execute as @e[type=minecraft:player] if score @s lostWalkFP matches 1.. run scoreboard players remove @s lostWalkFP 1

execute as @e[type=minecraft:player] if score @s sneakOneCm matches 1.. run scoreboard players add @s speedResetCSn 1
execute as @e[type=minecraft:player] if score @s speedResetCSn >= DataHolder ncmc_ap_sn_2 run scoreboard players set @s sneakOneCm 0
execute as @e[type=minecraft:player] if score @s speedResetCSn >= DataHolder ncmc_ap_sn_2 run scoreboard players set @s speedResetCSn 0


execute as @e[type=minecraft:player] unless score @s lostWalkFP matches 1.. if score @s hasSpeedEffI matches 0 if score @s hasSpeedEffII matches 0 if score @s sneakOneCm >= DataHolder ncmc_ap_sn_3 run tellraw @s[scores={inputR=1}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"sneaked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"sneakOneCm"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_sn_2"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_sn_3"},"color":"white"},{"text":" cm)","color":"white"}]
execute as @e[type=minecraft:player] unless score @s lostWalkFP matches 1.. if score @s hasSpeedEffI matches 0 if score @s hasSpeedEffII matches 0 if score @s sneakOneCm >= DataHolder ncmc_ap_sn_3 run tellraw @a[scores={inputR=2}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"sneaked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"sneakOneCm"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_sn_2"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_sn_3"},"color":"white"},{"text":" cm)","color":"white"}]

execute as @e[type=minecraft:player] if score @s sneakOneCm >= DataHolder ncmc_ap_sn_3 if score @s hasSpeedEffI matches 0 if score @s hasSpeedEffII matches 0 run scoreboard players set @s speedResetCSn 0
execute as @e[type=minecraft:player] if score @s sneakOneCm >= DataHolder ncmc_ap_sn_3 if score @s hasSpeedEffI matches 0 if score @s hasSpeedEffII matches 0 run scoreboard players set @s sneakOneCm 0

execute as @e[type=minecraft:player] unless score @s lostWalkFP matches 1.. if score @s hasSpeedEffI matches 1.. if score @s sneakOneCm >= DataHolder ncmc_ap_sn_4 run tellraw @s[scores={inputR=1}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"sneaked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"sneakOneCm"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_sn_2"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_sn_4"},"color":"white"},{"text":" cm, speed I)","color":"white"}]
execute as @e[type=minecraft:player] unless score @s lostWalkFP matches 1.. if score @s hasSpeedEffI matches 1.. if score @s sneakOneCm >= DataHolder ncmc_ap_sn_4 run tellraw @a[scores={inputR=2}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"sneaked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"sneakOneCm"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_sn_2"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_sn_4"},"color":"white"},{"text":" cm, speed I)","color":"white"}]

execute as @e[type=minecraft:player] if score @s sneakOneCm >= DataHolder ncmc_ap_sn_4 if score @s hasSpeedEffI matches 1.. run scoreboard players set @s speedResetCSn 0
execute as @e[type=minecraft:player] if score @s sneakOneCm >= DataHolder ncmc_ap_sn_4 if score @s hasSpeedEffI matches 1.. run scoreboard players set @s sneakOneCm 0

execute as @e[type=minecraft:player] unless score @s lostWalkFP matches 1.. if score @s hasSpeedEffII matches 1.. if score @s sneakOneCm >= DataHolder ncmc_ap_sn_5 run tellraw @s[scores={inputR=1}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"sneaked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"sneakOneCm"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_sn_2"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_sn_5"},"color":"white"},{"text":" cm, speed II)","color":"white"}]
execute as @e[type=minecraft:player] unless score @s lostWalkFP matches 1.. if score @s hasSpeedEffII matches 1.. if score @s sneakOneCm >= DataHolder ncmc_ap_sn_5 run tellraw @a[scores={inputR=2}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateMovement","color":"white"},{"text":": ","color":"white"},{"text":"sneaked","color":"white"},{"text":" more (","color":"white"},{"score":{"name":"@s","objective":"sneakOneCm"},"color":"white"},{"text":" cm)","color":"white"},{"text":" blocks in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_sn_2"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_sn_5"},"color":"white"},{"text":" cm, speed II)","color":"white"}]

execute as @e[type=minecraft:player] if score @s sneakOneCm >= DataHolder ncmc_ap_sn_5 if score @s hasSpeedEffII matches 1.. run scoreboard players set @s speedResetCSn 0
execute as @e[type=minecraft:player] if score @s sneakOneCm >= DataHolder ncmc_ap_sn_5 if score @s hasSpeedEffII matches 1.. run scoreboard players set @s sneakOneCm 0
