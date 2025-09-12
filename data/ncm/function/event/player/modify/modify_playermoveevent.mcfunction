# Pick a random player with a fired PlayerMoveEvent with an active modification request. Mark him as the currently processed player. (awaitsModify -> 1)
scoreboard players set @a[scores={ncmePlayerMoveEvent.willModify=1},limit=1,sort=random] ncmePlayerMoveEvent.awaitsModify 1

# Summon a new ArmorStand which will work as the teleport destination entity.
execute as @a[scores={ncmePlayerMoveEvent.awaitsModify=1},limit=1] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["ncmePlayerMoveEvent.TeleportHelper"],Invisible:1b,Marker:1b,NoGravity:1b}

# ArmorStand's Position/Rotation Data = Modified Event Position/Rotation Data
execute as @e[tag=ncmePlayerMoveEvent.TeleportHelper] store result entity @s Pos[0] double 0.01 run scoreboard players get @a[scores={ncmePlayerMoveEvent.awaitsModify=1},limit=1] ncmePlayerMoveEvent.modX
execute as @e[tag=ncmePlayerMoveEvent.TeleportHelper] store result entity @s Pos[1] double 0.01 run scoreboard players get @a[scores={ncmePlayerMoveEvent.awaitsModify=1},limit=1] ncmePlayerMoveEvent.modY
execute as @e[tag=ncmePlayerMoveEvent.TeleportHelper] store result entity @s Pos[2] double 0.01 run scoreboard players get @a[scores={ncmePlayerMoveEvent.awaitsModify=1},limit=1] ncmePlayerMoveEvent.modZ
execute as @e[tag=ncmePlayerMoveEvent.TeleportHelper] store result entity @s Rotation[0] float 0.01 run scoreboard players get @a[scores={ncmePlayerMoveEvent.awaitsModify=1},limit=1] ncmePlayerMoveEvent.modYaw
execute as @e[tag=ncmePlayerMoveEvent.TeleportHelper] store result entity @s Rotation[1] float 0.01 run scoreboard players get @a[scores={ncmePlayerMoveEvent.awaitsModify=1},limit=1] ncmePlayerMoveEvent.modPitch

# Perform the teleport
execute as @e[tag=ncmePlayerMoveEvent.TeleportHelper,limit=1] at @s run teleport @a[scores={ncmePlayerMoveEvent.awaitsModify=1},limit=1] @s

# Remove ArmorStand
kill @e[tag=ncmePlayerMoveEvent.TeleportHelper]

# The modificaion will fire a new PlayerMoveEvent. Prevent this.
# TODO: Possibly remove? After all, a -> subsequent <- event modification is also a movement that must trigger an event.
execute as @a[scores={ncmePlayerMoveEvent.awaitsModify=1}] store result score @s ncmePlayerMoveEvent.toX run data get entity @s Pos[0] 100
execute as @a[scores={ncmePlayerMoveEvent.awaitsModify=1}] store result score @s ncmePlayerMoveEvent.toY run data get entity @s Pos[1] 100
execute as @a[scores={ncmePlayerMoveEvent.awaitsModify=1}] store result score @s ncmePlayerMoveEvent.toZ run data get entity @s Pos[2] 100
execute as @a[scores={ncmePlayerMoveEvent.awaitsModify=1}] store result score @s ncmePlayerMoveEvent.toYaw run data get entity @s Rotation[0] 100
execute as @a[scores={ncmePlayerMoveEvent.awaitsModify=1}] store result score @s ncmePlayerMoveEvent.toPitch run data get entity @s Rotation[1] 100

# Modification performed, remove from queue and reset the processing flag.
execute as @a[scores={ncmePlayerMoveEvent.awaitsModify=1}] run scoreboard players reset @s ncmePlayerMoveEvent.willModify
execute as @a[scores={ncmePlayerMoveEvent.awaitsModify=1}] run scoreboard players set @s ncmePlayerMoveEvent.awaitsModify 0

# If there are more players whose PlayerMoveEvents have to be Modifyd, call this function again recursively.
execute if entity @a[scores={ncmePlayerMoveEvent.willModify=1}] run function ncm:event/player/modify/modify_playermoveevent