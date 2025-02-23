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
# Description:  This check monitors generic network stats of the player by counting certain network events and resetting these counters after a certain amount of time.
# Fail:         This check fails if a player exceeds a configurable network stat before it gets reset by a configurable timer.
# Subchecks:    - GameOverGUI
# Author:       n33d4n4m3
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.



# ---------------------
# Subcheck: GameOverGUI
# ---------------------


execute store result score DataHolder ncmAllowImmResp run gamerule doImmediateRespawn
scoreboard players add @a ncmGameOverScr 1
execute as @e[type=minecraft:player] unless score DataHolder ncmAllowImmResp matches 1 if score @s ncmDeaths matches 1.. if score @s ncmGameOverScr < DataHolder ncmc_ap_go_1 run scoreboard players set @s ncmFailedNETAP 9
execute as @e[type=minecraft:player] unless score DataHolder ncmAllowImmResp matches 1 if score @s ncmDeaths matches 1.. if score @s ncmGameOverScr < DataHolder ncmc_ap_go_1 if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Net","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Appropriate","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"GameOverGUI","color":"light_purple"},{"text":" {","color":"gray"},{"text":"","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_ap_go_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmGameOverScr"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @e[type=minecraft:player] unless score DataHolder ncmAllowImmResp matches 1 if score @s ncmDeaths matches 1.. if score @s ncmGameOverScr < DataHolder ncmc_ap_go_1 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Net","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Appropriate","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"GameOverGUI","color":"light_purple"},{"text":" {","color":"gray"},{"text":"","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_ap_go_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmGameOverScr"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @e[type=minecraft:player] run scoreboard players set @s ncmGameOverScr 0
execute as @e[type=minecraft:player] if score @s ncmDeaths matches 1.. run scoreboard players set @s ncmDeaths 0


# -------------------
# Subcheck: DeathTime
# -------------------
scoreboard players set @a[scores={ncmLeaveGame=1..}] ncmDeathTimeC 0
execute as @a store result score @s ncmDeathTime run data get entity @s DeathTime 1
execute as @a if score @s ncmDeathTime matches 1.. run scoreboard players add @s ncmDeathTimeC 1
execute as @a if score @s ncmDeathTime matches 0 run scoreboard players set @s ncmDeathTimeC 0
execute as @a if score @s ncmDeathTime < @s ncmDeathTimeC run scoreboard players set @s ncmFailedNETAP 9
execute as @a if score @s ncmDeathTime < @s ncmDeathTimeC if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Net","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Appropriate","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"DeathTime","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"@s","objective":"ncmDeathTime"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmDeathTimeC"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @a if score @s ncmDeathTime < @s ncmDeathTimeC run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Net","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Appropriate","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"DeathTime","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"@s","objective":"ncmDeathTime"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmDeathTimeC"},"color":"gray"},{"text":"}","color":"gray"}]
