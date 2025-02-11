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
# Description:  This function monitors the server's TPS values ​​and deactivates certain checks if necessary to avoid false positives.
# Author:       n33d4n4m3
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.

# TPS
execute if score .TPS ncmTPS < DataHolder ncmc_bs_lg_2 run scoreboard players operation DataHolder ncmMVMTSLagTimeout = DataHolder ncmc_bs_lg_1
execute if score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players remove DataHolder ncmMVMTSLagTimeout 1

# Latency

execute as @a if score @s ncmLeaveGame matches 1.. run scoreboard players reset @s ncmCheckPlayerLatency
execute as @a if score @s ncmLeaveGame matches 1.. run scoreboard players reset @s ncmTicksUntilNextLatencyCheck
execute as @a if score @s ncmLeaveGame matches 1.. run scoreboard players reset @s ncmTimesLatencyLevelMaintained
execute as @a if score @s ncmLeaveGame matches 1.. run scoreboard players reset @s ncmLastMaximumPing
execute as @a if score @s ncmLeaveGame matches 1.. run scoreboard players reset @s ncmLastMinimumPing
execute as @a if score @s ncmLeaveGame matches 1.. run scoreboard players set @s ncmLastLatencyLevel 20
execute as @a if score @s ncmLeaveGame matches 1.. run execute store result score @s ncmTicksUntilNextLatencyCheck run random value 500..800

execute as @a unless score @s ncmLastLatencyLevel matches 0.. run scoreboard players set @s ncmLastLatencyLevel 21
execute as @a unless score @s ncmLastLatencyLevel matches 0.. run execute store result score @s ncmTicksUntilNextLatencyCheck run random value 500..800



execute as @a unless score @s ncmTicksUntilNextLatencyCheck matches 0..10000 run execute store result score @s ncmTicksUntilNextLatencyCheck run random value 2000..4000

execute as @a if score @s ncmTicksUntilNextLatencyCheck matches 1.. run scoreboard players remove @s ncmTicksUntilNextLatencyCheck 1
execute as @a at @s if score @s ncmTicksUntilNextLatencyCheck matches 0 if entity @s[nbt={OnGround:1b}] unless score @s ncmLiquidNearby matches 1 unless score @s ncmLadderNearby matches 1 unless score DataHolder ncmMVMTSLagTimeout matches 1.. unless score @s ncmOGJump matches 1.. unless entity @e[type=#minecraft:boat,distance=..2] unless entity @e[type=oak_chest_boat,distance=..2] unless entity @e[type=spruce_chest_boat,distance=..2] unless entity @e[type=cherry_chest_boat,distance=..2] unless entity @e[type=bamboo_chest_raft,distance=..2] unless entity @e[type=mangrove_chest_boat,distance=..2] unless entity @e[type=dark_oak_chest_boat,distance=..2] unless entity @e[type=acacia_chest_boat,distance=..2] unless entity @e[type=jungle_chest_boat,distance=..2] unless entity @e[type=birch_chest_boat,distance=..2] unless score @s ncmPlayerIsInBed matches 1 unless score @s ncmCobwebNearby matches 1.. unless score @s ncmDeathTime matches 1.. unless score @s ncmAngryIGNearby matches 1.. unless score @s VE.PlayerMoveEvent.hasDescended matches 1 unless score @s ncmAviate matches 1.. unless score @s ncmLevitate matches 1.. unless score @s VEGbl.thePlayer.currentMovementState matches 5 unless score @s ncmFPDamage matches -50..-1 run scoreboard players set @s ncmCheckPlayerLatency 1

execute as @a at @s if score @s ncmCheckPlayerLatency matches 1 run function ncm:lag/latency/checklatency

