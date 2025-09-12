# PlayerGameModeChangeEvent
execute as @a[tag=ncmePlayerGameModeChangeEvent] run tag @s remove ncmePlayerGameModeChangeEvent

# PlayerMoveEvent
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players set @s ncmePlayerMoveEvent.hasPositionChanged 0
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players set @s ncmePlayerMoveEvent.hasRotationChanged 0
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players set @s ncmePlayerMoveEvent.hasXChanged 0
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players set @s ncmePlayerMoveEvent.hasYChanged 0
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players set @s ncmePlayerMoveEvent.hasZChanged 0
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players set @s ncmePlayerMoveEvent.hasXZChanged 0
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players set @s ncmePlayerMoveEvent.hasYawChanged 0
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players set @s ncmePlayerMoveEvent.hasPitchChanged 0
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players set @s ncmePlayerMoveEvent.hasClimbed 0
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players set @s ncmePlayerMoveEvent.hasMaintained 0
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players set @s ncmePlayerMoveEvent.hasDescended 0

execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players set @s ncmePlayerMoveEvent.xDiff 0
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players set @s ncmePlayerMoveEvent.yDiff 0
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players set @s ncmePlayerMoveEvent.zDiff 0
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players set @s ncmePlayerMoveEvent.yawDiff 0
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players set @s ncmePlayerMoveEvent.pitchDiff 0
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players set @s ncmePlayerMoveEvent.distance3D 0
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players set @s ncmePlayerMoveEvent.distanceHorizontal 0
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players set @s ncmePlayerMoveEvent.distanceVertical 0
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players set @s ncmePlayerMoveEvent.xDiffSqrd 0
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players set @s ncmePlayerMoveEvent.yDiffSqrd 0
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players set @s ncmePlayerMoveEvent.zDiffSqrd 0
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players set @s ncmePlayerMoveEvent.xzDiffSqrd 0
execute as @a[tag=ncmePlayerMoveEvent] run tag @s remove ncmePlayerMoveEvent

# PlayerMovementStateTransitionEvent
execute as @a[tag=ncmePlayerMovementStateTransitionEvent] run tag @s remove ncmePlayerMovementStateTransitionEvent

# EntityHealthUpdateEvent
execute as @e[tag=ncmeEntityHealthUpdateEvent] run scoreboard players set @s ncmeEntityHealthUpdateEvent.wasPositive 0
execute as @e[tag=ncmeEntityHealthUpdateEvent] run scoreboard players set @s ncmeEntityHealthUpdateEvent.wasNegative 0
execute as @e[tag=ncmeEntityHealthUpdateEvent] run scoreboard players set @s ncmeEntityHealthUpdateEvent.damageType 0
execute as @e[tag=ncmeEntityHealthUpdateEvent] run scoreboard players set @s ncmeEntityHealthUpdateEvent.damageBypass 0

execute as @e[tag=ncmeEntityHealthUpdateEvent] run scoreboard players set @s ncmeEntityHealthUpdateEvent.difference 0
execute as @e[tag=ncmeEntityHealthUpdateEvent] run tag @s remove ncmeEntityHealthUpdateEvent

# PlayerAttackEvent
execute as @a[tag=ncmePlayerAttackEvent] run scoreboard players set @s ncmePlayerAttackEvent.damageDealt 0
execute as @a[tag=ncmePlayerAttackEvent] run scoreboard players set @s ncmePlayerAttackEvent.damageAbsorbed 0
execute as @a[tag=ncmePlayerAttackEvent] run scoreboard players set @s ncmePlayerAttackEvent.damageResisted 0
execute as @a[tag=ncmePlayerAttackEvent] run scoreboard players set @s ncmePlayerAttackEvent.opponentSurvived 0
execute as @a[tag=ncmePlayerAttackEvent] run scoreboard players set @s ncmePlayerAttackEvent.criticalHit 0
execute as @a[tag=ncmePlayerAttackEvent] run scoreboard players set @s ncmePlayerAttackEvent.attackDamage 0
execute as @a[tag=ncmePlayerAttackEvent] run scoreboard players set @s ncmePlayerAttackEvent.baneLevel 0
execute as @a[tag=ncmePlayerAttackEvent] run scoreboard players set @s ncmePlayerAttackEvent.smiteLevel 0
execute as @a[tag=ncmePlayerAttackEvent] run scoreboard players set @s ncmePlayerAttackEvent.sharpnessLevel 0
execute as @a[tag=ncmePlayerAttackEvent] run tag @s remove ncmePlayerAttackEvent


# BatToggleSleepEvent
execute as @e[tag=ncmeBatToggleSleepEvent] run tag @s remove ncmeBatToggleSleepEvent


