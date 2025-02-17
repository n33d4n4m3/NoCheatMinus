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
# Description:  This function checks if the requested replay of a player exists.
# Author:       n33d4n4m3
# ...


$execute if score $(name) ncmHasSavedReplay matches 1 run scoreboard players set @s ncmReplayNameCheckPassed 1
$execute unless score $(name) ncmHasSavedReplay matches 1 run scoreboard players set @s ncmReplayNameCheckPassed 0


$execute if score @s ncmReplayNameCheckPassed matches 0 run tellraw @s [{"text":""},{"text":"NCM","color":"red"},{"text":": There is currently no recorded replay clip available for the player ","color":"gray"},{"text":"$(name)","color":"yellow"},{"text":". You are no longer in replay mode.","color":"gray"}]
execute if score @s ncmReplayNameCheckPassed matches 0 run data remove storage ncm:replay name
execute if score @s ncmReplayNameCheckPassed matches 0 run tag @s remove ncm.replayMode
execute if score @s ncmReplayNameCheckPassed matches 0 run scoreboard players set @s ncmInReplayMode 0
