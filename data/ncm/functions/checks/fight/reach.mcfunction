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
# Description:  This checks if the player has hit an entity that is out of his legitimate range.
# Fail:         This check fails if the player has hit an entity that is too far away.
# Sub checks:    /
# Author:       n33d4n4m3
# ...

# Info: The basic mechanic of this check is the conditional granting of player_hurt_entity advancements. Note gamemode dependency. Note also that attacking Giants and EnderDragons allow higher ranges.

execute if entity @s[advancements={ncm:survival_player_hurt_entity_out_of_range=true}] run scoreboard players set @s ncmFailedFRNG 1
execute if entity @s[advancements={ncm:survival_player_hurt_entity_out_of_range=true}] run tellraw @s[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Reach","color":"light_purple"},{"text":" {","color":"gray"},{"text":"0}","color":"gray"}]
execute if entity @s[advancements={ncm:survival_player_hurt_entity_out_of_range=true}] run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Reach","color":"light_purple"},{"text":" {","color":"gray"},{"text":"0}","color":"gray"}]
execute if entity @s[advancements={ncm:creative_player_hurt_entity_out_of_range=true}] run scoreboard players set @s ncmFailedFRNG 1
execute if entity @s[advancements={ncm:creative_player_hurt_entity_out_of_range=true}] run tellraw @s[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Reach","color":"light_purple"},{"text":" {","color":"gray"},{"text":"1}","color":"gray"}]
execute if entity @s[advancements={ncm:creative_player_hurt_entity_out_of_range=true}] run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Reach","color":"light_purple"},{"text":" {","color":"gray"},{"text":"1}","color":"gray"}]
execute if entity @s[advancements={ncm:adventure_player_hurt_entity_out_of_range=true}] run scoreboard players set @s ncmFailedFRNG 1
execute if entity @s[advancements={ncm:adventure_player_hurt_entity_out_of_range=true}] run tellraw @s[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Reach","color":"light_purple"},{"text":" {","color":"gray"},{"text":"2}","color":"gray"}]
execute if entity @s[advancements={ncm:adventure_player_hurt_entity_out_of_range=true}] run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Reach","color":"light_purple"},{"text":" {","color":"gray"},{"text":"2}","color":"gray"}]

execute if entity @s[advancements={ncm:survival_player_hurt_enderdragon_out_of_range=true}] run scoreboard players set @s ncmFailedFRNG 1
execute if entity @s[advancements={ncm:survival_player_hurt_enderdragon_out_of_range=true}] run tellraw @s[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Reach","color":"light_purple"},{"text":" {","color":"gray"},{"text":"0, EnderDragon}","color":"gray"}]
execute if entity @s[advancements={ncm:survival_player_hurt_enderdragon_out_of_range=true}] run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Reach","color":"light_purple"},{"text":" {","color":"gray"},{"text":"0, EnderDragon}","color":"gray"}]
execute if entity @s[advancements={ncm:creative_player_hurt_enderdragon_out_of_range=true}] run scoreboard players set @s ncmFailedFRNG 1
execute if entity @s[advancements={ncm:creative_player_hurt_enderdragon_out_of_range=true}] run tellraw @s[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Reach","color":"light_purple"},{"text":" {","color":"gray"},{"text":"1, EnderDragon}","color":"gray"}]
execute if entity @s[advancements={ncm:creative_player_hurt_enderdragon_out_of_range=true}] run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Reach","color":"light_purple"},{"text":" {","color":"gray"},{"text":"1, EnderDragon}","color":"gray"}]
execute if entity @s[advancements={ncm:adventure_player_hurt_enderdragon_out_of_range=true}] run scoreboard players set @s ncmFailedFRNG 1
execute if entity @s[advancements={ncm:adventure_player_hurt_enderdragon_out_of_range=true}] run tellraw @s[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Reach","color":"light_purple"},{"text":" {","color":"gray"},{"text":"2, EnderDragon}","color":"gray"}]
execute if entity @s[advancements={ncm:adventure_player_hurt_enderdragon_out_of_range=true}] run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Reach","color":"light_purple"},{"text":" {","color":"gray"},{"text":"2, EnderDragon}","color":"gray"}]

execute if entity @s[advancements={ncm:survival_player_hurt_giant_out_of_range=true}] run scoreboard players set @s ncmFailedFRNG 1
execute if entity @s[advancements={ncm:survival_player_hurt_giant_out_of_range=true}] run tellraw @s[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Reach","color":"light_purple"},{"text":" {","color":"gray"},{"text":"0, Giant}","color":"gray"}]
execute if entity @s[advancements={ncm:survival_player_hurt_giant_out_of_range=true}] run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Reach","color":"light_purple"},{"text":" {","color":"gray"},{"text":"0, Giant}","color":"gray"}]
execute if entity @s[advancements={ncm:creative_player_hurt_giant_out_of_range=true}] run scoreboard players set @s ncmFailedFRNG 1
execute if entity @s[advancements={ncm:creative_player_hurt_giant_out_of_range=true}] run tellraw @s[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Reach","color":"light_purple"},{"text":" {","color":"gray"},{"text":"1, Giant}","color":"gray"}]
execute if entity @s[advancements={ncm:creative_player_hurt_giant_out_of_range=true}] run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Reach","color":"light_purple"},{"text":" {","color":"gray"},{"text":"1, Giant}","color":"gray"}]
execute if entity @s[advancements={ncm:adventure_player_hurt_giant_out_of_range=true}] run scoreboard players set @s ncmFailedFRNG 1
execute if entity @s[advancements={ncm:adventure_player_hurt_giant_out_of_range=true}] run tellraw @s[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Reach","color":"light_purple"},{"text":" {","color":"gray"},{"text":"2, Giant}","color":"gray"}]
execute if entity @s[advancements={ncm:adventure_player_hurt_giant_out_of_range=true}] run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Reach","color":"light_purple"},{"text":" {","color":"gray"},{"text":"2, Giant}","color":"gray"}]

advancement revoke @s only ncm:survival_player_hurt_entity_out_of_range
advancement revoke @s only ncm:creative_player_hurt_entity_out_of_range
advancement revoke @s only ncm:adventure_player_hurt_entity_out_of_range
advancement revoke @s only ncm:survival_player_hurt_enderdragon_out_of_range
advancement revoke @s only ncm:creative_player_hurt_enderdragon_out_of_range
advancement revoke @s only ncm:adventure_player_hurt_enderdragon_out_of_range
advancement revoke @s only ncm:survival_player_hurt_giant_out_of_range
advancement revoke @s only ncm:creative_player_hurt_giant_out_of_range
advancement revoke @s only ncm:adventure_player_hurt_giant_out_of_range
