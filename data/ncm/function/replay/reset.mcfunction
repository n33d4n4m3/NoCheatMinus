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
# Description:  Function for resetting replay-related scores mostly after playback.
# Author:       n33d4n4m3
# ...



scoreboard players reset @s ncmInReplayMode


execute if score @s ncmReplayStarted matches 1 run bossbar remove ncm:replay
execute if score @s ncmReplayStarted matches 1 run title @s title [{"text":""}]
execute if score @s ncmReplayStarted matches 1 run title @s subtitle [{"text":""}]
execute if score @s ncmReplayStarted matches 1 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get @s ncmReplayXBeforeStart
execute if score @s ncmReplayStarted matches 1 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get @s ncmReplayYBeforeStart
execute if score @s ncmReplayStarted matches 1 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get @s ncmReplayZBeforeStart
execute if score @s ncmReplayStarted matches 1 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get @s ncmReplayYawBeforeStart
execute if score @s ncmReplayStarted matches 1 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get @s ncmReplayPitchBeforeStart
execute if score @s ncmReplayStarted matches 1 run function ncm:replay/teleport with storage ncm:tpdata


execute if score @s ncmReplayStarted matches 1 if score @s ncmReplayGamemodeBeforeStart matches 0 run gamemode survival
execute if score @s ncmReplayStarted matches 1 if score @s ncmReplayGamemodeBeforeStart matches 1 run gamemode creative
execute if score @s ncmReplayStarted matches 1 if score @s ncmReplayGamemodeBeforeStart matches 2 run gamemode adventure
execute if score @s ncmReplayStarted matches 1 if score @s ncmReplayGamemodeBeforeStart matches 3 run gamemode spectator



scoreboard players reset @s ncmReplayTick
scoreboard players reset @s ncmReplayState
scoreboard players reset @s ncmFirstRunFinished
scoreboard players set @s ncmReplayAfterFlagTick 0
scoreboard players reset @s ncmReplayCounter
scoreboard players reset @s ncmReplayNameCheckPassed


execute if score @s ncmReplayStarted matches 1 if score @s ncmLeaveGame matches 1.. run tellraw @s [{"text":""},{"text":"NCM","color":"red"},{"text":": Watching the replay clip was interrupted because you left the game. You are no longer in replay mode, but the replay is still available.","color":"gray"}]
execute if score @s ncmReplayStarted matches 1 if score @s ncmDeaths matches 1.. run tellraw @s [{"text":""},{"text":"NCM","color":"red"},{"text":": Watching the replay clip was interrupted because you died. You are no longer in replay mode, but the replay is still available.","color":"gray"}]

execute unless score @s ncmHasSavedReplay matches 1 run function ncm:replay/reset_with_selector

#execute unless entity @a[scores={ncmReplayStarted=1}] run data remove storage ncm:replay name
#execute unless entity @a[scores={ncmReplayStarted=1}] run say [Debug] Deleted storage name!