# Multi-state Event.
execute as @a run scoreboard players operation @s ncmePlayerMovementStateTransitionEvent.priorMovementState = @s ncmePlayerMovementStateTransitionEvent.newMovementState

# Using currentMovementState-global to determine the players current movement state
execute as @a run scoreboard players operation @s ncmePlayerMovementStateTransitionEvent.newMovementState = @s ncmeCurrentMovementState

# Did the players movement state change since last tick? Fire the event, but ignore if this is the first run. 
execute as @a unless score @s ncmePlayerMovementStateTransitionEvent.priorMovementState = @s ncmePlayerMovementStateTransitionEvent.newMovementState if score @s ncmePlayerMovementStateTransitionEvent.firstRunDone matches 1 run tag @s add ncmePlayerMovementStateTransitionEvent

# First run done.
execute as @a unless score @s ncmePlayerMovementStateTransitionEvent.firstRunDone matches 1 run scoreboard players set @s ncmePlayerMovementStateTransitionEvent.firstRunDone 1