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
# Description:  This command allows the player to configure logging.
# Usage:        /trigger ncmInput set 0/1/2
#               0 - Hide all failed checks
#               1 - Log self-failed checks
#               2 - Log all failed checks.
# Author:       n33d4n4m3
# ...

scoreboard players enable @a ncmInput

execute as @a if score @s ncmInput matches 0 run tellraw @s ["",{"text":"[TestNCM] ","color":"yellow"},{"text":"Logging disabled.","color":"white"}]
execute as @a if score @s ncmInput matches 1 run tellraw @s ["",{"text":"[TestNCM] ","color":"yellow"},{"text":"Logging enabled. (Self-failed checks)","color":"white"}]
execute as @a if score @s ncmInput matches 2 run tellraw @s ["",{"text":"[TestNCM] ","color":"yellow"},{"text":"Logging enabled. (All failed checks)","color":"white"}]
execute as @a if score @s ncmInput matches 0 run scoreboard players set @s inputR 0
execute as @a if score @s ncmInput matches 1 run scoreboard players set @s inputR 1
execute as @a if score @s ncmInput matches 2 run scoreboard players set @s inputR 2
execute as @a if score @s ncmInput matches 0 run scoreboard players set @s ncmInput -1
execute as @a if score @s ncmInput matches 1 run scoreboard players set @s ncmInput -1
execute as @a if score @s ncmInput matches 2 run scoreboard players set @s ncmInput -1
