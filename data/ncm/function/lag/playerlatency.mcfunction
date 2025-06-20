execute unless predicate ncm:is_on_ground run return fail

execute as @s unless score @s ncmTicksNeededToDecend matches 1.. run scoreboard players set @s ncmTicksNeededToDecend 0
execute as @s unless score @s ncmTicksNeededToDecend matches 1.. run tp @s ~ ~0.3 ~
execute unless score @s VE.PlayerMoveEvent.hasDescended matches 1 run scoreboard players add @s ncmTicksNeededToDecend 1

execute if predicate ncm:is_on_ground run tellraw @s {"score":{"name":"@s","objective":"ncmTicksNeededToDecend"},"color":"green"}
execute if predicate ncm:is_on_ground run scoreboard players reset @s ncmTicksNeededToDecend
execute if predicate ncm:is_on_ground run scoreboard players set @s ncmCheckPlayerLatency 0

execute as @s[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasDescended matches 1 run tellraw @s {"score":{"name":"@s","objective":"ncmTicksNeededToDecend"},"color":"green"}
execute as @s[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasDescended matches 1 run scoreboard players reset @s ncmTicksNeededToDecend
execute as @s[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasDescended matches 1 run scoreboard players set @s ncmCheckPlayerLatency 0