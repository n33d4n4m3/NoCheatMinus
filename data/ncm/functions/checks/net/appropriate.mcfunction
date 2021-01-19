# ...
# Description:  This check monitors generic network stats of the player by counting certain network events and resetting these counters after a certain amount of time.
# Fail:         This check fails if a player exceeds a configurable network stat before it gets reset by a configurable timer.
# Subchecks:    - GameOverGUI
# Author:       n33d4n4m3
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.



# ---------------------
# Subcheck: GameOverGUI
# ---------------------
scoreboard players add @a ncmGameOverScr 1
execute as @e[type=minecraft:player] if score @s ncmDeaths matches 1.. if score @s ncmGameOverScr < DataHolder ncmc_ap_go_1 run tellraw @a ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"AppropriateNetwork: ","color":"white"},{"text":"respawned faster (","color":"white"},{"score":{"name":"@s","objective":"ncmGameOverScr"},"color":"white"},{"text":" tick(s)) than appropriate (","color":"white"},{"score":{"name":"DataHolder","objective":"ncmc_ap_go_1"},"color":"white"},{"text":" tick(s))","color":"white"}]
execute as @e[type=minecraft:player] run scoreboard players set @s ncmGameOverScr 0
execute as @e[type=minecraft:player] if score @s ncmDeaths matches 1.. run scoreboard players set @s ncmDeaths 0
