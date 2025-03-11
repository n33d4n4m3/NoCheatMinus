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

# Pre-reset.


execute as @e[type=minecraft:player,tag=!VE.PlayerMoveEvent] run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=!VE.PlayerMoveEvent] run scoreboard players set @s ncmTimesStrideTooHighCancel 0


execute as @e[type=minecraft:player,tag=!VE.PlayerMoveEvent] if score DataHolder ncmc_ts_36 matches 1 run scoreboard players set @s ncmTSInternalLogOnlyFails 0
execute as @e[type=minecraft:player] if score DataHolder ncmc_ts_36 matches 1 if score @s VE.PlayerMoveEvent.distance3D matches 0 run scoreboard players set @s ncmTSInternalLogOnlyFails 0


execute as @a if score @s VEGbl.thePlayer.currentMovementState matches 10 run scoreboard players set @s ncmTSLevitationTimeout 30
execute as @a if score @s ncmLevitate matches 1.. run scoreboard players set @s ncmTSLevitationTimeout 2
execute as @a if score @s VEGbl.thePlayer.currentMovementState matches 10 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @a if score @s VEGbl.thePlayer.currentMovementState matches 10 run scoreboard players set @s ncmTimesStrideTooHighCancel 0
execute as @a if score @s VEGbl.thePlayer.currentMovementState matches 10 run scoreboard players set @s ncmTSInternalLogOnlyFails 0









# Determine the maximum stride length defined in the configuration for a specific movement state.
execute as @a[tag=VE.PlayerMoveEvent] if score @s VEGbl.thePlayer.currentMovementState matches 1 run scoreboard players operation @s ncmMVMTSMaximumStrideLengthLog = DataHolder ncmc_ts_1
execute as @a[tag=VE.PlayerMoveEvent] if score @s VEGbl.thePlayer.currentMovementState matches 1 run scoreboard players operation @s ncmMVMTSMaximumStrideLengthCancel = DataHolder ncmc_ts_2
# Account for issue MC-69459 (Invalidate Lost Sprint)
execute as @a[tag=VE.PlayerMovementStateTransitionEvent,tag=VE.PlayerAttackEvent] if score @s VE.PlayerMovementStateTransitionEvent.priorMovementState matches 2 if score @s VE.PlayerMovementStateTransitionEvent.newMovementState matches 1 run scoreboard players set @s ncmInvalidateLostSprint 1
execute as @a if score @s VEGbl.thePlayer.currentMovementState matches 2 run scoreboard players set @s ncmInvalidateLostSprint 0
execute as @a[tag=VE.PlayerMoveEvent] if score @s VEGbl.thePlayer.currentMovementState matches 1 if score @s ncmInvalidateLostSprint matches 1 run scoreboard players operation @s ncmMVMTSMaximumStrideLengthLog = DataHolder ncmc_ts_3
execute as @a[tag=VE.PlayerMoveEvent] if score @s VEGbl.thePlayer.currentMovementState matches 1 if score @s ncmInvalidateLostSprint matches 1 run scoreboard players operation @s ncmMVMTSMaximumStrideLengthCancel = DataHolder ncmc_ts_4


execute as @a[tag=VE.PlayerMoveEvent] if score @s VEGbl.thePlayer.currentMovementState matches 2 run scoreboard players operation @s ncmMVMTSMaximumStrideLengthLog = DataHolder ncmc_ts_1
execute as @a[tag=VE.PlayerMoveEvent] if score @s VEGbl.thePlayer.currentMovementState matches 2 run scoreboard players operation @s ncmMVMTSMaximumStrideLengthCancel = DataHolder ncmc_ts_2





execute as @a[tag=VE.PlayerMoveEvent] if score @s VEGbl.thePlayer.currentMovementState matches 3 run scoreboard players operation @s ncmMVMTSMaximumStrideLengthLog = DataHolder ncmc_ts_5
execute as @a[tag=VE.PlayerMoveEvent] if score @s VEGbl.thePlayer.currentMovementState matches 3 run scoreboard players operation @s ncmMVMTSMaximumStrideLengthCancel = DataHolder ncmc_ts_6

execute as @a[tag=VE.PlayerMoveEvent] if score @s VEGbl.thePlayer.currentMovementState matches 5 run scoreboard players operation @s ncmMVMTSMaximumStrideLengthLog = DataHolder ncmc_ts_9
execute as @a[tag=VE.PlayerMoveEvent] if score @s VEGbl.thePlayer.currentMovementState matches 5 run scoreboard players operation @s ncmMVMTSMaximumStrideLengthCancel = DataHolder ncmc_ts_10

execute as @a[tag=VE.PlayerMoveEvent,gamemode=!survival,gamemode=!adventure,gamemode=!spectator] if score @s VEGbl.thePlayer.currentMovementState matches 6 run scoreboard players operation @s ncmMVMTSMaximumStrideLengthLog = DataHolder ncmc_ts_11
execute as @a[tag=VE.PlayerMoveEvent,gamemode=!survival,gamemode=!adventure,gamemode=!spectator] if score @s VEGbl.thePlayer.currentMovementState matches 6 run scoreboard players operation @s ncmMVMTSMaximumStrideLengthCancel = DataHolder ncmc_ts_12

execute as @a[tag=VE.PlayerMoveEvent,gamemode=!creative,gamemode=!spectator] if score @s VEGbl.thePlayer.currentMovementState matches 6 run scoreboard players operation @s ncmMVMTSMaximumStrideLengthLog = DataHolder ncmc_ts_13
execute as @a[tag=VE.PlayerMoveEvent,gamemode=!creative,gamemode=!spectator] if score @s VEGbl.thePlayer.currentMovementState matches 6 run scoreboard players operation @s ncmMVMTSMaximumStrideLengthCancel = DataHolder ncmc_ts_14

execute as @a[tag=VE.PlayerMoveEvent] unless score @s ncmLiquidNearby matches 1.. if score @s VEGbl.thePlayer.currentMovementState matches 8 run scoreboard players operation @s ncmMVMTSMaximumStrideLengthLog = DataHolder ncmc_ts_17
execute as @a[tag=VE.PlayerMoveEvent] unless score @s ncmLiquidNearby matches 1.. if score @s VEGbl.thePlayer.currentMovementState matches 8 run scoreboard players operation @s ncmMVMTSMaximumStrideLengthCancel = DataHolder ncmc_ts_18

execute as @a[tag=VE.PlayerMoveEvent] if score @s ncmLiquidNearby matches 1.. if score @s VEGbl.thePlayer.currentMovementState matches 8 run scoreboard players operation @s ncmMVMTSMaximumStrideLengthLog = DataHolder ncmc_ts_40
execute as @a[tag=VE.PlayerMoveEvent] if score @s ncmLiquidNearby matches 1.. if score @s VEGbl.thePlayer.currentMovementState matches 8 run scoreboard players operation @s ncmMVMTSMaximumStrideLengthCancel = DataHolder ncmc_ts_41

execute as @a[tag=VE.PlayerMoveEvent] if score @s VEGbl.thePlayer.currentMovementState matches 9 run scoreboard players operation @s ncmMVMTSMaximumStrideLengthLog = DataHolder ncmc_ts_19
execute as @a[tag=VE.PlayerMoveEvent] if score @s VEGbl.thePlayer.currentMovementState matches 9 run scoreboard players operation @s ncmMVMTSMaximumStrideLengthCancel = DataHolder ncmc_ts_20

execute as @a[tag=VE.PlayerMoveEvent] if score @s VEGbl.thePlayer.currentMovementState matches 11 run scoreboard players operation @s ncmMVMTSMaximumStrideLengthLog = DataHolder ncmc_ts_23
execute as @a[tag=VE.PlayerMoveEvent] if score @s VEGbl.thePlayer.currentMovementState matches 11 run scoreboard players operation @s ncmMVMTSMaximumStrideLengthCancel = DataHolder ncmc_ts_24


execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players operation @s ncmMVMTSMaximumStrideLengthLogConfig = @s ncmMVMTSMaximumStrideLengthLog
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players operation @s ncmMVMTSMaximumStrideLengthCancelConfig = @s ncmMVMTSMaximumStrideLengthCancel




# Check if anything in the player’s environment restricts the maximum stride length further.


execute as @a[tag=VE.PlayerMoveEvent] unless score @s ncmMVMTSEnvironmentCooldown matches 1.. at @s anchored feet if block ~ ~ ~ minecraft:soul_sand run scoreboard players set @s ncmMVMTSEnvironmentCooldown 1
execute as @a[tag=VE.PlayerMoveEvent] unless score @s ncmMVMTSEnvironmentCooldown matches 1.. at @s anchored feet if block ~ ~-0.01 ~ minecraft:slime_block run scoreboard players set @s ncmMVMTSEnvironmentCooldown 1
execute as @a[tag=VE.PlayerMoveEvent] unless score @s ncmMVMTSEnvironmentCooldown matches 1.. at @s anchored feet if block ~ ~ ~ minecraft:honey_block run scoreboard players set @s ncmMVMTSEnvironmentCooldown 1
execute as @a[tag=VE.PlayerMoveEvent] unless score @s ncmMVMTSEnvironmentCooldown matches 1.. at @s if block ~ ~ ~ minecraft:sweet_berry_bush run scoreboard players set @s ncmMVMTSEnvironmentCooldown 1
execute as @a[tag=VE.PlayerMoveEvent] unless score @s ncmMVMTSEnvironmentCooldown matches 1.. at @s if block ~ ~1 ~ minecraft:sweet_berry_bush run scoreboard players set @s ncmMVMTSEnvironmentCooldown 1
execute as @a[tag=VE.PlayerMoveEvent] unless score @s ncmMVMTSEnvironmentCooldown matches 1.. at @s if block ~ ~ ~ minecraft:cobweb run scoreboard players set @s ncmMVMTSEnvironmentCooldown 8
execute as @a[tag=VE.PlayerMoveEvent] unless score @s ncmMVMTSEnvironmentCooldown matches 1.. at @s if block ~ ~1 ~ minecraft:cobweb run scoreboard players set @s ncmMVMTSEnvironmentCooldown 8



# Fix SweetBerryBush->Cobweb Transition FP
execute as @a[tag=VE.PlayerMoveEvent] at @s if block ~ ~ ~ minecraft:sweet_berry_bush run scoreboard players set @s ncmMVMTSWasInSweetBerryBush 1
execute as @a[tag=VE.PlayerMoveEvent] at @s if block ~ ~1 ~ minecraft:sweet_berry_bush run scoreboard players set @s ncmMVMTSWasInSweetBerryBush 1
execute as @a[tag=VE.PlayerMoveEvent] if score @s ncmMVMTSWasInSweetBerryBush matches 1.. run scoreboard players add @s ncmMVMTSWasInSweetBerryBush 1
execute as @a[tag=VE.PlayerMoveEvent] if score @s ncmMVMTSWasInSweetBerryBush matches 30.. run scoreboard players set @s ncmMVMTSWasInSweetBerryBush 0

execute as @a[tag=VE.PlayerMoveEvent] at @s unless block ~ ~ ~ minecraft:cobweb unless block ~ ~1 ~ minecraft:cobweb unless block ~ ~ ~ minecraft:sweet_berry_bush unless block ~ ~1 ~ minecraft:sweet_berry_bush anchored feet unless block ~ ~ ~ minecraft:soul_sand unless block ~ ~-0.01 ~ minecraft:slime_block unless block ~ ~ ~ minecraft:honey_block run scoreboard players set @s ncmMVMTSEnvironmentCooldown 0

execute as @a[tag=VE.PlayerMoveEvent] if score @s ncmMVMTSEnvironmentCooldown matches 1..9 run scoreboard players add @s ncmMVMTSEnvironmentCooldown 1

execute as @a[tag=VE.PlayerMoveEvent] if score @s ncmMVMTSEnvironmentCooldown matches 10.. at @s anchored feet if block ~ ~ ~ minecraft:soul_sand if score @s VEGbl.thePlayer.currentMovementState matches 1..2 run scoreboard players set @s ncmMVMTSMaximumStrideLengthLog 14
execute as @a[tag=VE.PlayerMoveEvent] if score @s ncmMVMTSEnvironmentCooldown matches 10.. at @s anchored feet if block ~ ~ ~ minecraft:soul_sand if score @s VEGbl.thePlayer.currentMovementState matches 3 run scoreboard players set @s ncmMVMTSMaximumStrideLengthLog 7

execute as @a[tag=VE.PlayerMoveEvent] if score @s ncmMVMTSEnvironmentCooldown matches 10.. at @s anchored feet if block ~ ~-0.01 ~ minecraft:slime_block if score @s VEGbl.thePlayer.currentMovementState matches 1..3 run scoreboard players set @s ncmMVMTSMaximumStrideLengthLog 7

execute as @a[tag=VE.PlayerMoveEvent] if score @s ncmMVMTSEnvironmentCooldown matches 10.. at @s anchored feet if block ~ ~ ~ minecraft:honey_block if score @s VEGbl.thePlayer.currentMovementState matches 1 run scoreboard players set @s ncmMVMTSMaximumStrideLengthLog 13
execute as @a[tag=VE.PlayerMoveEvent] if score @s ncmMVMTSEnvironmentCooldown matches 10.. at @s anchored feet if block ~ ~ ~ minecraft:honey_block if score @s VEGbl.thePlayer.currentMovementState matches 2 run scoreboard players set @s ncmMVMTSMaximumStrideLengthLog 14
execute as @a[tag=VE.PlayerMoveEvent] if score @s ncmMVMTSEnvironmentCooldown matches 10.. at @s anchored feet if block ~ ~ ~ minecraft:honey_block if score @s VEGbl.thePlayer.currentMovementState matches 3 run scoreboard players set @s ncmMVMTSMaximumStrideLengthLog 6


execute as @a[tag=VE.PlayerMoveEvent] if score @s ncmMVMTSEnvironmentCooldown matches 10.. at @s if block ~ ~ ~ minecraft:sweet_berry_bush if score @s VEGbl.thePlayer.currentMovementState matches 1..2 run scoreboard players set @s ncmMVMTSMaximumStrideLengthLog 8
execute as @a[tag=VE.PlayerMoveEvent] if score @s ncmMVMTSEnvironmentCooldown matches 10.. at @s if block ~ ~ ~ minecraft:sweet_berry_bush if score @s VEGbl.thePlayer.currentMovementState matches 2 run scoreboard players set @s ncmMVMTSMaximumStrideLengthLog 9
execute as @a[tag=VE.PlayerMoveEvent] if score @s ncmMVMTSEnvironmentCooldown matches 10.. at @s if block ~ ~ ~ minecraft:sweet_berry_bush if score @s VEGbl.thePlayer.currentMovementState matches 3 run scoreboard players set @s ncmMVMTSMaximumStrideLengthLog 4
execute as @a[tag=VE.PlayerMoveEvent] if score @s ncmMVMTSEnvironmentCooldown matches 10.. at @s if block ~ ~1 ~ minecraft:sweet_berry_bush if score @s VEGbl.thePlayer.currentMovementState matches 1..2 run scoreboard players set @s ncmMVMTSMaximumStrideLengthLog 8
execute as @a[tag=VE.PlayerMoveEvent] if score @s ncmMVMTSEnvironmentCooldown matches 10.. at @s if block ~ ~1 ~ minecraft:sweet_berry_bush if score @s VEGbl.thePlayer.currentMovementState matches 2 run scoreboard players set @s ncmMVMTSMaximumStrideLengthLog 9
execute as @a[tag=VE.PlayerMoveEvent] if score @s ncmMVMTSEnvironmentCooldown matches 10.. at @s if block ~ ~1 ~ minecraft:sweet_berry_bush if score @s VEGbl.thePlayer.currentMovementState matches 3 run scoreboard players set @s ncmMVMTSMaximumStrideLengthLog 4

execute as @a[tag=VE.PlayerMoveEvent] unless score @s ncmMVMTSWasInSweetBerryBush matches 1.. if score @s ncmMVMTSEnvironmentCooldown matches 10.. at @s if block ~ ~ ~ minecraft:cobweb if score @s VEGbl.thePlayer.currentMovementState matches 1 run scoreboard players set @s ncmMVMTSMaximumStrideLengthLog 3
execute as @a[tag=VE.PlayerMoveEvent] unless score @s ncmMVMTSWasInSweetBerryBush matches 1.. if score @s ncmMVMTSEnvironmentCooldown matches 10.. at @s if block ~ ~ ~ minecraft:cobweb if score @s VEGbl.thePlayer.currentMovementState matches 2 run scoreboard players set @s ncmMVMTSMaximumStrideLengthLog 4
execute as @a[tag=VE.PlayerMoveEvent] unless score @s ncmMVMTSWasInSweetBerryBush matches 1.. if score @s ncmMVMTSEnvironmentCooldown matches 10.. at @s if block ~ ~ ~ minecraft:cobweb if score @s VEGbl.thePlayer.currentMovementState matches 3 run scoreboard players set @s ncmMVMTSMaximumStrideLengthLog 3
execute as @a[tag=VE.PlayerMoveEvent] unless score @s ncmMVMTSWasInSweetBerryBush matches 1.. if score @s ncmMVMTSEnvironmentCooldown matches 10.. at @s if block ~ ~1 ~ minecraft:cobweb if score @s VEGbl.thePlayer.currentMovementState matches 1 run scoreboard players set @s ncmMVMTSMaximumStrideLengthLog 3
execute as @a[tag=VE.PlayerMoveEvent] unless score @s ncmMVMTSWasInSweetBerryBush matches 1.. if score @s ncmMVMTSEnvironmentCooldown matches 10.. at @s if block ~ ~1 ~ minecraft:cobweb if score @s VEGbl.thePlayer.currentMovementState matches 2 run scoreboard players set @s ncmMVMTSMaximumStrideLengthLog 4
execute as @a[tag=VE.PlayerMoveEvent] unless score @s ncmMVMTSWasInSweetBerryBush matches 1.. if score @s ncmMVMTSEnvironmentCooldown matches 10.. at @s if block ~ ~1 ~ minecraft:cobweb if score @s VEGbl.thePlayer.currentMovementState matches 3 run scoreboard players set @s ncmMVMTSMaximumStrideLengthLog 3


# Scale the determined maximum stride length according to the current speed attribute (including potion effects and attribute changes).





execute as @a[tag=VE.PlayerMoveEvent] unless score @s ncmMVMTSAttributeSpeedSaveTimer matches 1.. store result score @s ncmMVMTSAttributeSpeed run attribute @s minecraft:movement_speed get 100
execute as @a[tag=VE.PlayerMoveEvent] if score @s ncmMVMTSAttributeSpeedSave > @s ncmMVMTSAttributeSpeed run scoreboard players set @s ncmMVMTSAttributeSpeedLower 1
execute as @a[tag=VE.PlayerMoveEvent] unless score @s ncmMVMTSAttributeSpeedSave > @s ncmMVMTSAttributeSpeed run scoreboard players set @s ncmMVMTSAttributeSpeedLower 0
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s ncmMVMTSAttributeSpeedSaveTimerMax 10
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players operation @s ncmMVMTSAttributeSpeedSaveTimerMax += @s ncmLastLatencyLevel

execute as @a[tag=VE.PlayerMoveEvent] unless score @s ncmMVMTSAttributeSpeedSaveTimer matches 1.. if score @s ncmMVMTSAttributeSpeedLower matches 1 run scoreboard players operation @s ncmMVMTSAttributeSpeedSaveTimer = @s ncmMVMTSAttributeSpeedSaveTimerMax
execute as @a[tag=VE.PlayerMoveEvent] if score @s ncmMVMTSAttributeSpeedSaveTimer matches 1.. run scoreboard players operation @s ncmMVMTSAttributeSpeed = @s ncmMVMTSAttributeSpeedSave
execute as @a if score @s ncmMVMTSAttributeSpeedSaveTimer matches 1.. run scoreboard players remove @s ncmMVMTSAttributeSpeedSaveTimer 1

execute as @a[tag=VE.PlayerMoveEvent] unless score @s ncmMVMTSAttributeSpeedSaveTimer matches 1.. store result score @s ncmMVMTSAttributeSpeed run attribute @s minecraft:movement_speed get 100




execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players operation @s ncmMVMTSMaximumStrideLengthLog *= @s ncmMVMTSAttributeSpeed
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players operation @s ncmMVMTSMaximumStrideLengthCancel *= @s ncmMVMTSAttributeSpeed
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players operation @s ncmMVMTSMaximumStrideLengthLog /= $10 ncmCalc
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players operation @s ncmMVMTSMaximumStrideLengthCancel /= $10 ncmCalc


# Determine modifiers/additions to the maximum stride length (e.g. Movement State Transitions, ice).

execute as @a if score @s ncmMVMTSModifier matches 1.. run scoreboard players remove @s ncmMVMTSModifier 1





execute as @a at @s if block ~ ~-1 ~ minecraft:ice if score @s VEGbl.thePlayer.currentMovementState matches 6 run scoreboard players set @s ncmMVMTSModifier 60
execute as @a at @s if block ~ ~-1 ~ minecraft:packed_ice if score @s VEGbl.thePlayer.currentMovementState matches 6 run scoreboard players set @s ncmMVMTSModifier 60
execute as @a at @s if block ~ ~-0.5 ~ minecraft:ice if score @s VEGbl.thePlayer.currentMovementState matches 6 run scoreboard players set @s ncmMVMTSModifier 60
execute as @a at @s if block ~ ~-0.5 ~ minecraft:packed_ice if score @s VEGbl.thePlayer.currentMovementState matches 6 run scoreboard players set @s ncmMVMTSModifier 60

execute as @a at @s if block ~ ~-1 ~ minecraft:ice unless score @s ncmMVMTSModifier matches 30.. if score @s VEGbl.thePlayer.currentMovementState matches 2 run scoreboard players set @s ncmMVMTSModifier 30
execute as @a at @s if block ~ ~-1 ~ minecraft:packed_ice unless score @s ncmMVMTSModifier matches 30.. if score @s VEGbl.thePlayer.currentMovementState matches 2 run scoreboard players set @s ncmMVMTSModifier 30
execute as @a at @s if block ~ ~-0.5 ~ minecraft:ice unless score @s ncmMVMTSModifier matches 30.. if score @s VEGbl.thePlayer.currentMovementState matches 2 run scoreboard players set @s ncmMVMTSModifier 30
execute as @a at @s if block ~ ~-0.5 ~ minecraft:packed_ice unless score @s ncmMVMTSModifier matches 30.. if score @s VEGbl.thePlayer.currentMovementState matches 2 run scoreboard players set @s ncmMVMTSModifier 30

execute as @a[tag=VE.PlayerMovementStateTransitionEvent] unless score @s ncmMVMTSModifier matches 20.. if score @s VE.PlayerMovementStateTransitionEvent.newMovementState matches 1..5 run scoreboard players set @s ncmMVMTSModifier 20
execute as @a[nbt={abilities:{flying:1b}}] unless score @s ncmMVMTSModifier matches 200.. run scoreboard players set @s ncmMVMTSModifier 200


execute as @a if score @s ncmFPDamage matches -50..-1 unless score @s ncmMVMTSModifier matches 70.. run scoreboard players set @s ncmMVMTSModifier 70

execute as @a if score @s ncmPistonNearby matches 1 unless score @s ncmMVMTSModifier matches 80.. run scoreboard players set @s ncmMVMTSModifier 80

execute as @a if score @s VEGbl.thePlayer.currentMovementState matches 3 if predicate ncm:has_swift_sneak_armor unless score @s ncmMVMTSModifier matches 30.. run scoreboard players set @s ncmMVMTSModifier 30

execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players operation @s ncmMVMTSAttributeSpeedSave = @s ncmMVMTSAttributeSpeed



execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players operation @s ncmMVMTSMaximumStrideLengthLog += @s ncmMVMTSModifier
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players operation @s ncmMVMTSMaximumStrideLengthCancel += @s ncmMVMTSModifier








#execute as @a[tag=VE.PlayerMoveEvent] if score DataHolder ncmMVMTSDebug matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 run tellraw @s [{"text":""},{"text":"[NCM DEBUG] "},{"score":{"name":"@s","objective":"VEGbl.thePlayer.currentMovementState"},"color":"dark_aqua"},{"text":" -> ","color":"white"},{"text":"maxConfig: ","color":"yellow"},{"score":{"name":"@s","objective":"ncmMVMTSMaximumStrideLengthLogConfig"}},{"text":" / "},{"score":{"name":"@s","objective":"ncmMVMTSMaximumStrideLengthCancelConfig"}},{"text":", "},{"text":"modifier: ","color":"yellow"},{"score":{"name":"@s","objective":"ncmMVMTSModifier"}},{"text":", "},{"text":"maxModified: ","color":"yellow"},{"score":{"name":"@s","objective":"ncmMVMTSMaximumStrideLengthLog"}},{"text":" / "},{"score":{"name":"@s","objective":"ncmMVMTSMaximumStrideLengthCancel"}},{"text":" -> ","color":"white"},{"score":{"name":"@s","objective":"VE.PlayerMoveEvent.distanceHorizontal"},"color":"light_purple"},{"text":" / "},{"score":{"name":"@s","objective":"VE.PlayerMoveEvent.distanceVertical"},"color":"light_purple"},{"text":" / "},{"score":{"name":"@s","objective":"VE.PlayerMoveEvent.distance3D"},"color":"light_purple"}]



# ---------------------
# Subcheck: MorePackets
# ---------------------

# Count ticks in which no movement packets were processed.
execute as @a[tag=!VE.PlayerMoveEvent] run scoreboard players add @s ncmTicksNoMovementPacketsProcessed 1

# Predict the value of the legitimate horizontal distance by multiplying the allowed distance per tick with the amount of ticks in which no movement packets were processed.
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTicksNoMovementPacketsProcessed matches 1.. if score @s VEGbl.thePlayer.currentMovementState matches 1 run scoreboard players operation @s ncmAllowedDistanceByPackets = @s ncmMVMTSMaximumStrideLengthLogConfig
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTicksNoMovementPacketsProcessed matches 1.. if score @s VEGbl.thePlayer.currentMovementState matches 3 run scoreboard players operation @s ncmAllowedDistanceByPackets = @s ncmMVMTSMaximumStrideLengthLogConfig
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTicksNoMovementPacketsProcessed matches 1.. if score @s VEGbl.thePlayer.currentMovementState matches 2 run scoreboard players operation @s ncmAllowedDistanceByPackets = DataHolder ncmc_ts_3
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTicksNoMovementPacketsProcessed matches 1.. if score @s VEGbl.thePlayer.currentMovementState matches 5 run scoreboard players operation @s ncmAllowedDistanceByPackets = @s ncmMVMTSMaximumStrideLengthLogConfig
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!creative,gamemode=!spectator] unless score @s ncmTSLevitationTimeout matches 1.. unless score @s ncmLadderNearby matches 1.. unless score @s VE.PlayerMoveEvent.hasDescended matches 1 unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTicksNoMovementPacketsProcessed matches 1.. if score @s VEGbl.thePlayer.currentMovementState matches 6 run scoreboard players operation @s ncmAllowedDistanceByPackets = @s ncmMVMTSMaximumStrideLengthLogConfig
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!survival,gamemode=!adventure] unless score @s ncmTSLevitationTimeout matches 1.. unless score @s VE.PlayerMoveEvent.hasDescended matches 1 unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTicksNoMovementPacketsProcessed matches 1.. if score @s VEGbl.thePlayer.currentMovementState matches 6 run scoreboard players operation @s ncmAllowedDistanceByPackets = @s ncmMVMTSMaximumStrideLengthLogConfig



execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score @s ncmAllowedDistanceByPackets matches 1.. run scoreboard players operation @s ncmAllowedDistanceByPackets *= @s ncmTicksNoMovementPacketsProcessed
# Calculate the difference between predicted maximum horizontal distance and measured horizontal distance.
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score @s ncmAllowedDistanceByPackets matches 1.. run scoreboard players operation @s ncmDistanceDifference = @s VE.PlayerMoveEvent.distanceHorizontal
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score @s ncmAllowedDistanceByPackets matches 1.. if score @s VEGbl.thePlayer.currentMovementState matches 6 run scoreboard players operation @s ncmDistanceDifference = @s VE.PlayerMoveEvent.distance3D
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score @s ncmAllowedDistanceByPackets matches 1.. if score @s VEGbl.thePlayer.currentMovementState matches 5 run scoreboard players operation @s ncmDistanceDifference = @s VE.PlayerMoveEvent.distanceVertical
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score @s ncmAllowedDistanceByPackets matches 1.. run scoreboard players operation @s ncmDistanceDifference -= @s ncmAllowedDistanceByPackets

# If difference > 60, flag.
execute as @a if score @s ncmDistanceDifference matches 61.. run scoreboard players add @s ncmTimesStrideTooHighWithLatency 1



execute as @e[type=minecraft:player] if score @s ncmAllowedDistanceByPackets matches 1.. run scoreboard players set @s ncmMVMTSIgnoreNext 1
execute as @e[type=minecraft:player] unless score @s ncmAllowedDistanceByPackets matches 1.. run scoreboard players set @s ncmMVMTSIgnoreNext 0




# Debug: execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] run tellraw @s [{"score":{"name":"@s","objective":"VE.PlayerMoveEvent.distanceHorizontal"},"color":"gold"},",",{"score":{"name":"@s","objective":"ncmTicksNoMovementPacketsProcessed"},"color":"gold"},",",{"score":{"name":"@s","objective":"ncmAllowedDistanceByPackets"},"color":"gold"},",",{"score":{"name":"@s","objective":"ncmDistanceDifference"},"color":"gold"}]
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score @s ncmTicksNoMovementPacketsProcessed matches 1.. run scoreboard players set @s ncmDistanceDifference 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score @s ncmTicksNoMovementPacketsProcessed matches 1.. run scoreboard players set @s ncmAllowedDistanceByPackets 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score @s ncmTicksNoMovementPacketsProcessed matches 1.. run scoreboard players set @s ncmTicksNoMovementPacketsProcessed 0


scoreboard players set @a ncmMVMTSSpeedEffectCooldownSet 40
execute as @a run scoreboard players operation @s ncmMVMTSSpeedEffectCooldownSet += @s ncmLastLatencyLevel


execute as @a[tag=VE.PlayerGameModeChangeEvent] run scoreboard players set @s ncmTimesStrideTooHighWithLatency 0
execute as @a[tag=VE.PlayerMovementStateTransitionEvent] run scoreboard players set @s ncmTimesStrideTooHighWithLatency 0
execute as @a[nbt={active_effects:[{id:"minecraft:speed"}]}] run scoreboard players operation @s ncmMVMTSSpeedEffectCooldown = @s ncmMVMTSSpeedEffectCooldownSet
execute as @a if score @s ncmMVMTSSpeedEffectCooldown matches 1.. run scoreboard players set @s ncmTimesStrideTooHighWithLatency 0
execute as @a if score @s ncmMVMTSSpeedEffectCooldown matches 1.. run scoreboard players remove @s ncmMVMTSSpeedEffectCooldown 1


execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s ncmTicksNoMovementPacketsProcessed 0




# Compare the maximum stride length with the calculated event distance.




# Movement State 1 -> WALKING
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmMVMTSIgnoreNext matches 1.. unless score @s ncmTSLevitationTimeout matches 1.. unless score @s ncmTicksNoMovementPacketsProcessed matches 1.. unless score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 1 if score @s VE.PlayerMoveEvent.distanceHorizontal > @s ncmMVMTSMaximumStrideLengthLog run scoreboard players add @s ncmTimesStrideTooHighLog 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 1 if score @s VE.PlayerMoveEvent.distanceHorizontal <= @s ncmMVMTSMaximumStrideLengthLog run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmMVMTSIgnoreNext matches 1.. unless score @s ncmTSLevitationTimeout matches 1.. unless score @s ncmTicksNoMovementPacketsProcessed matches 1.. unless score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 1 if score @s VE.PlayerMoveEvent.distanceHorizontal > @s ncmMVMTSMaximumStrideLengthCancel run scoreboard players add @s ncmTimesStrideTooHighCancel 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 1 if score @s VE.PlayerMoveEvent.distanceHorizontal <= @s ncmMVMTSMaximumStrideLengthCancel run scoreboard players set @s ncmTimesStrideTooHighCancel 0

# Movement State 2 -> SPRINTING
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmMVMTSIgnoreNext matches 1.. unless score @s ncmTSLevitationTimeout matches 1.. unless score @s ncmTicksNoMovementPacketsProcessed matches 1.. unless score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 2 if score @s VE.PlayerMoveEvent.distanceHorizontal > @s ncmMVMTSMaximumStrideLengthLog run scoreboard players add @s ncmTimesStrideTooHighLog 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 2 if score @s VE.PlayerMoveEvent.distanceHorizontal <= @s ncmMVMTSMaximumStrideLengthLog run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmMVMTSIgnoreNext matches 1.. unless score @s ncmTSLevitationTimeout matches 1.. unless score @s ncmTicksNoMovementPacketsProcessed matches 1.. unless score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 2 if score @s VE.PlayerMoveEvent.distanceHorizontal > @s ncmMVMTSMaximumStrideLengthLog run scoreboard players add @s ncmTimesStrideTooHighCancel 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 2 if score @s VE.PlayerMoveEvent.distanceHorizontal <= @s ncmMVMTSMaximumStrideLengthCancel run scoreboard players set @s ncmTimesStrideTooHighCancel 0

# Movement State 3 -> SNEAKING
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmMVMTSIgnoreNext matches 1.. unless score @s ncmTSLevitationTimeout matches 1.. unless score @s ncmTicksNoMovementPacketsProcessed matches 1.. unless score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 3 if score @s VE.PlayerMoveEvent.distanceHorizontal > @s ncmMVMTSMaximumStrideLengthLog run scoreboard players add @s ncmTimesStrideTooHighLog 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 3 if score @s VE.PlayerMoveEvent.distanceHorizontal <= @s ncmMVMTSMaximumStrideLengthLog run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score @s ncmMVMTSIgnoreNext matches 1.. unless score @s ncmTSLevitationTimeout matches 1.. unless score @s ncmTicksNoMovementPacketsProcessed matches 1.. unless score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 3 if score @s VE.PlayerMoveEvent.distanceHorizontal > @s ncmMVMTSMaximumStrideLengthCancel run scoreboard players add @s ncmTimesStrideTooHighCancel 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 3 if score @s VE.PlayerMoveEvent.distanceHorizontal <= @s ncmMVMTSMaximumStrideLengthCancel run scoreboard players set @s ncmTimesStrideTooHighCancel 0

# Movement State 5 -> CLIMBING
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!creative,gamemode=!spectator] unless score @s ncmMVMTSIgnoreNext matches 1.. unless score @s ncmTicksNoMovementPacketsProcessed matches 1.. unless score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 5 if score @s VE.PlayerMoveEvent.distanceVertical > @s ncmMVMTSMaximumStrideLengthLog run scoreboard players add @s ncmTimesStrideTooHighLog 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!creative,gamemode=!spectator] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 5 if score @s VE.PlayerMoveEvent.distanceHorizontal <= @s ncmMVMTSMaximumStrideLengthLog run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!creative,gamemode=!spectator] unless score @s ncmMVMTSIgnoreNext matches 1.. unless score @s ncmTicksNoMovementPacketsProcessed matches 1.. unless score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 5 if score @s VE.PlayerMoveEvent.distanceVertical > @s ncmMVMTSMaximumStrideLengthCancel run scoreboard players add @s ncmTimesStrideTooHighCancel 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!creative,gamemode=!spectator] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 5 if score @s VE.PlayerMoveEvent.distanceHorizontal <= @s ncmMVMTSMaximumStrideLengthCancel run scoreboard players set @s ncmTimesStrideTooHighCancel 0

# Movement State 6 -> FLYING (Survival/Adventure Mode)
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!creative,gamemode=!spectator] unless score @s ncmMVMTSIgnoreNext matches 1.. unless score @s ncmTicksNoMovementPacketsProcessed matches 1.. unless score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score @s ncmTSLevitationTimeout matches 1.. unless score @s ncmLadderNearby matches 1.. unless score @s VE.PlayerMoveEvent.hasDescended matches 1 unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D > @s ncmMVMTSMaximumStrideLengthLog run scoreboard players add @s ncmTimesStrideTooHighLog 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!creative,gamemode=!spectator] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D <= @s ncmMVMTSMaximumStrideLengthLog run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!creative,gamemode=!spectator] unless score @s ncmMVMTSIgnoreNext matches 1.. unless score @s ncmTicksNoMovementPacketsProcessed matches 1.. unless score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score @s ncmTSLevitationTimeout matches 1.. unless score @s ncmLadderNearby matches 1.. unless score @s VE.PlayerMoveEvent.hasDescended matches 1 unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D > @s ncmMVMTSMaximumStrideLengthCancel run scoreboard players add @s ncmTimesStrideTooHighCancel 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!creative,gamemode=!spectator] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D <= @s ncmMVMTSMaximumStrideLengthCancel run scoreboard players set @s ncmTimesStrideTooHighCancel 0

# Movement State 6 -> FLYING (Creative Mode)
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!survival,gamemode=!adventure,gamemode=!spectator] unless score @s ncmMVMTSIgnoreNext matches 1.. unless score @s ncmLastLatencyLevel matches 2.. unless score @s ncmTicksNoMovementPacketsProcessed matches 1.. unless score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score @s ncmTSLevitationTimeout matches 1.. unless score @s VE.PlayerMoveEvent.hasDescended matches 1 unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D > @s ncmMVMTSMaximumStrideLengthLog run scoreboard players add @s ncmTimesStrideTooHighLog 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!survival,gamemode=!adventure,gamemode=!spectator] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D <= @s ncmMVMTSMaximumStrideLengthLog run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!survival,gamemode=!adventure,gamemode=!spectator] unless score @s ncmMVMTSIgnoreNext matches 1.. unless score @s ncmLastLatencyLevel matches 2.. unless score @s ncmTicksNoMovementPacketsProcessed matches 1.. unless score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score @s ncmTSLevitationTimeout matches 1.. unless score @s VE.PlayerMoveEvent.hasDescended matches 1 unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D > @s ncmMVMTSMaximumStrideLengthCancel run scoreboard players add @s ncmTimesStrideTooHighCancel 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent,gamemode=!survival,gamemode=!adventure,gamemode=!spectator] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 6 if score @s VE.PlayerMoveEvent.distance3D <= @s ncmMVMTSMaximumStrideLengthCancel run scoreboard players set @s ncmTimesStrideTooHighCancel 0

# Movement State 8 -> BOAT (Ground)
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] at @s unless block ~ ~-1 ~ minecraft:ice unless block ~ ~-0.5 ~ minecraft:ice unless block ~ ~-1 ~ minecraft:packed_ice unless block ~ ~-0.5 ~ minecraft:packed_ice unless score @s ncmLiquidNearby matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 8 if score @s VE.PlayerMoveEvent.distanceHorizontal > @s ncmMVMTSMaximumStrideLengthLog run scoreboard players add @s ncmTimesStrideTooHighLog 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 8 if score @s VE.PlayerMoveEvent.distanceHorizontal <= @s ncmMVMTSMaximumStrideLengthLog run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] at @s unless block ~ ~-1 ~ minecraft:ice unless block ~ ~-0.5 ~ minecraft:ice unless block ~ ~-1 ~ minecraft:packed_ice unless block ~ ~-0.5 ~ minecraft:packed_ice unless score @s ncmLiquidNearby matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 8 if score @s VE.PlayerMoveEvent.distanceHorizontal > @s ncmMVMTSMaximumStrideLengthCancel run scoreboard players add @s ncmTimesStrideTooHighCancel 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 8 if score @s VE.PlayerMoveEvent.distanceHorizontal <= @s ncmMVMTSMaximumStrideLengthCancel run scoreboard players set @s ncmTimesStrideTooHighCancel 0

# Movement State 8 -> BOAT (Water)
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] at @s unless block ~ ~-1 ~ minecraft:ice unless block ~ ~-0.5 ~ minecraft:ice unless block ~ ~-1 ~ minecraft:packed_ice unless block ~ ~-0.5 ~ minecraft:packed_ice if score @s ncmLiquidNearby matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 8 if score @s VE.PlayerMoveEvent.distanceHorizontal > @s ncmMVMTSMaximumStrideLengthLog run scoreboard players add @s ncmTimesStrideTooHighLog 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 8 if score @s VE.PlayerMoveEvent.distanceHorizontal <= @s ncmMVMTSMaximumStrideLengthLog run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] at @s unless block ~ ~-1 ~ minecraft:ice unless block ~ ~-0.5 ~ minecraft:ice unless block ~ ~-1 ~ minecraft:packed_ice unless block ~ ~-0.5 ~ minecraft:packed_ice if score @s ncmLiquidNearby matches 1.. unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 8 if score @s VE.PlayerMoveEvent.distanceHorizontal > @s ncmMVMTSMaximumStrideLengthCancel run scoreboard players add @s ncmTimesStrideTooHighCancel 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 8 if score @s VE.PlayerMoveEvent.distanceHorizontal <= @s ncmMVMTSMaximumStrideLengthCancel run scoreboard players set @s ncmTimesStrideTooHighCancel 0


# Movement State 9 -> PIG


execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 9 if score @s VE.PlayerMoveEvent.distanceHorizontal > @s ncmMVMTSMaximumStrideLengthLog run scoreboard players add @s ncmTimesStrideTooHighLog 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 9 if score @s VE.PlayerMoveEvent.distanceHorizontal <= @s ncmMVMTSMaximumStrideLengthLog run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 9 if score @s VE.PlayerMoveEvent.distanceHorizontal > @s ncmMVMTSMaximumStrideLengthCancel run scoreboard players add @s ncmTimesStrideTooHighCancel 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 9 if score @s VE.PlayerMoveEvent.distanceHorizontal <= @s ncmMVMTSMaximumStrideLengthCancel run scoreboard players set @s ncmTimesStrideTooHighCancel 0

# Movement State 11 -> HORSE
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 11 if score @s VE.PlayerMoveEvent.distanceHorizontal > @s ncmMVMTSMaximumStrideLengthLog run scoreboard players add @s ncmTimesStrideTooHighLog 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 11 if score @s VE.PlayerMoveEvent.distanceHorizontal <= @s ncmMVMTSMaximumStrideLengthLog run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 11 if score @s VE.PlayerMoveEvent.distanceHorizontal > @s ncmMVMTSMaximumStrideLengthCancel run scoreboard players add @s ncmTimesStrideTooHighCancel 1
execute as @e[type=minecraft:player,tag=VE.PlayerMoveEvent] if score DataHolder ncmc_ts_32 matches 1 if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 if score @s VEGbl.thePlayer.currentMovementState matches 11 if score @s VE.PlayerMoveEvent.distanceHorizontal <= @s ncmMVMTSMaximumStrideLengthCancel run scoreboard players set @s ncmTimesStrideTooHighCancel 0



# Mid-reset.

execute as @a if score @s ncmTimesStrideTooHighLog matches 1.. run scoreboard players operation @s ncmTSResetTimer = DataHolder ncmc_ts_33
execute as @a if score @s ncmTimesStrideTooHighCancel matches 1.. run scoreboard players operation @s ncmTSResetTimer = DataHolder ncmc_ts_33
execute as @a if score @s ncmTimesStrideTooHighWithLatency matches 1.. unless score @s ncmTSResetLatencyTimer matches 1.. run scoreboard players set @s ncmTSResetLatencyTimer 40


execute as @a if score @s ncmTSResetLatencyTimer matches 1.. run scoreboard players remove @s ncmTSResetLatencyTimer 1
execute as @a if score @s ncmTSResetLatencyTimer matches 0 run scoreboard players set @s ncmTimesStrideTooHighWithLatency 0

execute as @a if score @s ncmTSResetTimer matches 0.. run scoreboard players remove @s ncmTSResetTimer 1
execute as @a if score @s ncmTSResetTimer matches 0 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @a if score @s ncmTSResetTimer matches 0 run scoreboard players set @s ncmTimesStrideTooHighCancel 0


execute as @a if score @s ncmReplayStarted matches 1 run scoreboard players set @s ncmTimesStrideTooHighWithLatency 0
execute as @a if score @s ncmReplayStarted matches 1 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @a if score @s ncmReplayStarted matches 1 run scoreboard players set @s ncmTimesStrideTooHighCancel 0

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

# Handle violations.

execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighLog >= DataHolder ncmc_ts_31 run scoreboard players add @s ncmTSInternalLogOnlyFails 1
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighLog >= DataHolder ncmc_ts_31 run scoreboard players operation @s ncmTSInternalLogOnlyFailsResetTimer = DataHolder ncmc_ts_35
execute as @a if score @s ncmTSInternalLogOnlyFailsResetTimer matches 0 run scoreboard players set @s ncmTSInternalLogOnlyFails 0

execute as @e[type=minecraft:player] if score DataHolder ncmc_ts_39 matches 1 unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 run scoreboard players operation @s ncmTSInternalLogOnlyFails = DataHolder ncmc_ts_34

execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTSInternalLogOnlyFails >= DataHolder ncmc_ts_34 unless score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 run scoreboard players set @s ncmFailedMVMTS 5
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTSInternalLogOnlyFails >= DataHolder ncmc_ts_34 if score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 run scoreboard players set @s ncmFailedMVMTS 9


#execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTSInternalLogOnlyFails >= DataHolder ncmc_ts_34 unless score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 100 0.9
#execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTSInternalLogOnlyFails >= DataHolder ncmc_ts_34 if score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 100 1.4

execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTSInternalLogOnlyFails >= DataHolder ncmc_ts_34 unless score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"TickStride","color":"light_purple"},{"text":" {...}","color":"gray"}]
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTSInternalLogOnlyFails >= DataHolder ncmc_ts_34 unless score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"TickStride","color":"light_purple"},{"text":" {...}","color":"gray"}]
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTSInternalLogOnlyFails >= DataHolder ncmc_ts_34 if score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"TickStride","color":"light_purple"},{"text":" {Rage}","color":"gray"}]
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTSInternalLogOnlyFails >= DataHolder ncmc_ts_34 if score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"TickStride","color":"light_purple"},{"text":" {Rage}","color":"gray"}]

execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighWithLatency matches 3.. run scoreboard players set @s ncmFailedMVMTS 9

execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighWithLatency matches 3.. if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"TickStride.MorePackets","color":"light_purple"},{"text":" {...}","color":"gray"}]
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighWithLatency matches 3.. run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"TickStride.MorePackets","color":"light_purple"},{"text":" {...}","color":"gray"}]







# Handle event cancel.

execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTSInternalLogOnlyFails >= DataHolder ncmc_ts_34 unless score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 if score DataHolder ncmBlockMode matches 1 run scoreboard players operation @s VE.PlayerMoveEvent.modX = @s ncmTSSetbackX
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTSInternalLogOnlyFails >= DataHolder ncmc_ts_34 unless score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 if score DataHolder ncmBlockMode matches 1 run scoreboard players operation @s VE.PlayerMoveEvent.modY = @s ncmTSSetbackY
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTSInternalLogOnlyFails >= DataHolder ncmc_ts_34 unless score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 if score DataHolder ncmBlockMode matches 1 run scoreboard players operation @s VE.PlayerMoveEvent.modZ = @s ncmTSSetbackZ

execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 if score DataHolder ncmBlockMode matches 1 run scoreboard players operation @s VE.PlayerMoveEvent.modX = @s ncmTSSetbackX
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 if score DataHolder ncmBlockMode matches 1 run scoreboard players operation @s VE.PlayerMoveEvent.modY = @s ncmTSSetbackY
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 if score DataHolder ncmBlockMode matches 1 run scoreboard players operation @s VE.PlayerMoveEvent.modZ = @s ncmTSSetbackZ

execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighWithLatency matches 3.. if score DataHolder ncmBlockMode matches 1 run scoreboard players operation @s VE.PlayerMoveEvent.modX = @s ncmTSSetbackX
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighWithLatency matches 3.. if score DataHolder ncmBlockMode matches 1 run scoreboard players operation @s VE.PlayerMoveEvent.modY = @s ncmTSSetbackY
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighWithLatency matches 3.. if score DataHolder ncmBlockMode matches 1 run scoreboard players operation @s VE.PlayerMoveEvent.modZ = @s ncmTSSetbackZ

execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTSInternalLogOnlyFails >= DataHolder ncmc_ts_34 unless score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 if score DataHolder ncmBlockMode matches 1 run scoreboard players set @s VE.PlayerMoveEvent.willModify 1
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 if score DataHolder ncmBlockMode matches 1 run scoreboard players set @s VE.PlayerMoveEvent.willModify 1
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighWithLatency matches 3.. if score DataHolder ncmBlockMode matches 1 run scoreboard players set @s VE.PlayerMoveEvent.willModify 1

execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTSInternalLogOnlyFails >= DataHolder ncmc_ts_34 unless score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 run scoreboard players set @s ncmTicksSinceLastMovementViolation 0
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 run scoreboard players set @s ncmTicksSinceLastMovementViolation 0
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighWithLatency matches 3.. if score DataHolder ncmBlockMode matches 1 run scoreboard players set @s ncmTicksSinceLastMovementViolation 0


execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighWithLatency matches 3.. run scoreboard players set @s ncmTimesStrideTooHighWithLatency 0
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighWithLatency matches 3.. run scoreboard players set @s ncmTSResetLatencyTimer 0

execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTSInternalLogOnlyFails >= DataHolder ncmc_ts_34 run scoreboard players set @s ncmTSInternalLogOnlyFails 0



execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighLog >= DataHolder ncmc_ts_31 run scoreboard players set @s ncmTimesStrideTooHighLog 0
execute as @e[type=minecraft:player] unless score DataHolder ncmMVMTSLagTimeout matches 1.. if score @s ncmTimesStrideTooHighCancel >= DataHolder ncmc_ts_31 run scoreboard players set @s ncmTimesStrideTooHighCancel 0


# Post-reset.
 
execute as @a if score @s ncmTSInternalLogOnlyFailsResetTimer matches 0.. run scoreboard players remove @s ncmTSInternalLogOnlyFailsResetTimer 1
execute as @a if score @s ncmTSLevitationTimeout matches 0.. run scoreboard players remove @s ncmTSLevitationTimeout 1