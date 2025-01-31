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
# Description:  This check starts a time-limited measurement after an attack, determining the ratio between hits where the player’s line of sight intersected with an entity and those where it did not.
# Fail:         This check fails if the ratio falls below a suspicious deviation threshold.
# Author:       n33d4n4m3
# Credits:      Cloud_Wolf (Raytracing Tutorial)
# ...


# If the latency level of the player exceeds limit mid-measurement, cancel the check.
execute as @a if score @s ncmFDTimer matches 0.. if score @s ncmLastLatencyLevel > DataHolder ncmc_d_7 run scoreboard players set @s ncmFDMatchCount 0
execute as @a if score @s ncmFDTimer matches 0.. if score @s ncmLastLatencyLevel > DataHolder ncmc_d_7 run scoreboard players set @s ncmFDMissCount 0
execute as @a if score @s ncmFDTimer matches 0.. if score @s ncmLastLatencyLevel > DataHolder ncmc_d_7 run scoreboard players set @s ncmFDMatchRate 0
execute as @a if score @s ncmFDTimer matches 0.. if score @s ncmLastLatencyLevel > DataHolder ncmc_d_7 run scoreboard players set @s ncmFDHitCount 0
execute as @a if score @s ncmFDTimer matches 0.. if score @s ncmLastLatencyLevel > DataHolder ncmc_d_7 run scoreboard players set @s ncmFDTimer -1

# Start the measurement.
execute as @a[advancements={ncm:player_hurt_entity_direct=true}] if score @s ncmLastLatencyLevel <= DataHolder ncmc_d_7 run scoreboard players add @s ncmFDHitCount 1
execute as @a[advancements={ncm:player_hurt_entity_direct=true}] if score @s ncmLastLatencyLevel <= DataHolder ncmc_d_7 at @s anchored eyes run function ncm:checks/fight/util/d_ray
execute as @a[advancements={ncm:player_hurt_entity_direct=true}] unless score @s ncmFDTimer matches 0.. run scoreboard players operation @s ncmFDTimer = DataHolder ncmc_d_1
execute as @a[advancements={ncm:player_hurt_entity_direct=true}] run advancement revoke @s only ncm:player_hurt_entity_direct

# If the maximum hit count is reached or time is up, terminate the measurement and begin evaluation.
execute as @a if score @s ncmFDHitCount = DataHolder ncmc_d_3 run scoreboard players set @s ncmFDTimer 0

execute as @a if score @s ncmFDTimer matches 0 unless score @s ncmFDHitCount < DataHolder ncmc_d_2 run scoreboard players operation @s ncmFDMissCount = @s ncmFDHitCount
execute as @a if score @s ncmFDTimer matches 0 unless score @s ncmFDHitCount < DataHolder ncmc_d_2 run scoreboard players operation @s ncmFDMissCount -= @s ncmFDMatchCount
execute as @a if score @s ncmFDTimer matches 0 unless score @s ncmFDHitCount < DataHolder ncmc_d_2 run scoreboard players operation @s ncmFDMatchRate = @s ncmFDMatchCount
execute as @a if score @s ncmFDTimer matches 0 unless score @s ncmFDHitCount < DataHolder ncmc_d_2 run scoreboard players operation @s ncmFDMatchRate *= DataHolder ncm.100
execute as @a if score @s ncmFDTimer matches 0 unless score @s ncmFDHitCount < DataHolder ncmc_d_2 run scoreboard players operation @s ncmFDMatchRate /= @s ncmFDHitCount
#execute as @a if score @s ncmFDTimer matches 0 unless score @s ncmFDHitCount < DataHolder ncmc_d_2 run tellraw @s [{"text":""},{"text":"Total hits: "},{"score":{"name":"@s","objective":"ncmFDHitCount"}},{"text":"\n"},{"text":"Matched hits: "},{"score":{"name":"@s","objective":"ncmFDMatchCount"}},{"text":"\n"},{"text":"Missed hits: "},{"score":{"name":"@s","objective":"ncmFDMissCount"}},{"text":"\n"},{"text":"\n"},{"text":"Match rate: ","color":"green"},{"score":{"name":"@s","objective":"ncmFDMatchRate"},"color":"green"},{"text":"%","color":"green"}]

# Handle violations.

execute as @a if score @s ncmFDTimer matches 0 unless score @s ncmFDHitCount < DataHolder ncmc_d_2 if score @s ncmFDMatchRate < DataHolder ncmc_d_4 if score @s ncmFDMatchRate >= DataHolder ncmc_d_5 run scoreboard players set @s ncmFailedFD 2
execute as @a if score @s ncmFDTimer matches 0 unless score @s ncmFDHitCount < DataHolder ncmc_d_2 if score @s ncmFDMatchRate < DataHolder ncmc_d_5 if score @s ncmFDMatchRate >= DataHolder ncmc_d_6 run scoreboard players set @s ncmFailedFD 6
execute as @a if score @s ncmFDTimer matches 0 unless score @s ncmFDHitCount < DataHolder ncmc_d_2 if score @s ncmFDMatchRate < DataHolder ncmc_d_6 run scoreboard players set @s ncmFailedFD 10

execute as @a if score @s ncmFDTimer matches 0 unless score @s ncmFDHitCount < DataHolder ncmc_d_2 if score @s ncmFDMatchRate < DataHolder ncmc_d_4 if score @s ncmFDMatchRate >= DataHolder ncmc_d_5 if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Direction","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"@s","objective":"ncmFDMatchCount"},"color":"gray"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"ncmFDHitCount"},"color":"gray"},{"text":" matched (","color":"gray"},{"score":{"name":"@s","objective":"ncmFDMatchRate"},"color":"gray"},{"text":"%), COMMON/HLC}","color":"gray"}]
execute as @a if score @s ncmFDTimer matches 0 unless score @s ncmFDHitCount < DataHolder ncmc_d_2 if score @s ncmFDMatchRate < DataHolder ncmc_d_4 if score @s ncmFDMatchRate >= DataHolder ncmc_d_5 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Direction","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"@s","objective":"ncmFDMatchCount"},"color":"gray"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"ncmFDHitCount"},"color":"gray"},{"text":" matched (","color":"gray"},{"score":{"name":"@s","objective":"ncmFDMatchRate"},"color":"gray"},{"text":"%), COMMON/HLC}","color":"gray"}]

execute as @a if score @s ncmFDTimer matches 0 unless score @s ncmFDHitCount < DataHolder ncmc_d_2 if score @s ncmFDMatchRate < DataHolder ncmc_d_5 if score @s ncmFDMatchRate >= DataHolder ncmc_d_6 if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Direction","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"@s","objective":"ncmFDMatchCount"},"color":"gray"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"ncmFDHitCount"},"color":"gray"},{"text":" matched (","color":"gray"},{"score":{"name":"@s","objective":"ncmFDMatchRate"},"color":"gray"},{"text":"%), SUSPECT}","color":"gray"}]
execute as @a if score @s ncmFDTimer matches 0 unless score @s ncmFDHitCount < DataHolder ncmc_d_2 if score @s ncmFDMatchRate < DataHolder ncmc_d_5 if score @s ncmFDMatchRate >= DataHolder ncmc_d_6 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Direction","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"@s","objective":"ncmFDMatchCount"},"color":"gray"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"ncmFDHitCount"},"color":"gray"},{"text":" matched (","color":"gray"},{"score":{"name":"@s","objective":"ncmFDMatchRate"},"color":"gray"},{"text":"%), SUSPECT}","color":"gray"}]

execute as @a if score @s ncmFDTimer matches 0 unless score @s ncmFDHitCount < DataHolder ncmc_d_2 if score @s ncmFDMatchRate < DataHolder ncmc_d_6 if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Direction","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"@s","objective":"ncmFDMatchCount"},"color":"gray"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"ncmFDHitCount"},"color":"gray"},{"text":" matched (","color":"gray"},{"score":{"name":"@s","objective":"ncmFDMatchRate"},"color":"gray"},{"text":"%), RAGE}","color":"gray"}]
execute as @a if score @s ncmFDTimer matches 0 unless score @s ncmFDHitCount < DataHolder ncmc_d_2 if score @s ncmFDMatchRate < DataHolder ncmc_d_6 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Direction","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"@s","objective":"ncmFDMatchCount"},"color":"gray"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"ncmFDHitCount"},"color":"gray"},{"text":" matched (","color":"gray"},{"score":{"name":"@s","objective":"ncmFDMatchRate"},"color":"gray"},{"text":"%), RAGE}","color":"gray"}]

# Reset
execute as @a if score @s ncmFDTimer matches 0 run scoreboard players set @s ncmFDMatchCount 0
execute as @a if score @s ncmFDTimer matches 0 run scoreboard players set @s ncmFDMissCount 0
execute as @a if score @s ncmFDTimer matches 0 run scoreboard players set @s ncmFDMatchRate 0
execute as @a if score @s ncmFDTimer matches 0 run scoreboard players set @s ncmFDHitCount 0
execute as @a if score @s ncmFDTimer matches 0.. run scoreboard players remove @s ncmFDTimer 1