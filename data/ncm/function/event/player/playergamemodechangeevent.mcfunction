# Multi-state Event.
execute as @a run scoreboard players operation @s ncmePlayerGameModeChangeEvent.priorGameMode = @s ncmePlayerGameModeChangeEvent.newGameMode
# Using selector to determine the players current gamemode.
execute as @a[gamemode=survival] run scoreboard players set @s ncmePlayerGameModeChangeEvent.newGameMode 0
execute as @a[gamemode=creative] run scoreboard players set @s ncmePlayerGameModeChangeEvent.newGameMode 1
execute as @a[gamemode=adventure] run scoreboard players set @s ncmePlayerGameModeChangeEvent.newGameMode 2
execute as @a[gamemode=spectator] run scoreboard players set @s ncmePlayerGameModeChangeEvent.newGameMode 3
# Did the players gamemode change since last tick? Fire the event, but ignore if this is the first run. 
execute as @a unless score @s ncmePlayerGameModeChangeEvent.priorGameMode = @s ncmePlayerGameModeChangeEvent.newGameMode if score @s ncmePlayerGameModeChangeEvent.firstRunDone matches 1 run tag @s add ncmePlayerGameModeChangeEvent

# Modification default = Prior Gamemode
execute as @a[tag=ncmePlayerGameModeChangeEvent] run scoreboard players operation @s ncmePlayerGameModeChangeEvent.modGameMode = @s ncmePlayerGameModeChangeEvent.priorGameMode

# First run done.
execute as @a unless score @s ncmePlayerGameModeChangeEvent.firstRunDone matches 1 run scoreboard players set @s ncmePlayerGameModeChangeEvent.firstRunDone 1

