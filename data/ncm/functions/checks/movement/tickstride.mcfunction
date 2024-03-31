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
execute as @e[type=minecraft:player,tag=!VE.PlayerMoveEvent] run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player] if score @s VE.PlayerMoveEvent.distance3D matches 0 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=!VE.PlayerMoveEvent] run scoreboard players set @s ncmTimesStrideTooHighCancel 0
execute as @e[type=minecraft:player] if score @s VE.PlayerMoveEvent.distance3D matches 0 run scoreboard players set @s ncmTimesStrideTooHighCancel 0
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
execute as @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] run scoreboard players operation @s ncmTSTransitionTimeout = DataHolder ncmc_ts_37
execute as @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] run scoreboard players set @s ncmTimesStrideTooHighCancel 0
execute as @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] run scoreboard players set @s ncmTSInternalLogOnlyFails 0

# Movement State 1 -> WALKING
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmTSTransitionTimeout matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 1 if score @s VE.PlayerMoveEvent.distanceHorizontal > DataHolder ncmc_ts_1 run scoreboard players add @s ncmTimesStrideTooHighLog 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 1 if score @s VE.PlayerMoveEvent.distanceHorizontal <= DataHolder ncmc_ts_1 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmTSTransitionTimeout matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 1 if score @s VE.PlayerMoveEvent.distanceHorizontal > DataHolder ncmc_ts_2 run scoreboard players add @s ncmTimesStrideTooHighCancel 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 1 if score @s VE.PlayerMoveEvent.distanceHorizontal <= DataHolder ncmc_ts_2 run scoreboard players set @s ncmTimesStrideTooHighCancel 0

# Movement State 2 -> SPRINTING
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmTSTransitionTimeout matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 2 if score @s VE.PlayerMoveEvent.distanceHorizontal > DataHolder ncmc_ts_3 run scoreboard players add @s ncmTimesStrideTooHighLog 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 2 if score @s VE.PlayerMoveEvent.distanceHorizontal <= DataHolder ncmc_ts_3 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmTSTransitionTimeout matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 2 if score @s VE.PlayerMoveEvent.distanceHorizontal > DataHolder ncmc_ts_4 run scoreboard players add @s ncmTimesStrideTooHighCancel 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 2 if score @s VE.PlayerMoveEvent.distanceHorizontal <= DataHolder ncmc_ts_4 run scoreboard players set @s ncmTimesStrideTooHighCancel 0

# Movement State 3 -> SNEAKING
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmTSTransitionTimeout matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 3 if score @s VE.PlayerMoveEvent.distanceHorizontal > DataHolder ncmc_ts_5 run scoreboard players add @s ncmTimesStrideTooHighLog 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 3 if score @s VE.PlayerMoveEvent.distanceHorizontal <= DataHolder ncmc_ts_5 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmTSTransitionTimeout matches 1.. unless score @s ncmTSIceTimeout matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 3 if score @s VE.PlayerMoveEvent.distanceHorizontal > DataHolder ncmc_ts_6 run scoreboard players add @s ncmTimesStrideTooHighCancel 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 3 if score @s VE.PlayerMoveEvent.distanceHorizontal <= DataHolder ncmc_ts_6 run scoreboard players set @s ncmTimesStrideTooHighCancel 0

# Movement State 5 -> CLIMBING
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 5 if score @s VE.PlayerMoveEvent.distanceVertical > DataHolder ncmc_ts_9 run scoreboard players add @s ncmTimesStrideTooHighLog 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 5 if score @s VE.PlayerMoveEvent.distanceHorizontal <= DataHolder ncmc_ts_9 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 5 if score @s VE.PlayerMoveEvent.distanceVertical > DataHolder ncmc_ts_10 run scoreboard players add @s ncmTimesStrideTooHighCancel 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 5 if score @s VE.PlayerMoveEvent.distanceHorizontal <= DataHolder ncmc_ts_10 run scoreboard players set @s ncmTimesStrideTooHighCancel 0

# Movement State 5 -> FLYING (Survival/Adventure Mode)
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!creative,gamemode=!spectator] unless score @s VE.PlayerMoveEvent.hasDescended matches 1 unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D > DataHolder ncmc_ts_13 run scoreboard players add @s ncmTimesStrideTooHighLog 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!creative,gamemode=!spectator] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D <= DataHolder ncmc_ts_13 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!creative,gamemode=!spectator] unless score @s VE.PlayerMoveEvent.hasDescended matches 1 unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D > DataHolder ncmc_ts_14 run scoreboard players add @s ncmTimesStrideTooHighCancel 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!creative,gamemode=!spectator] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D <= DataHolder ncmc_ts_14 run scoreboard players set @s ncmTimesStrideTooHighCancel 0

# Movement State 5 -> FLYING (Creative/Spectator Mode)
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!survival,gamemode=!adventure] unless score @s VE.PlayerMoveEvent.hasDescended matches 1 unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D > DataHolder ncmc_ts_11 run scoreboard players add @s ncmTimesStrideTooHighLog 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!survival,gamemode=!adventure] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D <= DataHolder ncmc_ts_11 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!survival,gamemode=!adventure] unless score @s VE.PlayerMoveEvent.hasDescended matches 1 unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D > DataHolder ncmc_ts_12 run scoreboard players add @s ncmTimesStrideTooHighCancel 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!survival,gamemode=!adventure] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D <= DataHolder ncmc_ts_12 run scoreboard players set @s ncmTimesStrideTooHighCancel 0


execute as @a if score @s ncmTimesStrideTooHighLog matches 1.. run scoreboard players operation @s ncmTSResetTimer = DataHolder ncmc_ts_33
execute as @a if score @s ncmTimesStrideTooHighCancel matches 1.. run scoreboard players operation @s ncmTSResetTimer = DataHolder ncmc_ts_33

execute as @a if score @s ncmTSResetTimer matches 0.. run scoreboard players remove @s ncmTSResetTimer 1
execute as @a if score @s ncmTSResetTimer matches 0 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @a if score @s ncmTSResetTimer matches 0 run scoreboard players set @s ncmTimesStrideTooHighCancel 0

execute as @e[type=minecraft:player] if score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player] if score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players set @s ncmTimesStrideTooHighCancel 0
execute as @e[type=minecraft:player] if score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players set @s ncmTSInternalLogOnlyFails 0

execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighLog >= DataHolder ncmc_ts_31 run scoreboard players add @s ncmTSInternalLogOnlyFails 1
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighLog >= DataHolder ncmc_ts_31 run scoreboard players operation @s ncmTSInternalLogOnlyFailsResetTimer = DataHolder ncmc_ts_35
execute as @a if score @s ncmTSInternalLogOnlyFailsResetTimer matches 0 run scoreboard players set @s ncmTSInternalLogOnlyFails 0

execute as @e[type=minecraft:player] if score DataHolder ncmc_ts_39 matches 1 unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 run scoreboard players operation @s ncmTSInternalLogOnlyFails = DataHolder ncmc_ts_34

execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTSInternalLogOnlyFails >= DataHolder ncmc_ts_34 run scoreboard players set @s ncmFailedMVMTS 1
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTSInternalLogOnlyFails >= DataHolder ncmc_ts_34 run tellraw @s[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"TickStride","color":"light_purple"},{"text":" {...}","color":"gray"}]
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTSInternalLogOnlyFails >= DataHolder ncmc_ts_34 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"TickStride","color":"light_purple"},{"text":" {...}","color":"gray"}]
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTSInternalLogOnlyFails >= DataHolder ncmc_ts_34 run scoreboard players set @s ncmTSInternalLogOnlyFails 0


execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 run scoreboard players set @s VE.PlayerMoveEvent.willModify 1


execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighLog >= DataHolder ncmc_ts_31 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 run scoreboard players set @s ncmTimesStrideTooHighCancel 0
 
execute as @a if score @s ncmTSIceTimeout matches 0.. run scoreboard players remove @s ncmTSIceTimeout 1
execute as @a if score @s ncmTSInternalLogOnlyFailsResetTimer matches 0.. run scoreboard players remove @s ncmTSInternalLogOnlyFailsResetTimer 1
execute as @a if score @s ncmTSTransitionTimeout matches 0.. run scoreboard players remove @s ncmTSTransitionTimeout 1