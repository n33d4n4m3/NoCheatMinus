# PlayerGameModeChangeEvent
execute as @a[tag=ncmePlayerGameModeChangeEvent] if score @s ncmePlayerGameModeChangeEvent.willModify matches 1 if score @s ncmePlayerGameModeChangeEvent.modGameMode matches 0 run gamemode survival @s
execute as @a[tag=ncmePlayerGameModeChangeEvent] if score @s ncmePlayerGameModeChangeEvent.willModify matches 1 if score @s ncmePlayerGameModeChangeEvent.modGameMode matches 1 run gamemode creative @s
execute as @a[tag=ncmePlayerGameModeChangeEvent] if score @s ncmePlayerGameModeChangeEvent.willModify matches 1 if score @s ncmePlayerGameModeChangeEvent.modGameMode matches 2 run gamemode adventure @s
execute as @a[tag=ncmePlayerGameModeChangeEvent] if score @s ncmePlayerGameModeChangeEvent.willModify matches 1 if score @s ncmePlayerGameModeChangeEvent.modGameMode matches 3 run gamemode spectator @s
execute as @a[tag=ncmePlayerGameModeChangeEvent] if score @s ncmePlayerGameModeChangeEvent.willModify matches 1 run scoreboard players operation @s ncmePlayerGameModeChangeEvent.newGameMode = @s ncmePlayerGameModeChangeEvent.modGameMode
execute as @a[tag=ncmePlayerGameModeChangeEvent] run scoreboard players reset @s ncmePlayerGameModeChangeEvent.willModify

# PlayerMoveEvent
execute if entity @a[scores={ncmePlayerMoveEvent.willModify=1}] run function ncm:event/player/modify/modify_playermoveevent
