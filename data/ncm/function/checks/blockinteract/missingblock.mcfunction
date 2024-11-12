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
# Description:  This check is responsible for evaluating if the block, the player interacted with, is reachable and in the line of sight. (Raytracing)
# Fail:         This check fails if the player interacts with a predefined block out of range or out of sight.
# Subchecks:    /
# Author:       n33d4n4m3
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.

execute as @a at @s anchored eyes if score @s ncmChest matches 1.. run function ncm:checks/blockinteract/util/mb_ray
execute as @a at @s anchored eyes if score @s ncmChest matches 1.. run scoreboard players set @s ncmBIMBFire 1

execute as @a at @s anchored eyes if score @s ncmEChest matches 1.. run function ncm:checks/blockinteract/util/mb_ray
execute as @a at @s anchored eyes if score @s ncmEChest matches 1.. run scoreboard players set @s ncmBIMBFire 1

execute as @a at @s anchored eyes if score @s ncmBox matches 1.. run function ncm:checks/blockinteract/util/mb_ray
execute as @a at @s anchored eyes if score @s ncmBox matches 1.. run scoreboard players set @s ncmBIMBFire 1

execute as @a at @s anchored eyes if score @s ncmBarrel matches 1.. run function ncm:checks/blockinteract/util/mb_ray
execute as @a at @s anchored eyes if score @s ncmBarrel matches 1.. run scoreboard players set @s ncmBIMBFire 1

execute as @a at @s anchored eyes if score @s ncmDispenser matches 1.. run function ncm:checks/blockinteract/util/mb_ray
execute as @a at @s anchored eyes if score @s ncmDispenser matches 1.. run scoreboard players set @s ncmBIMBFire 1

execute as @a at @s anchored eyes if score @s ncmDropper matches 1.. run function ncm:checks/blockinteract/util/mb_ray
execute as @a at @s anchored eyes if score @s ncmDropper matches 1.. run scoreboard players set @s ncmBIMBFire 1

execute as @a at @s anchored eyes if score @s ncmHopper matches 1.. run function ncm:checks/blockinteract/util/mb_ray
execute as @a at @s anchored eyes if score @s ncmHopper matches 1.. run scoreboard players set @s ncmBIMBFire 1

execute as @a at @s anchored eyes if score @s ncmAnvil matches 1.. run function ncm:checks/blockinteract/util/mb_ray
execute as @a at @s anchored eyes if score @s ncmAnvil matches 1.. run scoreboard players set @s ncmBIMBFire 1

execute as @a at @s anchored eyes if score @s ncmBeacon matches 1.. run function ncm:checks/blockinteract/util/mb_ray
execute as @a at @s anchored eyes if score @s ncmBeacon matches 1.. run scoreboard players set @s ncmBIMBFire 1

execute as @a at @s anchored eyes if score @s ncmBlastFurn matches 1.. run function ncm:checks/blockinteract/util/mb_ray
execute as @a at @s anchored eyes if score @s ncmBlastFurn matches 1.. run scoreboard players set @s ncmBIMBFire 1

execute as @a at @s anchored eyes if score @s ncmBrewSt matches 1.. run function ncm:checks/blockinteract/util/mb_ray
execute as @a at @s anchored eyes if score @s ncmBrewSt matches 1.. run scoreboard players set @s ncmBIMBFire 1

execute as @a at @s anchored eyes if score @s ncmCampf matches 1.. run function ncm:checks/blockinteract/util/mb_ray
execute as @a at @s anchored eyes if score @s ncmCampf matches 1.. run scoreboard players set @s ncmBIMBFire 1

execute as @a at @s anchored eyes if score @s ncmCraftingT matches 1.. run function ncm:checks/blockinteract/util/mb_ray
execute as @a at @s anchored eyes if score @s ncmCraftingT matches 1.. run scoreboard players set @s ncmBIMBFire 1

execute as @a at @s anchored eyes if score @s ncmFurn matches 1.. run function ncm:checks/blockinteract/util/mb_ray
execute as @a at @s anchored eyes if score @s ncmFurn matches 1.. run scoreboard players set @s ncmBIMBFire 1

execute as @a at @s anchored eyes if score @s ncmGrindstone matches 1.. run function ncm:checks/blockinteract/util/mb_ray
execute as @a at @s anchored eyes if score @s ncmGrindstone matches 1.. run scoreboard players set @s ncmBIMBFire 1

execute as @a at @s anchored eyes if score @s ncmLectern matches 1.. run function ncm:checks/blockinteract/util/mb_ray
execute as @a at @s anchored eyes if score @s ncmLectern matches 1.. run scoreboard players set @s ncmBIMBFire 1

execute as @a at @s anchored eyes if score @s ncmLoom matches 1.. run function ncm:checks/blockinteract/util/mb_ray
execute as @a at @s anchored eyes if score @s ncmLoom matches 1.. run scoreboard players set @s ncmBIMBFire 1

execute as @a at @s anchored eyes if score @s ncmSmith matches 1.. run function ncm:checks/blockinteract/util/mb_ray
execute as @a at @s anchored eyes if score @s ncmSmith matches 1.. run scoreboard players set @s ncmBIMBFire 1

execute as @a at @s anchored eyes if score @s ncmSmk matches 1.. run function ncm:checks/blockinteract/util/mb_ray
execute as @a at @s anchored eyes if score @s ncmSmk matches 1.. run scoreboard players set @s ncmBIMBFire 1

execute as @a at @s anchored eyes if score @s ncmStoneC matches 1.. run function ncm:checks/blockinteract/util/mb_ray
execute as @a at @s anchored eyes if score @s ncmStoneC matches 1.. run scoreboard players set @s ncmBIMBFire 1


execute as @a if score @s ncmBIMBFire matches 1 store result score @s ncmBIMBThisF_x run data get entity @s Pos[0]
execute as @a if score @s ncmBIMBFire matches 1 store result score @s ncmBIMBThisF_y run data get entity @s Pos[1]
execute as @a if score @s ncmBIMBFire matches 1 store result score @s ncmBIMBThisF_z run data get entity @s Pos[2]

execute as @a if score @s ncmBIMBFire matches 1 if score @s ncmBIMBLastF_x = @s ncmBIMBThisF_x run scoreboard players add @s ncmBIMBxyzEqual 1
execute as @a if score @s ncmBIMBFire matches 1 if score @s ncmBIMBLastF_y = @s ncmBIMBThisF_y run scoreboard players add @s ncmBIMBxyzEqual 1
execute as @a if score @s ncmBIMBFire matches 1 if score @s ncmBIMBLastF_y = @s ncmBIMBThisF_y run scoreboard players add @s ncmBIMBxyzEqual 1


execute as @a if score @s ncmBIMBFire matches 1 unless score @s ncmBIMBxyzEqual matches 3 run scoreboard players set @s ncmFailedBIMB 5
execute as @a if score @s ncmBIMBFire matches 1 unless score @s ncmBIMBxyzEqual matches 3 if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"BlockInteract","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"MissingBlock","color":"light_purple"},{"text":" {...}","color":"gray"}]
execute as @a if score @s ncmBIMBFire matches 1 unless score @s ncmBIMBxyzEqual matches 3 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"BlockInteract","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"MissingBlock","color":"light_purple"},{"text":" {...}","color":"gray"}]






execute as @a if score @s ncmBIMBFire matches 1 unless score @s ncmBIMBxyzEqual matches 3 store result score @s ncmBIMBLastF_x run data get entity @s Pos[0]
execute as @a if score @s ncmBIMBFire matches 1 unless score @s ncmBIMBxyzEqual matches 3 store result score @s ncmBIMBLastF_y run data get entity @s Pos[1]
execute as @a if score @s ncmBIMBFire matches 1 unless score @s ncmBIMBxyzEqual matches 3 store result score @s ncmBIMBLastF_z run data get entity @s Pos[2]
execute as @a if score @s ncmBIMBFire matches 1 run scoreboard players set @s ncmBIMBxyzEqual 0
scoreboard players set @a ncmBIMBFire 0
scoreboard players set @a ncmBIMBRange 0


scoreboard players set @a ncmChest 0
scoreboard players set @a ncmEChest 0
scoreboard players set @a ncmBox 0
scoreboard players set @a ncmBarrel 0
scoreboard players set @a ncmDispenser 0
scoreboard players set @a ncmDropper 0
scoreboard players set @a ncmHopper 0
scoreboard players set @a ncmAnvil 0
scoreboard players set @a ncmBeacon 0
scoreboard players set @a ncmBlastFurn 0
scoreboard players set @a ncmBrewSt 0
scoreboard players set @a ncmCampf 0
scoreboard players set @a ncmCraftingT 0
scoreboard players set @a ncmFurn 0
scoreboard players set @a ncmGrindstone 0
scoreboard players set @a ncmLectern 0
scoreboard players set @a ncmLoom 0
scoreboard players set @a ncmSmith 0
scoreboard players set @a ncmSmk 0
scoreboard players set @a ncmStoneC 0
