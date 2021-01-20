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
# Description:  This function is responsible for assigning a unique identifier to each player. Experimental state!
# Author:       n33d4n4m3
# ...

# TODO (Performance): Clean this up, this file don't need to get called every tick.
execute as @e[type=minecraft:player] unless score @s hasUUID matches 1 run scoreboard players operation @s UUID = DataHolder globalUUID
execute as @e[type=minecraft:player] unless score @s hasUUID matches 1 run scoreboard players add @s UUID 1
execute as @e[type=minecraft:player] unless score @s hasUUID matches 1 run scoreboard players add DataHolder globalUUID 1
execute as @e[type=minecraft:player] unless score @s hasUUID matches 1 run scoreboard players set @s hasUUID 1
