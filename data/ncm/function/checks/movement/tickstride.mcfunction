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
# Description:  This check evaluates fired PlayerMoveEvents based on distance and combines them into a 'movement chain' or 'stride sequence'.
# Fail:         This check fails if the value x is exceeded y times in direct temporal succession within a movement state. Moreover, this check automatically terminates if there is any clientside or serverside lag. Depending on the magnitude of the deviation from x, the check failure is either logged (Reputation/Evaluation) or the event is canceled additionally (Setback).
# Author:       n33d4n4m3
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.

# Ice FP fix
execute as @a at @s if block ~ ~-1 ~ minecraft:ice run scoreboard players operation @s ncmTSIceTimeout = DataHolder ncmc_ts_38
execute as @a at @s if block ~ ~-1 ~ minecraft:packed_ice run scoreboard players operation @s ncmTSIceTimeout = DataHolder ncmc_ts_38
execute as @a at @s if block ~ ~-0.5 ~ minecraft:ice run scoreboard players operation @s ncmTSIceTimeout = DataHolder ncmc_ts_38
execute as @a at @s if block ~ ~-0.5 ~ minecraft:packed_ice run scoreboard players operation @s ncmTSIceTimeout = DataHolder ncmc_ts_38

# Debug: execute as @e[type=minecraft:player,tag=!VE.PlayerMoveEvent] if score @s ncmTimesStrideTooHighLog matches 1.. run tellraw @s ["",{"text":"[TestNCM] ","color":"gray"},{"text":"Reset of ncmTimesStrideTooHighLog (","color":"gray"},{"score":{"name":"@s","objective":"ncmTimesStrideTooHighLog"},"color":"gold"},{"text":") due to no PlayerMoveEvent is fired!","color":"gray"}]
# Debug: execute as @e[type=minecraft:player,tag=!VE.PlayerMoveEvent] if score @s ncmTimesStrideTooHighCancel matches 1.. run tellraw @s ["",{"text":"[TestNCM] ","color":"gray"},{"text":"Reset of ncmTimesStrideTooHighCancel (","color":"gray"},{"score":{"name":"@s","objective":"ncmTimesStrideTooHighCancel"},"color":"gold"},{"text":") due to no PlayerMoveEvent is fired!","color":"gray"}]

execute as @e[type=minecraft:player,tag=!VE.PlayerMoveEvent] run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=!VE.PlayerMoveEvent] run scoreboard players set @s ncmTimesStrideTooHighCancel 0


# Debug: execute as @e[type=minecraft:player] if score @s VE.PlayerMoveEvent.distance3D matches 0 if score @s ncmTimesStrideTooHighLog matches 1.. run tellraw @s ["",{"text":"[TestNCM] ","color":"gray"},{"text":"Reset of ncmTimesStrideTooHighLog (","color":"gray"},{"score":{"name":"@s","objective":"ncmTimesStrideTooHighLog"},"color":"gold"},{"text":") due to no distance3D is recorded!","color":"gray"}]
# Debug: execute as @e[type=minecraft:player] if score @s VE.PlayerMoveEvent.distance3D matches 0 if score @s ncmTimesStrideTooHighCancel matches 1.. run tellraw @s ["",{"text":"[TestNCM] ","color":"gray"},{"text":"Reset of ncmTimesStrideTooHighCancel (","color":"gray"},{"score":{"name":"@s","objective":"ncmTimesStrideTooHighCancel"},"color":"gold"},{"text":") due to no distance3D is recorded!","color":"gray"}]
#execute as @e[type=minecraft:player] if score @s VE.PlayerMoveEvent.distance3D matches 0 run scoreboard players set @s ncmTimesStrideTooHighLog 0
#execute as @e[type=minecraft:player] if score @s VE.PlayerMoveEvent.distance3D matches 0 run scoreboard players set @s ncmTimesStrideTooHighCancel 0
execute as @e[type=minecraft:player,tag=!VE.PlayerMoveEvent] if score DataHolder ncmc_ts_36 matches 1 run scoreboard players set @s ncmTSInternalLogOnlyFails 0
execute as @e[type=minecraft:player] if score DataHolder ncmc_ts_36 matches 1 if score @s VE.PlayerMoveEvent.distance3D matches 0 run scoreboard players set @s ncmTSInternalLogOnlyFails 0

execute as @a[tag=VE.PlayerMovementStateTransitionEvent] run scoreboard players operation @s ncmTSTransitionTimeout = DataHolder ncmc_ts_37
execute as @a[tag=VE.PlayerMovementStateTransitionEvent] run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @a[tag=VE.PlayerMovementStateTransitionEvent] run scoreboard players set @s ncmTimesStrideTooHighCancel 0
execute as @a[tag=VE.PlayerMovementStateTransitionEvent] run scoreboard players set @s ncmTSInternalLogOnlyFails 0
execute as @a[nbt={active_effects:[{id:"minecraft:speed"}]}] run scoreboard players operation @s ncmTSTransitionTimeout = DataHolder ncmc_ts_37
execute as @a[nbt={active_effects:[{id:"minecraft:speed"}]}] run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @a[nbt={active_effects:[{id:"minecraft:speed"}]}] run scoreboard players set @s ncmTimesStrideTooHighCancel 0
execute as @a[nbt={active_effects:[{id:"minecraft:speed"}]}] run scoreboard players set @s ncmTSInternalLogOnlyFails 0

execute as @a if score @s VEGbl.thePlayer.currentMovementState matches 10 run scoreboard players set @s ncmTSLevitationTimeout 20
execute as @a if score @s ncmLevitate matches 1.. run scoreboard players set @s ncmTSLevitationTimeout 2
execute as @a if score @s VEGbl.thePlayer.currentMovementState matches 10 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @a if score @s VEGbl.thePlayer.currentMovementState matches 10 run scoreboard players set @s ncmTimesStrideTooHighCancel 0
execute as @a if score @s VEGbl.thePlayer.currentMovementState matches 10 run scoreboard players set @s ncmTSInternalLogOnlyFails 0





# ---------------------
# Subcheck: MorePackets
# ---------------------

# Count ticks in which no movement packets were processed.
execute as @a[tag=!VE.PlayerMoveEvent] run scoreboard players add @s ncmTicksNoMovementPacketsProcessed 1

# Predict the value of the legitimate horizontal distance by multiplying the allowed distance per tick with the amount of ticks in which no movement packets were processed.
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTicksNoMovementPacketsProcessed matches 1.. if score @s VEGbl.thePlayer.currentMovementState matches 1 run scoreboard players operation @s ncmAllowedDistanceByPackets = DataHolder ncmc_ts_1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTicksNoMovementPacketsProcessed matches 1.. if score @s VEGbl.thePlayer.currentMovementState matches 2 run scoreboard players operation @s ncmAllowedDistanceByPackets = DataHolder ncmc_ts_3
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTicksNoMovementPacketsProcessed matches 1.. if score @s VEGbl.thePlayer.currentMovementState matches 3 run scoreboard players operation @s ncmAllowedDistanceByPackets = DataHolder ncmc_ts_5
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTicksNoMovementPacketsProcessed matches 1.. if score @s VEGbl.thePlayer.currentMovementState matches 5 run scoreboard players operation @s ncmAllowedDistanceByPackets = DataHolder ncmc_ts_9
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!creative,gamemode=!spectator] unless score @s ncmTSLevitationTimeout matches 1.. unless score @s ncmLadderNearby matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score @s VE.PlayerMoveEvent.hasDescended matches 1 unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTicksNoMovementPacketsProcessed matches 1.. if score @s VEGbl.thePlayer.currentMovementState matches 6 run scoreboard players operation @s ncmAllowedDistanceByPackets = DataHolder ncmc_ts_13
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!survival,gamemode=!adventure] unless score @s ncmTSLevitationTimeout matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score @s VE.PlayerMoveEvent.hasDescended matches 1 unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTicksNoMovementPacketsProcessed matches 1.. if score @s VEGbl.thePlayer.currentMovementState matches 6 run scoreboard players operation @s ncmAllowedDistanceByPackets = DataHolder ncmc_ts_11



execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score @s ncmAllowedDistanceByPackets matches 1.. run scoreboard players operation @s ncmAllowedDistanceByPackets *= @s ncmTicksNoMovementPacketsProcessed
# Calculate the difference between predicted maximum horizontal distance and measured horizontal distance.
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score @s ncmAllowedDistanceByPackets matches 1.. run scoreboard players operation @s ncmDistanceDifference = @s VE.PlayerMoveEvent.distanceHorizontal
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score @s ncmAllowedDistanceByPackets matches 1.. if score @s VEGbl.thePlayer.currentMovementState matches 6 run scoreboard players operation @s ncmDistanceDifference = @s VE.PlayerMoveEvent.distance3D
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score @s ncmAllowedDistanceByPackets matches 1.. if score @s VEGbl.thePlayer.currentMovementState matches 5 run scoreboard players operation @s ncmDistanceDifference = @s VE.PlayerMoveEvent.distanceVertical
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score @s ncmAllowedDistanceByPackets matches 1.. run scoreboard players operation @s ncmDistanceDifference -= @s ncmAllowedDistanceByPackets

# If difference > 60, flag.
execute as @a if score @s ncmDistanceDifference matches 61.. run scoreboard players add @s ncmTimesStrideTooHighWithLatency 1



# Debug: execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] run tellraw @s [{"score":{"name":"@s","objective":"VE.PlayerMoveEvent.distanceHorizontal"},"color":"gold"},",",{"score":{"name":"@s","objective":"ncmTicksNoMovementPacketsProcessed"},"color":"gold"},",",{"score":{"name":"@s","objective":"ncmAllowedDistanceByPackets"},"color":"gold"},",",{"score":{"name":"@s","objective":"ncmDistanceDifference"},"color":"gold"}]
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score @s ncmTicksNoMovementPacketsProcessed matches 1.. run scoreboard players set @s ncmDistanceDifference 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score @s ncmTicksNoMovementPacketsProcessed matches 1.. run scoreboard players set @s ncmAllowedDistanceByPackets 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score @s ncmTicksNoMovementPacketsProcessed matches 1.. run scoreboard players set @s ncmTicksNoMovementPacketsProcessed 0


execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s ncmTicksNoMovementPacketsProcessed 0











#Debug: execute as @a run tellraw @s {"score":{"name":"@s","objective":"VE.PlayerMoveEvent.distanceHorizontal"},"color":"gold"}
# Movement State 1 -> WALKING
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmTicksNoMovementPacketsProcessed matches 1.. unless score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score @s ncmTSTransitionTimeout matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 1 if score @s VE.PlayerMoveEvent.distanceHorizontal > DataHolder ncmc_ts_1 run scoreboard players add @s ncmTimesStrideTooHighLog 1
# Debug: execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmTSTransitionTimeout matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 1 if score @s VE.PlayerMoveEvent.distanceHorizontal > DataHolder ncmc_ts_1 run tellraw @s ["",{"text":"[TestNCM] WALKING ","color":"gray"},{"score":{"name":"@s","objective":"VE.PlayerMoveEvent.distanceHorizontal"},"color":"gray"},{"text":" cm (","color":"gray"},{"score":{"name":"@s","objective":"ncmTimesStrideTooHighLog"},"color":"red"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmTimesStrideTooHighCancel"},"color":"gray"},{"text":")","color":"gray"}]
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 1 if score @s VE.PlayerMoveEvent.distanceHorizontal <= DataHolder ncmc_ts_1 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmTicksNoMovementPacketsProcessed matches 1.. unless score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score @s ncmTSTransitionTimeout matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 1 if score @s VE.PlayerMoveEvent.distanceHorizontal > DataHolder ncmc_ts_2 run scoreboard players add @s ncmTimesStrideTooHighCancel 1
# Debug: execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmTSTransitionTimeout matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 1 if score @s VE.PlayerMoveEvent.distanceHorizontal > DataHolder ncmc_ts_2 run tellraw @s ["",{"text":"[TestNCM] WALKING ","color":"gray"},{"score":{"name":"@s","objective":"VE.PlayerMoveEvent.distanceHorizontal"},"color":"gray"},{"text":" cm (","color":"gray"},{"score":{"name":"@s","objective":"ncmTimesStrideTooHighLog"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmTimesStrideTooHighCancel"},"color":"red"},{"text":")","color":"gray"}]

execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 1 if score @s VE.PlayerMoveEvent.distanceHorizontal <= DataHolder ncmc_ts_2 run scoreboard players set @s ncmTimesStrideTooHighCancel 0

# Movement State 2 -> SPRINTING
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmTicksNoMovementPacketsProcessed matches 1.. unless score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score @s ncmTSTransitionTimeout matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 2 if score @s VE.PlayerMoveEvent.distanceHorizontal > DataHolder ncmc_ts_3 run scoreboard players add @s ncmTimesStrideTooHighLog 1
# Debug: execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmTSTransitionTimeout matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 2 if score @s VE.PlayerMoveEvent.distanceHorizontal > DataHolder ncmc_ts_3 run tellraw @s ["",{"text":"[TestNCM] SPRINTING ","color":"gray"},{"score":{"name":"@s","objective":"VE.PlayerMoveEvent.distanceHorizontal"},"color":"gray"},{"text":" cm (","color":"gray"},{"score":{"name":"@s","objective":"ncmTimesStrideTooHighLog"},"color":"red"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmTimesStrideTooHighCancel"},"color":"gray"},{"text":")","color":"gray"}]
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 2 if score @s VE.PlayerMoveEvent.distanceHorizontal <= DataHolder ncmc_ts_3 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmTicksNoMovementPacketsProcessed matches 1.. unless score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score @s ncmTSTransitionTimeout matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 2 if score @s VE.PlayerMoveEvent.distanceHorizontal > DataHolder ncmc_ts_4 run scoreboard players add @s ncmTimesStrideTooHighCancel 1
# Debug: execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmTSTransitionTimeout matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 2 if score @s VE.PlayerMoveEvent.distanceHorizontal > DataHolder ncmc_ts_4 run tellraw @s ["",{"text":"[TestNCM] SPRINTING ","color":"gray"},{"score":{"name":"@s","objective":"VE.PlayerMoveEvent.distanceHorizontal"},"color":"gray"},{"text":" cm (","color":"gray"},{"score":{"name":"@s","objective":"ncmTimesStrideTooHighLog"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmTimesStrideTooHighCancel"},"color":"red"},{"text":")","color":"gray"}]
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 2 if score @s VE.PlayerMoveEvent.distanceHorizontal <= DataHolder ncmc_ts_4 run scoreboard players set @s ncmTimesStrideTooHighCancel 0

# Movement State 3 -> SNEAKING
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmTicksNoMovementPacketsProcessed matches 1.. unless score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score @s ncmTSTransitionTimeout matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 3 if score @s VE.PlayerMoveEvent.distanceHorizontal > DataHolder ncmc_ts_5 run scoreboard players add @s ncmTimesStrideTooHighLog 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 3 if score @s VE.PlayerMoveEvent.distanceHorizontal <= DataHolder ncmc_ts_5 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmTicksNoMovementPacketsProcessed matches 1.. unless score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score @s ncmTSTransitionTimeout matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 3 if score @s VE.PlayerMoveEvent.distanceHorizontal > DataHolder ncmc_ts_6 run scoreboard players add @s ncmTimesStrideTooHighCancel 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 3 if score @s VE.PlayerMoveEvent.distanceHorizontal <= DataHolder ncmc_ts_6 run scoreboard players set @s ncmTimesStrideTooHighCancel 0

# Movement State 5 -> CLIMBING
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmTicksNoMovementPacketsProcessed matches 1.. unless score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 5 if score @s VE.PlayerMoveEvent.distanceVertical > DataHolder ncmc_ts_9 run scoreboard players add @s ncmTimesStrideTooHighLog 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 5 if score @s VE.PlayerMoveEvent.distanceHorizontal <= DataHolder ncmc_ts_9 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmTicksNoMovementPacketsProcessed matches 1.. unless score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 5 if score @s VE.PlayerMoveEvent.distanceVertical > DataHolder ncmc_ts_10 run scoreboard players add @s ncmTimesStrideTooHighCancel 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 5 if score @s VE.PlayerMoveEvent.distanceHorizontal <= DataHolder ncmc_ts_10 run scoreboard players set @s ncmTimesStrideTooHighCancel 0

# Movement State 6 -> FLYING (Survival/Adventure Mode)
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!creative,gamemode=!spectator] unless score @s ncmTicksNoMovementPacketsProcessed matches 1.. unless score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score @s ncmTSLevitationTimeout matches 1.. unless score @s ncmLadderNearby matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score @s VE.PlayerMoveEvent.hasDescended matches 1 unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D > DataHolder ncmc_ts_13 run scoreboard players add @s ncmTimesStrideTooHighLog 1
# Debug: execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!creative,gamemode=!spectator] unless score @s ncmTSLevitationTimeout matches 1.. unless score @s ncmLadderNearby matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score @s VE.PlayerMoveEvent.hasDescended matches 1 unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D > DataHolder ncmc_ts_13 run tellraw @s ["",{"text":"[TestNCM] FLYING ","color":"gray"},{"score":{"name":"@s","objective":"VE.PlayerMoveEvent.distanceHorizontal"},"color":"gray"},{"text":" cm (","color":"gray"},{"score":{"name":"@s","objective":"ncmTimesStrideTooHighLog"},"color":"red"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmTimesStrideTooHighCancel"},"color":"gray"},{"text":")","color":"gray"}]
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!creative,gamemode=!spectator] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D <= DataHolder ncmc_ts_13 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!creative,gamemode=!spectator] unless score @s ncmTicksNoMovementPacketsProcessed matches 1.. unless score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score @s ncmTSLevitationTimeout matches 1.. unless score @s ncmLadderNearby matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score @s VE.PlayerMoveEvent.hasDescended matches 1 unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D > DataHolder ncmc_ts_14 run scoreboard players add @s ncmTimesStrideTooHighCancel 1
# Debug: execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!creative,gamemode=!spectator] unless score @s ncmTSLevitationTimeout matches 1.. unless score @s ncmLadderNearby matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score @s VE.PlayerMoveEvent.hasDescended matches 1 unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D > DataHolder ncmc_ts_14 run tellraw @s ["",{"text":"[TestNCM] FLYING ","color":"gray"},{"score":{"name":"@s","objective":"VE.PlayerMoveEvent.distanceHorizontal"},"color":"gray"},{"text":" cm (","color":"gray"},{"score":{"name":"@s","objective":"ncmTimesStrideTooHighLog"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmTimesStrideTooHighCancel"},"color":"red"},{"text":")","color":"gray"}]
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!creative,gamemode=!spectator] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D <= DataHolder ncmc_ts_14 run scoreboard players set @s ncmTimesStrideTooHighCancel 0

# Movement State 6 -> FLYING (Creative/Spectator Mode)
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!survival,gamemode=!adventure] unless score @s ncmLastLatencyLevel matches 2.. unless score @s ncmTicksNoMovementPacketsProcessed matches 1.. unless score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score @s ncmTSLevitationTimeout matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score @s VE.PlayerMoveEvent.hasDescended matches 1 unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D > DataHolder ncmc_ts_11 run scoreboard players add @s ncmTimesStrideTooHighLog 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!survival,gamemode=!adventure] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D <= DataHolder ncmc_ts_11 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!survival,gamemode=!adventure] unless score @s ncmLastLatencyLevel matches 2.. unless score @s ncmTicksNoMovementPacketsProcessed matches 1.. unless score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score @s ncmTSLevitationTimeout matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score @s VE.PlayerMoveEvent.hasDescended matches 1 unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D > DataHolder ncmc_ts_12 run scoreboard players add @s ncmTimesStrideTooHighCancel 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!survival,gamemode=!adventure] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D <= DataHolder ncmc_ts_12 run scoreboard players set @s ncmTimesStrideTooHighCancel 0

# Movement State 8 -> BOAT (Ground)
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmLiquidNearby matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 8 if score @s VE.PlayerMoveEvent.distanceHorizontal > DataHolder ncmc_ts_17 run scoreboard players add @s ncmTimesStrideTooHighLog 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 8 if score @s VE.PlayerMoveEvent.distanceHorizontal <= DataHolder ncmc_ts_17 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmLiquidNearby matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 8 if score @s VE.PlayerMoveEvent.distanceHorizontal > DataHolder ncmc_ts_18 run scoreboard players add @s ncmTimesStrideTooHighCancel 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 8 if score @s VE.PlayerMoveEvent.distanceHorizontal <= DataHolder ncmc_ts_18 run scoreboard players set @s ncmTimesStrideTooHighCancel 0

# Movement State 8 -> BOAT (Water)
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score @s ncmLiquidNearby matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 8 if score @s VE.PlayerMoveEvent.distanceHorizontal > DataHolder ncmc_ts_40 run scoreboard players add @s ncmTimesStrideTooHighLog 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 8 if score @s VE.PlayerMoveEvent.distanceHorizontal <= DataHolder ncmc_ts_40 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score @s ncmLiquidNearby matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 8 if score @s VE.PlayerMoveEvent.distanceHorizontal > DataHolder ncmc_ts_41 run scoreboard players add @s ncmTimesStrideTooHighCancel 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 8 if score @s VE.PlayerMoveEvent.distanceHorizontal <= DataHolder ncmc_ts_41 run scoreboard players set @s ncmTimesStrideTooHighCancel 0


# Movement State 9 -> PIG
#execute as Yorb if score @s VEGbl.thePlayer.currentMovementState matches 9 run tellraw @s {"score":{"name":"@s","objective":"VE.PlayerMoveEvent.distanceHorizontal"}}

execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 9 if score @s VE.PlayerMoveEvent.distanceHorizontal > DataHolder ncmc_ts_19 run scoreboard players add @s ncmTimesStrideTooHighLog 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 8 if score @s VE.PlayerMoveEvent.distanceHorizontal <= DataHolder ncmc_ts_19 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 9 if score @s VE.PlayerMoveEvent.distanceHorizontal > DataHolder ncmc_ts_20 run scoreboard players add @s ncmTimesStrideTooHighCancel 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 8 if score @s VE.PlayerMoveEvent.distanceHorizontal <= DataHolder ncmc_ts_20 run scoreboard players set @s ncmTimesStrideTooHighCancel 0

# Movement State 11 -> HORSE

execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 11 if score @s VE.PlayerMoveEvent.distanceHorizontal > DataHolder ncmc_ts_23 run scoreboard players add @s ncmTimesStrideTooHighLog 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 8 if score @s VE.PlayerMoveEvent.distanceHorizontal <= DataHolder ncmc_ts_23 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 11 if score @s VE.PlayerMoveEvent.distanceHorizontal > DataHolder ncmc_ts_24 run scoreboard players add @s ncmTimesStrideTooHighCancel 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 8 if score @s VE.PlayerMoveEvent.distanceHorizontal <= DataHolder ncmc_ts_24 run scoreboard players set @s ncmTimesStrideTooHighCancel 0





execute as @a if score @s ncmTimesStrideTooHighLog matches 1.. run scoreboard players operation @s ncmTSResetTimer = DataHolder ncmc_ts_33
execute as @a if score @s ncmTimesStrideTooHighCancel matches 1.. run scoreboard players operation @s ncmTSResetTimer = DataHolder ncmc_ts_33
execute as @a if score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score @s ncmTSResetLatencyTimer matches 1.. run scoreboard players set @s ncmTSResetLatencyTimer 40


execute as @a if score @s ncmTSResetLatencyTimer matches 1.. run scoreboard players remove @s ncmTSResetLatencyTimer 1
execute as @a if score @s ncmTSResetLatencyTimer matches 0 run scoreboard players set @s ncmTimesStrideTooHighWithLatency 0

execute as @a if score @s ncmTSResetTimer matches 0.. run scoreboard players remove @s ncmTSResetTimer 1
execute as @a if score @s ncmTSResetTimer matches 0 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @a if score @s ncmTSResetTimer matches 0 run scoreboard players set @s ncmTimesStrideTooHighCancel 0

execute as @e[type=minecraft:player] if score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players set @s ncmTimesStrideTooHighWithLatency 0
execute as @e[type=minecraft:player] if score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player] if score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players set @s ncmTimesStrideTooHighCancel 0
execute as @e[type=minecraft:player] if score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players set @s ncmTSInternalLogOnlyFails 0

execute as @e[type=minecraft:player] if score DataHolder ncmTicksNoMovementPacketsProcessed matches 1.. run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player] if score DataHolder ncmTicksNoMovementPacketsProcessed matches 1.. run scoreboard players set @s ncmTimesStrideTooHighCancel 0
execute as @e[type=minecraft:player] if score DataHolder ncmTicksNoMovementPacketsProcessed matches 1.. run scoreboard players set @s ncmTSInternalLogOnlyFails 0
execute as @e[type=minecraft:player] if score DataHolder ncmTimesStrideTooHighWithLatency matches 1.. run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player] if score DataHolder ncmTimesStrideTooHighWithLatency matches 1.. run scoreboard players set @s ncmTimesStrideTooHighCancel 0
execute as @e[type=minecraft:player] if score DataHolder ncmTimesStrideTooHighWithLatency matches 1.. run scoreboard players set @s ncmTSInternalLogOnlyFails 0


execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighLog >= DataHolder ncmc_ts_31 run scoreboard players add @s ncmTSInternalLogOnlyFails 1
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighLog >= DataHolder ncmc_ts_31 run scoreboard players operation @s ncmTSInternalLogOnlyFailsResetTimer = DataHolder ncmc_ts_35
execute as @a if score @s ncmTSInternalLogOnlyFailsResetTimer matches 0 run scoreboard players set @s ncmTSInternalLogOnlyFails 0

execute as @e[type=minecraft:player] if score DataHolder ncmc_ts_39 matches 1 unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 run scoreboard players operation @s ncmTSInternalLogOnlyFails = DataHolder ncmc_ts_34

execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTSInternalLogOnlyFails >= DataHolder ncmc_ts_34 unless score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 run scoreboard players set @s ncmFailedMVMTS 5
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTSInternalLogOnlyFails >= DataHolder ncmc_ts_34 if score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 run scoreboard players set @s ncmFailedMVMTS 9

execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTSInternalLogOnlyFails >= DataHolder ncmc_ts_34 unless score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"TickStride","color":"light_purple"},{"text":" {...}","color":"gray"}]
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTSInternalLogOnlyFails >= DataHolder ncmc_ts_34 unless score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"TickStride","color":"light_purple"},{"text":" {...}","color":"gray"}]
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTSInternalLogOnlyFails >= DataHolder ncmc_ts_34 if score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"TickStride","color":"light_purple"},{"text":" {+Blatant Cancel}","color":"gray"}]
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTSInternalLogOnlyFails >= DataHolder ncmc_ts_34 if score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"TickStride","color":"light_purple"},{"text":" {+Blatant Cancel}","color":"gray"}]

execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighWithLatency matches 3.. run scoreboard players set @s ncmFailedMVMTS 9
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighWithLatency matches 3.. run scoreboard players set @s VE.PlayerMoveEvent.willModify 1
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighWithLatency matches 3.. if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"TickStride.MorePackets","color":"light_purple"},{"text":" {...}","color":"gray"}]
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighWithLatency matches 3.. run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"TickStride.MorePackets","color":"light_purple"},{"text":" {...}","color":"gray"}]
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighWithLatency matches 3.. run scoreboard players set @s ncmTimesStrideTooHighWithLatency 0
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighWithLatency matches 3.. run scoreboard players set @s ncmTSResetLatencyTimer 0

execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTSInternalLogOnlyFails >= DataHolder ncmc_ts_34 run scoreboard players set @s ncmTSInternalLogOnlyFails 0


execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 run scoreboard players set @s VE.PlayerMoveEvent.willModify 1


execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighLog >= DataHolder ncmc_ts_31 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 run scoreboard players set @s ncmTimesStrideTooHighCancel 0
 
execute as @a if score @s ncmTSIceTimeout matches 0.. run scoreboard players remove @s ncmTSIceTimeout 1
execute as @a if score @s ncmTSInternalLogOnlyFailsResetTimer matches 0.. run scoreboard players remove @s ncmTSInternalLogOnlyFailsResetTimer 1
execute as @a if score @s ncmTSTransitionTimeout matches 0.. run scoreboard players remove @s ncmTSTransitionTimeout 1
execute as @a if score @s ncmTSLevitationTimeout matches 0.. run scoreboard players remove @s ncmTSLevitationTimeout 1