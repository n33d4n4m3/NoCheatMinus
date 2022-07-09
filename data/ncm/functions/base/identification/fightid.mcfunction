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
# Description:  This function is responsible for excluding generic -not living- entity types from the ncmFightID-system.
# Author:       n33d4n4m3
# ...
tag @e[type=minecraft:item] add noncmFightID
tag @e[type=minecraft:item_frame] add noncmFightID
tag @e[type=minecraft:area_effect_cloud] add noncmFightID
tag @e[type=minecraft:arrow] add noncmFightID
tag @e[type=minecraft:armor_stand] add noncmFightID
tag @e[type=minecraft:minecart] add noncmFightID
tag @e[type=minecraft:tnt_minecart] add noncmFightID
tag @e[type=minecraft:chest_minecart] add noncmFightID
tag @e[type=minecraft:boat] add noncmFightID
tag @e[type=minecraft:hopper_minecart] add noncmFightID
tag @e[type=minecraft:tnt] add noncmFightID

execute as @e[tag=!noncmFightID] unless score @s ncmFightID matches 1.. run function ncm:base/identification/assignfightid
