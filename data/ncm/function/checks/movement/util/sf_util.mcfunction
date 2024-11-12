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
# Description:   This function is an util for the Movement.SurvivalFly check.
# Author:        n33d4n4m3
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.

execute as @e[type=minecraft:player] if score @s ncmPlayerY < @s ncmLastPlayerY run scoreboard players set @s ncmDecent 1
execute as @e[type=minecraft:player] if score @s ncmPlayerY = @s ncmLastPlayerY run scoreboard players set @s ncmMaintain 1
execute as @e[type=minecraft:player] if score @s ncmPlayerY > @s ncmLastPlayerY run scoreboard players set @s ncmClimb 1


scoreboard players set @a ncmDecent 0
