# ...
# Description:  This check monitors generic inventory stats of the player by counting certain inventory events and resetting these counters after a certain amount of time.
# Fail:         This check fails if a player exceeds a configurable inventory stat before it gets reset by a configurable timer.
# Subchecks:    - FastConsume
# Author:       n33d4n4m3
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.

execute as @e[type=minecraft:player,advancements={ncm:consume_item=true}] run scoreboard players add @s ncmConsume 1
execute as @e[type=minecraft:player] if score @s ncmConsume matches 1.. run scoreboard players add @s ncmConsumeC 1
execute as @e[type=minecraft:player] if score @s ncmConsume matches 1.. if score @s ncmConsumeC matches 0 run scoreboard players set @s ncmConsume 0
execute as @e[type=minecraft:player] if score @s ncmConsumeC matches 1.. run scoreboard players add @s ncmConsumeC 1
execute as @e[type=minecraft:player] if score @s ncmConsumeC >= DataHolder ncmc_ap_fc_2 run scoreboard players set @s ncmConsume 0
execute as @e[type=minecraft:player] if score @s ncmConsumeC >= DataHolder ncmc_ap_fc_2 run scoreboard players set @s ncmConsumeC 0
execute as @e[type=minecraft:player] if score @s ncmConsume > DataHolder ncmc_ap_fc_1 run tellraw @a ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateInventory: ","color":"white"},{"text":"consumed more (","color":"white"},{"score":{"name":"@s","objective":"ncmConsume"},"color":"white"},{"text":") items in ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_fc_2"},"color":"white"},{"text":" tick(s) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_fc_1"},"color":"white"},{"text":")","color":"white"}]
execute as @e[type=minecraft:player] if score @s ncmConsume > DataHolder ncmc_ap_fc_1 run scoreboard players set @s ncmConsume 0
execute as @e[type=minecraft:player,advancements={ncm:consume_item=true}] run advancement revoke @s only ncm:consume_item
