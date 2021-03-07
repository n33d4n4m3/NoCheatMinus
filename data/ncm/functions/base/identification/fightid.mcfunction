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
# Description:  This function is responsible for excluding generic -not living- entity types from the FightID-system.
# Author:       n33d4n4m3
# ...
tag @e[type=minecraft:item] add noFightID
tag @e[type=minecraft:item_frame] add noFightID
tag @e[type=minecraft:area_effect_cloud] add noFightID
tag @e[type=minecraft:arrow] add noFightID
tag @e[type=minecraft:armor_stand] add noFightID
tag @e[type=minecraft:minecart] add noFightID
tag @e[type=minecraft:tnt_minecart] add noFightID
tag @e[type=minecraft:chest_minecart] add noFightID
tag @e[type=minecraft:boat] add noFightID
tag @e[type=minecraft:hopper_minecart] add noFightID
tag @e[type=minecraft:tnt] add noFightID

execute as @e[tag=!noFightID] unless score @s fightID matches 1.. run function ncm:base/identification/assignfightid
