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
# Description:  Subtick function for the replay system. Manages DataHolder
# Author:       EricristianBros
# ...

execute store success score DataHolder ncmReplaySlot1Occupied run data get storage ncm:replay slot1
execute store success score DataHolder ncmReplaySlot2Occupied run data get storage ncm:replay slot2
execute store success score DataHolder ncmReplaySlot3Occupied run data get storage ncm:replay slot3
execute store success score DataHolder ncmReplaySlot4Occupied run data get storage ncm:replay slot4
execute store success score DataHolder ncmReplaySlot5Occupied run data get storage ncm:replay slot5
execute store success score DataHolder ncmReplaySlot6Occupied run data get storage ncm:replay slot6
execute store success score DataHolder ncmReplaySlot7Occupied run data get storage ncm:replay slot7
execute store success score DataHolder ncmReplaySlot8Occupied run data get storage ncm:replay slot8
execute store success score DataHolder ncmReplaySlot9Occupied run data get storage ncm:replay slot9

scoreboard players set @s ncmReplaySlotSave 0

loot spawn ~ ~ ~ loot ncm:drop_player_head

execute unless score @s ncmReplaySlotSave matches 1.. if score DataHolder ncmReplaySlot1Occupied matches 0 run data modify storage ncm:replay slot1 set from entity @e[type=item,limit=1,sort=nearest] Item.components.minecraft:profile.name
execute unless score @s ncmReplaySlotSave matches 1.. if score DataHolder ncmReplaySlot1Occupied matches 0 run scoreboard players set @s ncmReplaySlotSave 1

execute unless score @s ncmReplaySlotSave matches 1.. if score DataHolder ncmReplaySlot2Occupied matches 0 run data modify storage ncm:replay slot2 set from entity @e[type=item,limit=1,sort=nearest] Item.components.minecraft:profile.name
execute unless score @s ncmReplaySlotSave matches 1.. if score DataHolder ncmReplaySlot2Occupied matches 0 run scoreboard players set @s ncmReplaySlotSave 2

execute unless score @s ncmReplaySlotSave matches 1.. if score DataHolder ncmReplaySlot3Occupied matches 0 run data modify storage ncm:replay slot3 set from entity @e[type=item,limit=1,sort=nearest] Item.components.minecraft:profile.name
execute unless score @s ncmReplaySlotSave matches 1.. if score DataHolder ncmReplaySlot3Occupied matches 0 run scoreboard players set @s ncmReplaySlotSave 3

execute unless score @s ncmReplaySlotSave matches 1.. if score DataHolder ncmReplaySlot4Occupied matches 0 run data modify storage ncm:replay slot4 set from entity @e[type=item,limit=1,sort=nearest] Item.components.minecraft:profile.name
execute unless score @s ncmReplaySlotSave matches 1.. if score DataHolder ncmReplaySlot4Occupied matches 0 run scoreboard players set @s ncmReplaySlotSave 4

execute unless score @s ncmReplaySlotSave matches 1.. if score DataHolder ncmReplaySlot5Occupied matches 0 run data modify storage ncm:replay slot5 set from entity @e[type=item,limit=1,sort=nearest] Item.components.minecraft:profile.name
execute unless score @s ncmReplaySlotSave matches 1.. if score DataHolder ncmReplaySlot5Occupied matches 0 run scoreboard players set @s ncmReplaySlotSave 5

execute unless score @s ncmReplaySlotSave matches 1.. if score DataHolder ncmReplaySlot6Occupied matches 0 run data modify storage ncm:replay slot6 set from entity @e[type=item,limit=1,sort=nearest] Item.components.minecraft:profile.name
execute unless score @s ncmReplaySlotSave matches 1.. if score DataHolder ncmReplaySlot6Occupied matches 0 run scoreboard players set @s ncmReplaySlotSave 6

execute unless score @s ncmReplaySlotSave matches 1.. if score DataHolder ncmReplaySlot7Occupied matches 0 run data modify storage ncm:replay slot7 set from entity @e[type=item,limit=1,sort=nearest] Item.components.minecraft:profile.name
execute unless score @s ncmReplaySlotSave matches 1.. if score DataHolder ncmReplaySlot7Occupied matches 0 run scoreboard players set @s ncmReplaySlotSave 7

execute unless score @s ncmReplaySlotSave matches 1.. if score DataHolder ncmReplaySlot8Occupied matches 0 run data modify storage ncm:replay slot8 set from entity @e[type=item,limit=1,sort=nearest] Item.components.minecraft:profile.name
execute unless score @s ncmReplaySlotSave matches 1.. if score DataHolder ncmReplaySlot8Occupied matches 0 run scoreboard players set @s ncmReplaySlotSave 8

execute unless score @s ncmReplaySlotSave matches 1.. if score DataHolder ncmReplaySlot9Occupied matches 0 run data modify storage ncm:replay slot9 set from entity @e[type=item,limit=1,sort=nearest] Item.components.minecraft:profile.name
execute unless score @s ncmReplaySlotSave matches 1.. if score DataHolder ncmReplaySlot9Occupied matches 0 run scoreboard players set @s ncmReplaySlotSave 9





kill @n[type=item]
scoreboard players set @s ncmHasSavedReplay 1
tellraw @a[scores={ncmOperator=1..}] [{"text":""},{"text":"NCM","color":"red"},{"text":": A replay clip has been recorded that may show suspicious activity of player ","color":"gray"},{"selector":"@s","color":"yellow"},{"text":". Use ","color":"gray"},{"text":"/trigger ncmReplay","color":"yellow","click_event":{"action":"run_command","command":"/trigger ncmReplay"},"hover_event":{"action":"show_text","value":[{"text":"/trigger ncmReplay"}]}},{"text":" to see available replay clips.","color":"gray"}]
scoreboard players set @s ncmReplayFlag 0