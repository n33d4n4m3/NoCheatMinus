execute unless score DataHolder ncmVEPlayerAttackEventRegistered matches 1 run scoreboard players add $ VESys.PlayerAttackEvent 1
execute unless score DataHolder ncmVEPlayerAttackEventRegistered matches 1 run scoreboard players set DataHolder ncmVEPlayerAttackEventRegistered 1

execute unless score DataHolder ncmVEPlayerMoveEventRegistered matches 1 run scoreboard players add $ VESys.PlayerMoveEvent 1
execute unless score DataHolder ncmVEPlayerMoveEventRegistered matches 1 run scoreboard players set DataHolder ncmVEPlayerMoveEventRegistered 1

execute unless score DataHolder ncmVEPlayerMovementStateTransitionEventRegistered matches 1 run scoreboard players add $ VESys.PlayerMovementStateTransitionEvent 1
execute unless score DataHolder ncmVEPlayerMovementStateTransitionEventRegistered matches 1 run scoreboard players set DataHolder ncmVEPlayerMovementStateTransitionEventRegistered 1


scoreboard players set DataHolder ncmTickReady 1