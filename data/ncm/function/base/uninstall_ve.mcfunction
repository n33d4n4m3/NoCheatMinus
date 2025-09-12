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
# Description: This function uninstalls the VanillaEvents datapack as it's no longer needed.
# Author:      n33d4n4m3
# ...

# Base
scoreboard objectives remove VESys.Build
scoreboard objectives remove VESys.installRound
scoreboard objectives remove VE.Number

# Utils
# Square Root
scoreboard objectives remove VEUtil.sqrt.input
scoreboard objectives remove VEUtil.sqrt.output
scoreboard objectives remove VEUtil.sqrt.field1
scoreboard objectives remove VEUtil.sqrt.field2
scoreboard objectives remove VEUtil.sqrt.field3
scoreboard objectives remove VEUtil.sqrt.tick

# Globals
# currentMovementState
scoreboard objectives remove VEGbl.thePlayer.currentMovementState
scoreboard objectives remove VETmp.thePlayer.currentMovementState.aviateOneCm
scoreboard objectives remove VETmp.thePlayer.currentMovementState.boatOneCm
scoreboard objectives remove VETmp.thePlayer.currentMovementState.climbOneCm
scoreboard objectives remove VETmp.thePlayer.currentMovementState.flyOneCm
scoreboard objectives remove VETmp.thePlayer.currentMovementState.horseOneCm
scoreboard objectives remove VETmp.thePlayer.currentMovementState.minecartOneCm
scoreboard objectives remove VETmp.thePlayer.currentMovementState.pigOneCm
scoreboard objectives remove VETmp.thePlayer.currentMovementState.striderOneCm
scoreboard objectives remove VETmp.thePlayer.currentMovementState.swimOneCm
scoreboard objectives remove VETmp.thePlayer.currentMovementState.walkOnWaterOneCm
scoreboard objectives remove VETmp.thePlayer.currentMovementState.walkOneCm
scoreboard objectives remove VETmp.thePlayer.currentMovementState.walkUnderWaterOneCm

# Events
# PlayerGameModeChangeEvent
scoreboard objectives remove VESys.PlayerGameModeChangeEvent
scoreboard objectives remove VESys.PlayerGameModeChangeEvent.isEnabled
scoreboard objectives remove VETmp.PlayerGameModeChangeEvent.firstRunDone
scoreboard objectives remove VE.PlayerGameModeChangeEvent.priorGameMode
scoreboard objectives remove VE.PlayerGameModeChangeEvent.newGameMode
scoreboard objectives remove VE.PlayerGameModeChangeEvent.willModify
scoreboard objectives remove VE.PlayerGameModeChangeEvent.modGameMode

# EntityHealthUpdateEvent
scoreboard objectives remove VESys.EntityHealthUpdateEvent
scoreboard objectives remove VESys.EntityHealthUpdateEvent.isEnabled
scoreboard objectives remove VETmp.EntityHealthUpdateEvent.firstRunDone
scoreboard objectives remove VE.EntityHealthUpdateEvent.priorHealth
scoreboard objectives remove VE.EntityHealthUpdateEvent.newHealth
scoreboard objectives remove VE.EntityHealthUpdateEvent.wasPositive
scoreboard objectives remove VE.EntityHealthUpdateEvent.wasNegative
scoreboard objectives remove VE.EntityHealthUpdateEvent.damageType
scoreboard objectives remove VE.EntityHealthUpdateEvent.damageBypass
scoreboard objectives remove VE.EntityHealthUpdateEvent.damageResisted
scoreboard objectives remove VE.EntityHealthUpdateEvent.difference

# PlayerAttackEvent
scoreboard objectives remove VESys.PlayerAttackEvent
scoreboard objectives remove VESys.PlayerAttackEvent.isEnabled
scoreboard objectives remove VE.PlayerAttackEvent.damageDealt
scoreboard objectives remove VE.PlayerAttackEvent.damageAbsorbed
scoreboard objectives remove VE.PlayerAttackEvent.damageResisted
scoreboard objectives remove VE.PlayerAttackEvent.opponentSurvived
scoreboard objectives remove VE.PlayerAttackEvent.criticalHit
scoreboard objectives remove VETmp.PlayerAttackEvent.attackDamage
scoreboard objectives remove VETmp.PlayerAttackEvent.smiteLevel
scoreboard objectives remove VETmp.PlayerAttackEvent.sharpnessLevel
scoreboard objectives remove VETmp.PlayerAttackEvent.baneLevel


# BatToggleSleepEvent
scoreboard objectives remove VESys.BatToggleSleepEvent
scoreboard objectives remove VESys.BatToggleSleepEvent.isEnabled
scoreboard objectives remove VETmp.BatToggleSleepEvent.firstRunDone
scoreboard objectives remove VE.BatToggleSleepEvent.priorState
scoreboard objectives remove VE.BatToggleSleepEvent.newState

# PlayerMoveEvent
scoreboard objectives remove VESys.PlayerMoveEvent
scoreboard objectives remove VESys.PlayerMoveEvent.isEnabled
scoreboard objectives remove VETmp.PlayerMoveEvent.firstRunDone
scoreboard objectives remove VETmp.PlayerMoveEvent.awaitsModify
scoreboard objectives remove VE.PlayerMoveEvent.fromX
scoreboard objectives remove VE.PlayerMoveEvent.fromY
scoreboard objectives remove VE.PlayerMoveEvent.fromZ
scoreboard objectives remove VE.PlayerMoveEvent.fromYaw
scoreboard objectives remove VE.PlayerMoveEvent.fromPitch
scoreboard objectives remove VE.PlayerMoveEvent.toX
scoreboard objectives remove VE.PlayerMoveEvent.toY
scoreboard objectives remove VE.PlayerMoveEvent.toZ
scoreboard objectives remove VE.PlayerMoveEvent.toYaw
scoreboard objectives remove VE.PlayerMoveEvent.toPitch
scoreboard objectives remove VE.PlayerMoveEvent.xDiff
scoreboard objectives remove VE.PlayerMoveEvent.yDiff
scoreboard objectives remove VE.PlayerMoveEvent.zDiff
scoreboard objectives remove VE.PlayerMoveEvent.yawDiff
scoreboard objectives remove VE.PlayerMoveEvent.pitchDiff
scoreboard objectives remove VE.PlayerMoveEvent.distance3D
scoreboard objectives remove VE.PlayerMoveEvent.distanceHorizontal
scoreboard objectives remove VE.PlayerMoveEvent.distanceVertical
scoreboard objectives remove VE.PlayerMoveEvent.hasPositionChanged
scoreboard objectives remove VE.PlayerMoveEvent.hasRotationChanged
scoreboard objectives remove VE.PlayerMoveEvent.hasXChanged
scoreboard objectives remove VE.PlayerMoveEvent.hasYChanged
scoreboard objectives remove VE.PlayerMoveEvent.hasZChanged
scoreboard objectives remove VE.PlayerMoveEvent.hasXZChanged
scoreboard objectives remove VE.PlayerMoveEvent.hasYawChanged
scoreboard objectives remove VE.PlayerMoveEvent.hasPitchChanged
scoreboard objectives remove VE.PlayerMoveEvent.hasClimbed
scoreboard objectives remove VE.PlayerMoveEvent.hasMaintained
scoreboard objectives remove VE.PlayerMoveEvent.hasDescended
scoreboard objectives remove VETmp.PlayerMoveEvent.xDiffSqrd
scoreboard objectives remove VETmp.PlayerMoveEvent.yDiffSqrd
scoreboard objectives remove VETmp.PlayerMoveEvent.zDiffSqrd
scoreboard objectives remove VETmp.PlayerMoveEvent.xzDiffSqrd
scoreboard objectives remove VETmp.PlayerMoveEvent.xyzDiffSqrd
scoreboard objectives remove VE.PlayerMoveEvent.willModify
scoreboard objectives remove VE.PlayerMoveEvent.modX
scoreboard objectives remove VE.PlayerMoveEvent.modY
scoreboard objectives remove VE.PlayerMoveEvent.modZ
scoreboard objectives remove VE.PlayerMoveEvent.modYaw
scoreboard objectives remove VE.PlayerMoveEvent.modPitch

# PlayerMovementStateTransitionEvent
scoreboard objectives remove VESys.PlayerMovementStateTransitionEvent
scoreboard objectives remove VESys.PlayerMovementStateTransitionEvent.isEnabled
scoreboard objectives remove VETmp.PlayerMovementStateTransitionEvent.firstRunDone
scoreboard objectives remove VE.PlayerMovementStateTransitionEvent.priorMovementState
scoreboard objectives remove VE.PlayerMovementStateTransitionEvent.newMovementState


execute if score DataHolder ncmFinishedTour matches 1 if score $ VESys.Build matches 1.. as @a if score @s ncmOperator matches 2 run tellraw @s [{"text":""},{"text":"NCM","color":"red"},{"text":": ","color":"gray"},{"text":"An error occurred while uninstalling VanillaEvents. Do you perhaps not have a sufficient permission level? Try running ","color":"red"},{"text":"/function ncm:base/uninstall_ve","color":"yellow"},{"text":" from the console.","color":"red"}]
execute if score DataHolder ncmFinishedTour matches 1 if score $ VESys.Build matches 1.. run return fail

execute if score DataHolder ncmFinishedTour matches 1 as @a if score @s ncmOperator matches 2 run tellraw @s [{"text":""},{"text":"NCM","color":"red"},{"text":": VanillaEvents has been successfully uninstalled. Please delete the VanillaEvents datapack from the /datapacks/-folder next. After that, you should run /reload.","color":"gray"}]
