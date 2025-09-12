# Multi-state Event.
execute as @e run scoreboard players operation @s ncmeEntityHealthUpdateEvent.priorHealth = @s ncmeEntityHealthUpdateEvent.newHealth

# Using the Health-NBT to get the entities current health value
execute as @e store result score @s ncmeEntityHealthUpdateEvent.newHealth run data get entity @s Health 100

# Did the entities current health value change since last tick? Fire the event, but ignore if this is the first run. 
execute as @e unless score @s ncmeEntityHealthUpdateEvent.priorHealth = @s ncmeEntityHealthUpdateEvent.newHealth if score @s ncmeEntityHealthUpdateEvent.firstRunDone matches 1 run tag @s add ncmeEntityHealthUpdateEvent

# Calculate the health difference.
execute as @e[tag=ncmeEntityHealthUpdateEvent] run scoreboard players operation @s ncmeEntityHealthUpdateEvent.difference = @s ncmeEntityHealthUpdateEvent.newHealth
execute as @e[tag=ncmeEntityHealthUpdateEvent] run scoreboard players operation @s ncmeEntityHealthUpdateEvent.difference -= @s ncmeEntityHealthUpdateEvent.priorHealth

# Damage or Heal?
execute as @e[tag=ncmeEntityHealthUpdateEvent] if score @s ncmeEntityHealthUpdateEvent.newHealth > @s ncmeEntityHealthUpdateEvent.priorHealth run scoreboard players set @s ncmeEntityHealthUpdateEvent.wasPositive 1
execute as @e[tag=ncmeEntityHealthUpdateEvent] if score @s ncmeEntityHealthUpdateEvent.newHealth > @s ncmeEntityHealthUpdateEvent.priorHealth run scoreboard players set @s ncmeEntityHealthUpdateEvent.wasNegative 0
execute as @e[tag=ncmeEntityHealthUpdateEvent] if score @s ncmeEntityHealthUpdateEvent.newHealth < @s ncmeEntityHealthUpdateEvent.priorHealth run scoreboard players set @s ncmeEntityHealthUpdateEvent.wasNegative 1
execute as @e[tag=ncmeEntityHealthUpdateEvent] if score @s ncmeEntityHealthUpdateEvent.newHealth < @s ncmeEntityHealthUpdateEvent.priorHealth run scoreboard players set @s ncmeEntityHealthUpdateEvent.wasPositive 0

# Determine the damage source (only for players)
# Due to a Minecraft bug (MC-178111), querying the damage source properties does not work. Until this bug is fixed, the damageType value will always be -1.

# -1 -> There was no damage / MC-178111
#  0 -> Default (unset)
#  1 -> Explosion
#  2 -> Fire
#  3 -> Lightning
#  4 -> Magic
#  5 -> Projectile

execute as @e[tag=ncmeEntityHealthUpdateEvent] if score @s ncmeEntityHealthUpdateEvent.wasPositive matches 1 run scoreboard players set @s ncmeEntityHealthUpdateEvent.damageType -1
execute as @e[tag=ncmeEntityHealthUpdateEvent] if score @s ncmeEntityHealthUpdateEvent.wasNegative matches 1 run scoreboard players set @s ncmeEntityHealthUpdateEvent.damageType -1

execute as @e[tag=ncmeEntityHealthUpdateEvent] if predicate ncm:e_is_explosion run scoreboard players set @s ncmeEntityHealthUpdateEvent.damageType 1

execute as @e[tag=ncmeEntityHealthUpdateEvent] if predicate ncm:e_is_fire run scoreboard players set @s ncmeEntityHealthUpdateEvent.damageType 2

execute as @e[tag=ncmeEntityHealthUpdateEvent] if predicate ncm:e_is_lightning run scoreboard players set @s ncmeEntityHealthUpdateEvent.damageType 3

execute as @e[tag=ncmeEntityHealthUpdateEvent] if predicate ncm:e_is_magic run scoreboard players set @s ncmeEntityHealthUpdateEvent.damageType 4

execute as @e[tag=ncmeEntityHealthUpdateEvent] if predicate ncm:e_is_projectile run scoreboard players set @s ncmeEntityHealthUpdateEvent.damageType 5

# Determine damage bypasses
# Due to a Minecraft bug (MC-178111), querying the damage source properties does not work. Until this bug is fixed, the damageBypass value will always be -1.

# -1 -> There was no damage / MC-178111
#  0 -> No damage bypass
#  1 -> Bypassing armor
#  2 -> Bypassing magic
#  3 -> Bypassing invulnerability

execute as @e[tag=ncmeEntityHealthUpdateEvent] if score @s ncmeEntityHealthUpdateEvent.wasPositive matches 1 run scoreboard players set @s ncmeEntityHealthUpdateEvent.damageBypass -1
execute as @e[tag=ncmeEntityHealthUpdateEvent] if score @s ncmeEntityHealthUpdateEvent.wasNegative matches 1 run scoreboard players set @s ncmeEntityHealthUpdateEvent.damageBypass -1

execute as @e[tag=ncmeEntityHealthUpdateEvent] if predicate ncm:e_bypasses_armor run scoreboard players set @s ncmeEntityHealthUpdateEvent.damageBypass 1

execute as @e[tag=ncmeEntityHealthUpdateEvent] if predicate ncm:e_bypasses_invulnerability run scoreboard players set @s ncmeEntityHealthUpdateEvent.damageBypass 2

execute as @e[tag=ncmeEntityHealthUpdateEvent] if predicate ncm:e_bypasses_magic run scoreboard players set @s ncmeEntityHealthUpdateEvent.damageBypass 3

# damageResisted should be -1 if the entity got healed.
execute as @e[tag=ncmeEntityHealthUpdateEvent] if score @s ncmeEntityHealthUpdateEvent.wasPositive matches 1 run scoreboard players set @s ncmeEntityHealthUpdateEvent.damageResisted -1
# damageResisted x 10
execute as @e[tag=ncmeEntityHealthUpdateEvent] if score @s ncmeEntityHealthUpdateEvent.damageResisted matches 1.. run scoreboard players operation @s ncmeEntityHealthUpdateEvent.damageResisted *= 10 ncmeNumber

# First run done.
execute as @e unless score @s ncmeEntityHealthUpdateEvent.firstRunDone matches 1 run scoreboard players set @s ncmeEntityHealthUpdateEvent.firstRunDone 1