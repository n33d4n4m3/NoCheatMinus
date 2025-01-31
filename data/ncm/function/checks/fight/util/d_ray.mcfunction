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
# Description:  This file is responsible for checking if the player looks at an entity.
# Author:       n33d4n4m3
# Credits:      Cloud_Wolf (Raytracing Tutorial)
# ...



#execute as @e[dx=0,type=!minecraft:player] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run playsound minecraft:block.note_block.flute player @p
execute as @e[dx=0,type=!minecraft:player] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run scoreboard players add @a[distance=..6] ncmFDMatchCount 1
execute as @e[dx=0,type=!minecraft:player] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run return fail
execute positioned ^ ^ ^0.1 if block ~ ~ ~ air run function ncm:checks/fight/util/d_ray