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
# Description:  This file is responsible for checking if the player looks at the block he/she interacted with last.
# Author:       n33d4n4m3
# ...



execute if block ~ ~ ~ minecraft:chest run scoreboard players set @s ncmChest 0
execute if block ~ ~ ~ minecraft:ender_chest run scoreboard players set @s ncmEChest 0
execute if block ~ ~ ~ minecraft:shulker_box run scoreboard players set @s ncmBox 0
execute if block ~ ~ ~ minecraft:barrel run scoreboard players set @s ncmBarrel 0
execute if block ~ ~ ~ minecraft:dispenser run scoreboard players set @s ncmDispenser 0
execute if block ~ ~ ~ minecraft:dropper run scoreboard players set @s ncmDropper 0
execute if block ~ ~ ~ minecraft:hopper run scoreboard players set @s ncmHopper 0
execute if block ~ ~ ~ minecraft:anvil run scoreboard players set @s ncmAnvil 0
execute if block ~ ~ ~ minecraft:beacon run scoreboard players set @s ncmBeacon 0
execute if block ~ ~ ~ minecraft:blast_furnace run scoreboard players set @s ncmBlastFurn 0
execute if block ~ ~ ~ minecraft:brewing_stand run scoreboard players set @s ncmBrewSt 0
execute if block ~ ~ ~ minecraft:campfire run scoreboard players set @s ncmCampf 0
execute if block ~ ~ ~ minecraft:crafting_table run scoreboard players set @s ncmCraftingT 0
execute if block ~ ~ ~ minecraft:furnace run scoreboard players set @s ncmFurn 0
execute if block ~ ~ ~ minecraft:grindstone run scoreboard players set @s ncmGrindstone 0
execute if block ~ ~ ~ minecraft:lectern run scoreboard players set @s ncmLectern 0
execute if block ~ ~ ~ minecraft:loom run scoreboard players set @s ncmLoom 0
execute if block ~ ~ ~ minecraft:smithing_table run scoreboard players set @s ncmSmith 0
execute if block ~ ~ ~ minecraft:smoker run scoreboard players set @s ncmSmk 0
execute if block ~ ~ ~ minecraft:stonecutter run scoreboard players set @s ncmStoneC 0

scoreboard players add @s ncmBIMBRange 1
execute if entity @s[gamemode=creative] unless score @s ncmBIMBRange >= DataHolder ncmc_mb_1 if block ~ ~ ~ #minecraft:air positioned ^ ^ ^0.5 run function ncm:checks/blockinteract/util/mb_ray
execute if entity @s[gamemode=survival] unless score @s ncmBIMBRange >= DataHolder ncmc_mb_2 if block ~ ~ ~ #minecraft:air positioned ^ ^ ^0.5 run function ncm:checks/blockinteract/util/mb_ray
execute if entity @s[gamemode=adventure] unless score @s ncmBIMBRange >= DataHolder ncmc_mb_2 if block ~ ~ ~ #minecraft:air positioned ^ ^ ^0.5 run function ncm:checks/blockinteract/util/mb_ray

execute if entity @s[gamemode=creative] unless score @s ncmBIMBRange >= DataHolder ncmc_mb_1 if block ~ ~ ~ minecraft:water positioned ^ ^ ^0.5 run function ncm:checks/blockinteract/util/mb_ray
execute if entity @s[gamemode=survival] unless score @s ncmBIMBRange >= DataHolder ncmc_mb_2 if block ~ ~ ~ minecraft:water positioned ^ ^ ^0.5 run function ncm:checks/blockinteract/util/mb_ray
execute if entity @s[gamemode=adventure] unless score @s ncmBIMBRange >= DataHolder ncmc_mb_2 if block ~ ~ ~ minecraft:water positioned ^ ^ ^0.5 run function ncm:checks/blockinteract/util/mb_ray

execute if entity @s[gamemode=creative] unless score @s ncmBIMBRange >= DataHolder ncmc_mb_1 if block ~ ~ ~ minecraft:lava positioned ^ ^ ^0.5 run function ncm:checks/blockinteract/util/mb_ray
execute if entity @s[gamemode=survival] unless score @s ncmBIMBRange >= DataHolder ncmc_mb_2 if block ~ ~ ~ minecraft:lava positioned ^ ^ ^0.5 run function ncm:checks/blockinteract/util/mb_ray
execute if entity @s[gamemode=adventure] unless score @s ncmBIMBRange >= DataHolder ncmc_mb_2 if block ~ ~ ~ minecraft:lava positioned ^ ^ ^0.5 run function ncm:checks/blockinteract/util/mb_ray
