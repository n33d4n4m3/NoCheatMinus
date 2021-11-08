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
# Description:  This function gets fired every server tick.
# Author:       n33d4n4m3
# ...

scoreboard players enable @a input

execute as @a if score @s input matches 0 run tellraw @s ["",{"text":"[TestNCM] ","color":"yellow"},{"text":"No flag messages will be displayed.","color":"white"}]
execute as @a if score @s input matches 1 run tellraw @s ["",{"text":"[TestNCM] ","color":"yellow"},{"text":"Only your flag messages will be displayed.","color":"white"}]
execute as @a if score @s input matches 2 run tellraw @s ["",{"text":"[TestNCM] ","color":"yellow"},{"text":"All flag messages will be displayed.","color":"white"}]
execute as @a if score @s input matches 0 run scoreboard players set @s inputR 0
execute as @a if score @s input matches 1 run scoreboard players set @s inputR 1
execute as @a if score @s input matches 2 run scoreboard players set @s inputR 2
execute as @a if score @s input matches 0 run scoreboard players set @s input -1
execute as @a if score @s input matches 1 run scoreboard players set @s input -1
execute as @a if score @s input matches 2 run scoreboard players set @s input -1



# Running system routines
function ncm:base/identification/uuid
function ncm:base/identification/fightid



# Running checks
function ncm:checks/fight/missingentity
function ncm:checks/movement/appropriate
function ncm:checks/movement/survivalfly
function ncm:checks/inventory/appropriate
function ncm:checks/net/unfittingpacket
function ncm:checks/net/appropriate
function ncm:checks/blockinteract/missingblock
function ncm:checks/blockplace/missingblock
function ncm:checks/blockplace/appropriate

# Running util functions
function ncm:checks/movement/util/sf_util
