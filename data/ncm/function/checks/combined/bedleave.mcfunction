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
# Description:  This checks if the player sends BedLeave packets without being in a bed first. The small teleport after leaving a bed can be used by players with a cheat client for flying or speeding.
# Fail:         This check fails if the player sends a BedLeave packet even though he is not near a bed.
# Idea:         asofold (NoCheatPlus)
# Sub checks:    /
# Author:       n33d4n4m3
# ...

execute as @a at @s if block ~ ~ ~ #minecraft:beds unless score @s ncmIsBedNearby matches 10.. run scoreboard players add @s ncmIsBedNearby 1
execute as @a unless data entity @s SleepingX unless score @s ncmIsBedNearby matches 1.. if score @s ncmPlayerIsInBed matches 1 run scoreboard players set @s ncmFailedCBedLv 1
execute as @a unless data entity @s SleepingX unless score @s ncmIsBedNearby matches 1.. if score @s ncmPlayerIsInBed matches 1 run tellraw @s[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Combined","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"BedLeave","color":"light_purple"}]
execute as @a unless data entity @s SleepingX unless score @s ncmIsBedNearby matches 1.. if score @s ncmPlayerIsInBed matches 1 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Combined","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"BedLeave","color":"light_purple"}]
execute as @a unless data entity @s SleepingX unless score @s ncmIsBedNearby matches 1.. if score @s ncmPlayerIsInBed matches 1 run function ncm:base/cancel_offgroundmovement
execute as @a at @s unless block ~ ~ ~ #minecraft:beds unless score @s ncmIsBedNearby matches ..0 run scoreboard players remove @s ncmIsBedNearby 1
