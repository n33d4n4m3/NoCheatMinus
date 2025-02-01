#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#
# ...
# Description:  This check monitors generic inventory stats of the player by counting certain inventory events and resetting these counters after a certain amount of time.
# Fail:         This check fails if a player exceeds a configurable inventory stat before it gets reset by a configurable timer.
# Subchecks:    - FastConsume
# Author:       n33d4n4m3
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.



# ---------------------
# Subcheck: FastConsume
# ---------------------

execute as @e[type=minecraft:player,advancements={ncm:consume_item=true}] run scoreboard players add @s ncmConsume 1
execute as @e[type=minecraft:player] if score @s ncmConsume matches 1.. run scoreboard players add @s ncmConsumeC 1
execute as @e[type=minecraft:player] if score @s ncmConsume matches 1.. if score @s ncmConsumeC matches 0 run scoreboard players set @s ncmConsume 0
execute as @e[type=minecraft:player] if score @s ncmConsumeC matches 1.. run scoreboard players add @s ncmConsumeC 1
execute as @e[type=minecraft:player] if score @s ncmConsumeC >= DataHolder ncmc_ap_fc_2 run scoreboard players set @s ncmConsume 0
execute as @e[type=minecraft:player] if score @s ncmConsumeC >= DataHolder ncmc_ap_fc_2 run scoreboard players set @s ncmConsumeC 0
execute as @e[type=minecraft:player] if score @s ncmConsume > DataHolder ncmc_ap_fc_1 run scoreboard players set @s ncmFailedINVAP 5
execute as @e[type=minecraft:player] if score @s ncmConsume > DataHolder ncmc_ap_fc_1 if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Inventory","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Appropriate","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"FastConsume","color":"light_purple"},{"text":" {","color":"gray"},{"text":"","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_ap_fc_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_ap_fc_2"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmConsume"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @e[type=minecraft:player] if score @s ncmConsume > DataHolder ncmc_ap_fc_1 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Inventory","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Appropriate","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"FastConsume","color":"light_purple"},{"text":" {","color":"gray"},{"text":"","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_ap_fc_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_ap_fc_2"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmConsume"},"color":"gray"},{"text":"}","color":"gray"}]

execute as @e[type=minecraft:player] if score @s ncmConsume > DataHolder ncmc_ap_fc_1 run scoreboard players set @s ncmConsume 0
execute as @e[type=minecraft:player,advancements={ncm:consume_item=true}] run advancement revoke @s only ncm:consume_item
