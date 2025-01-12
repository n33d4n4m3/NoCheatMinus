execute as @s unless score @s ncmTicksNeededToDecend matches 1.. run scoreboard players set @s ncmTicksNeededToDecend 0
execute as @s unless score @s ncmTicksNeededToDecend matches 1.. run tp @s ~ ~0.3 ~



execute as @s[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasDescended matches 1 run scoreboard players operation @s ncmTicksNeededToDecend -= $2 ncmCalc
execute as @s[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasDescended matches 1 if score @s ncmLastLatencyLevel = @s ncmTicksNeededToDecend run scoreboard players add @s ncmTimesLatencyLevelMaintained 1
execute as @s[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasDescended matches 1 unless score @s ncmLastLatencyLevel = @s ncmTicksNeededToDecend run scoreboard players set @s ncmTimesLatencyLevelMaintained 0
execute as @s[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasDescended matches 1 run scoreboard players operation @s ncmLastLatencyLevel = @s ncmTicksNeededToDecend
execute as @s[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasDescended matches 1 if score @s ncmLastLatencyLevel matches 21.. run scoreboard players set @s ncmLastLatencyLevel 20
execute as @s[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasDescended matches 1 run scoreboard players operation @s ncmTicksNeededToDecend *= $50 ncmCalc
execute as @s[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasDescended matches 1 run scoreboard players operation @s ncmLastMinimumPing = @s ncmTicksNeededToDecend
execute as @s[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasDescended matches 1 run scoreboard players operation @s ncmLastMaximumPing = @s ncmLastMinimumPing
execute as @s[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasDescended matches 1 run scoreboard players operation @s ncmLastMaximumPing += $50 ncmCalc


execute unless score @s ncmTimesLatencyLevelMaintained matches 1.. if score @s ncmCheckPlayerLatency matches 1 run execute store result score @s ncmTicksUntilNextLatencyCheck run random value 2000..4000
execute if score @s ncmTimesLatencyLevelMaintained matches 1 if score @s ncmCheckPlayerLatency matches 1 run execute store result score @s ncmTicksUntilNextLatencyCheck run random value 4000..6000
execute if score @s ncmTimesLatencyLevelMaintained matches 2 if score @s ncmCheckPlayerLatency matches 1 run execute store result score @s ncmTicksUntilNextLatencyCheck run random value 6000..8000
execute if score @s ncmTimesLatencyLevelMaintained matches 3.. if score @s ncmCheckPlayerLatency matches 1 run execute store result score @s ncmTicksUntilNextLatencyCheck run random value 8000..10000  



execute as @s[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasDescended matches 1 run scoreboard players reset @s ncmTicksNeededToDecend
execute as @s[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasDescended matches 1 run scoreboard players set @s ncmCheckPlayerLatency 0




execute if score @s ncmCheckPlayerLatency matches 1 run scoreboard players add @s ncmTicksNeededToDecend 1


