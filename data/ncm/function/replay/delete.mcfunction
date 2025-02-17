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
# Description:  This function handels replay clip deletion.
# Author:       n33d4n4m3
# ...


$execute if entity @a[scores={ncmReplayStarted=1}] run tellraw @a[scores={ncmOperator=1..}] [{"text":""},{"text":"NCM","color":"red"},{"text":": An operator tried to delete the replay clip of player ","color":"gray"},{"text":"$(delete)","color":"yellow"},{"text":", but an operator is watching a clip currently.","color":"gray"}]
execute if entity @a[scores={ncmReplayStarted=1}] run data remove storage ncm:replay delete
execute if entity @a[scores={ncmReplayStarted=1}] run return fail


$execute unless score $(delete) ncmHasSavedReplay matches 1 run tellraw @a[scores={ncmOperator=1..}] [{"text":""},{"text":"NCM","color":"red"},{"text":": An operator tried to delete the replay clip of player ","color":"gray"},{"text":"$(delete)","color":"yellow"},{"text":", but this player doesn't have a saved replay clip.","color":"gray"}]
$execute unless score $(delete) ncmHasSavedReplay matches 1 run data remove storage ncm:replay delete
$execute unless score $(delete) ncmHasSavedReplay matches 1 run return fail

# Delete
$scoreboard players reset $(delete) ncmHasSavedReplay
$execute if score $(delete) ncmReplaySlotSave matches 1 run data remove storage ncm:replay slot1
$execute if score $(delete) ncmReplaySlotSave matches 2 run data remove storage ncm:replay slot2
$execute if score $(delete) ncmReplaySlotSave matches 3 run data remove storage ncm:replay slot3
$execute if score $(delete) ncmReplaySlotSave matches 4 run data remove storage ncm:replay slot4
$execute if score $(delete) ncmReplaySlotSave matches 5 run data remove storage ncm:replay slot5
$execute if score $(delete) ncmReplaySlotSave matches 6 run data remove storage ncm:replay slot6
$execute if score $(delete) ncmReplaySlotSave matches 7 run data remove storage ncm:replay slot7
$execute if score $(delete) ncmReplaySlotSave matches 8 run data remove storage ncm:replay slot8
$execute if score $(delete) ncmReplaySlotSave matches 9 run data remove storage ncm:replay slot9
function ncm:replay/reset_with_storage_delete with storage ncm:replay
$tellraw @a[scores={ncmOperator=1..}] [{"text":""},{"text":"NCM","color":"red"},{"text":": An operator deleted the replay clip of player ","color":"gray"},{"text":"$(delete)","color":"yellow"},{"text":".","color":"gray"}]
data remove storage ncm:replay delete
