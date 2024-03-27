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
# For:      This listener waits for movement-related events, collects data and fires the associated functions. (TODO: Replace this with a VE event)
# Fires:    /
# Author:   n33d4n4m3
# ...

# Determine the last location where the player was onground.
execute as @a if data entity @s SleepingX run scoreboard players set @s ncmPlayerIsInBed 1


execute as @a[nbt={OnGround:1b}] at @s store result score @s ncmLastXOnGrd run data get entity @s Pos[0]
execute as @a[nbt={OnGround:1b}] at @s store result score @s ncmLastYOnGrd run data get entity @s Pos[1]
execute as @a[nbt={OnGround:1b}] at @s store result score @s ncmLastZOnGrd run data get entity @s Pos[2]
execute as @a[nbt={OnGround:1b}] at @s store result score @s ncmLastRotYOnGrd run data get entity @s Rotation[0]
execute as @a[nbt={OnGround:1b}] at @s store result score @s ncmLastRotXOnGrd run data get entity @s Rotation[1]
