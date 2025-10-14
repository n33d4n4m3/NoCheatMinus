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
# Description:  This function spawns the replay mannequin.
# Author:       n33d4n4m3
# ...





$execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX1
$execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY1
$execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ1
$execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw1
$execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch1
tp @e[type=mannequin,team=NCMReplay] 0 0 0
kill @e[type=mannequin,team=NCMReplay]
# Glowing:1b,active_effects:[{id:"minecraft:resistence",amplifier:255,duration:999999,show_particles:0b}],
$summon mannequin ~ ~ ~ {active_effects:[{id:"minecraft:resistance",amplifier:255,duration:999999,show_particles:0b}],Team:"NCMReplay",CustomNameVisible:1b,CustomName:"$(name)",profile:"$(name)",description:"(Replay)"}
function ncm:replay/teleport_npc with storage ncm:tpdata