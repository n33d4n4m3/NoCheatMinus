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
# Description:  This command enables the replay mode for the executing operator.
# Usage:        /trigger ncmReplay
# Author:       n33d4n4m3
# ...

execute as @a if score @s ncmOperator matches 2 run scoreboard players enable @a ncmReplay
execute as @a unless score @s ncmOperator matches 2 run trigger ncmReplay set 0


execute as @a if score @s ncmReplay matches 1.. run scoreboard players set @s ncmInReplayMode 1

execute as @a if score @s ncmInReplayMode matches 2 run tag @s add ncm.replayMode
execute as @a unless score @s ncmInReplayMode matches 2 run tag @s remove ncm.replayMode
execute as @a[tag=ncm.replayMode] as @a if score @s ncmInReplayMode matches 1 run tellraw @s [{"text":""},{"text":"NCM","color":"red"},{"text":": The operator ","color":"gray"},{"selector":"@a[tag=ncm.replayMode]","color":"yellow"},{"text":" is currently using the replay mode. Only one player can use the replay mode at a time.","color":"gray"}]
execute as @a[tag=ncm.replayMode] as @a if score @s ncmInReplayMode matches 1 run scoreboard players set @s ncmInReplayMode 0
execute as @a if score @s ncmInReplayMode matches 1 run scoreboard players set @s ncmReplayTimeInReplayMode 0
execute as @a if score @s ncmInReplayMode matches 1 run tag @s add ncm.replayMode
execute as @a if score @s ncmInReplayMode matches 1 run scoreboard players set @s ncmInReplayMode 2

execute store success score DataHolder ncmReplaySlot1Occupied run data get storage ncm:replay slot1
execute store success score DataHolder ncmReplaySlot2Occupied run data get storage ncm:replay slot2
execute store success score DataHolder ncmReplaySlot3Occupied run data get storage ncm:replay slot3
execute store success score DataHolder ncmReplaySlot4Occupied run data get storage ncm:replay slot4
execute store success score DataHolder ncmReplaySlot5Occupied run data get storage ncm:replay slot5
execute store success score DataHolder ncmReplaySlot6Occupied run data get storage ncm:replay slot6
execute store success score DataHolder ncmReplaySlot7Occupied run data get storage ncm:replay slot7
execute store success score DataHolder ncmReplaySlot8Occupied run data get storage ncm:replay slot8
execute store success score DataHolder ncmReplaySlot9Occupied run data get storage ncm:replay slot9

scoreboard players set DataHolder ncmReplaySlotsOccupied 0
execute if score DataHolder ncmReplaySlot1Occupied matches 1 run scoreboard players add DataHolder ncmReplaySlotsOccupied 1
execute if score DataHolder ncmReplaySlot2Occupied matches 1 run scoreboard players add DataHolder ncmReplaySlotsOccupied 1
execute if score DataHolder ncmReplaySlot3Occupied matches 1 run scoreboard players add DataHolder ncmReplaySlotsOccupied 1
execute if score DataHolder ncmReplaySlot4Occupied matches 1 run scoreboard players add DataHolder ncmReplaySlotsOccupied 1
execute if score DataHolder ncmReplaySlot5Occupied matches 1 run scoreboard players add DataHolder ncmReplaySlotsOccupied 1
execute if score DataHolder ncmReplaySlot6Occupied matches 1 run scoreboard players add DataHolder ncmReplaySlotsOccupied 1
execute if score DataHolder ncmReplaySlot7Occupied matches 1 run scoreboard players add DataHolder ncmReplaySlotsOccupied 1
execute if score DataHolder ncmReplaySlot8Occupied matches 1 run scoreboard players add DataHolder ncmReplaySlotsOccupied 1
execute if score DataHolder ncmReplaySlot9Occupied matches 1 run scoreboard players add DataHolder ncmReplaySlotsOccupied 1

execute as @a if score @s ncmOperator matches 1.. if score @s ncmLeaveGame matches 1.. if score DataHolder ncmReplaySlotsOccupied matches 1 run tellraw @s [{"text":""},{"text":"NCM","color":"red"},{"text":": The replay from ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmReplaySlotsOccupied"},"color":"yellow"},{"text":" player is currently available for playback under ","color":"gray"},{"text":"/trigger ncmReplay","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ncmReplay"},"hoverEvent":{"action":"show_text","contents":[{"text":"/trigger ncmReplay"}]}},{"text":".","color":"gray"}]
execute as @a if score @s ncmOperator matches 1.. if score @s ncmLeaveGame matches 1.. if score DataHolder ncmReplaySlotsOccupied matches 2.. run tellraw @s [{"text":""},{"text":"NCM","color":"red"},{"text":": Replays from ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmReplaySlotsOccupied"},"color":"yellow"},{"text":" players are currently available for playback under ","color":"gray"},{"text":"/trigger ncmReplay","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ncmReplay"},"hoverEvent":{"action":"show_text","contents":[{"text":"/trigger ncmReplay"}]}},{"text":".","color":"gray"}]


execute as @a if score @s ncmReplay matches 1.. if score @s ncmInReplayMode matches 2 unless score DataHolder ncmReplaySlot1Occupied matches 1 unless score DataHolder ncmReplaySlot2Occupied matches 1 unless score DataHolder ncmReplaySlot3Occupied matches 1 unless score DataHolder ncmReplaySlot4Occupied matches 1 unless score DataHolder ncmReplaySlot5Occupied matches 1 unless score DataHolder ncmReplaySlot6Occupied matches 1 unless score DataHolder ncmReplaySlot7Occupied matches 1 unless score DataHolder ncmReplaySlot8Occupied matches 1 unless score DataHolder ncmReplaySlot9Occupied matches 1 run tellraw @s [{"text":""},{"text":"NCM","color":"red"},{"text":": Currently, there are no replays available to watch.","color":"gray"}]
execute as @a if score @s ncmReplay matches 1.. if score @s ncmInReplayMode matches 2 unless score DataHolder ncmReplaySlot1Occupied matches 1 unless score DataHolder ncmReplaySlot2Occupied matches 1 unless score DataHolder ncmReplaySlot3Occupied matches 1 unless score DataHolder ncmReplaySlot4Occupied matches 1 unless score DataHolder ncmReplaySlot5Occupied matches 1 unless score DataHolder ncmReplaySlot6Occupied matches 1 unless score DataHolder ncmReplaySlot7Occupied matches 1 unless score DataHolder ncmReplaySlot8Occupied matches 1 unless score DataHolder ncmReplaySlot9Occupied matches 1 run scoreboard players set @s ncmInReplayMode 0
execute as @a if score @s ncmReplay matches 1.. if score @s ncmInReplayMode matches 2 unless score DataHolder ncmReplaySlot1Occupied matches 1 unless score DataHolder ncmReplaySlot2Occupied matches 1 unless score DataHolder ncmReplaySlot3Occupied matches 1 unless score DataHolder ncmReplaySlot4Occupied matches 1 unless score DataHolder ncmReplaySlot5Occupied matches 1 unless score DataHolder ncmReplaySlot6Occupied matches 1 unless score DataHolder ncmReplaySlot7Occupied matches 1 unless score DataHolder ncmReplaySlot8Occupied matches 1 unless score DataHolder ncmReplaySlot9Occupied matches 1 run scoreboard players reset @s ncmReplay


execute as @a if score @s ncmReplay matches 1.. if score @s ncmInReplayMode matches 2 run tellraw @s [{"text":""},{"text":"NCM","color":"red"},{"text":": You are now in replay mode. \nThe following clips are available:\n","color":"gray"}]




execute as @a if score @s ncmReplay matches 1.. if score @s ncmInReplayMode matches 2 if score DataHolder ncmReplaySlot1Occupied matches 1 run function ncm:replay/slots/show_slot_1 with storage ncm:replay
execute as @a if score @s ncmReplay matches 1.. if score @s ncmInReplayMode matches 2 if score DataHolder ncmReplaySlot2Occupied matches 1 run function ncm:replay/slots/show_slot_2 with storage ncm:replay
execute as @a if score @s ncmReplay matches 1.. if score @s ncmInReplayMode matches 2 if score DataHolder ncmReplaySlot3Occupied matches 1 run function ncm:replay/slots/show_slot_3 with storage ncm:replay
execute as @a if score @s ncmReplay matches 1.. if score @s ncmInReplayMode matches 2 if score DataHolder ncmReplaySlot4Occupied matches 1 run function ncm:replay/slots/show_slot_4 with storage ncm:replay
execute as @a if score @s ncmReplay matches 1.. if score @s ncmInReplayMode matches 2 if score DataHolder ncmReplaySlot5Occupied matches 1 run function ncm:replay/slots/show_slot_5 with storage ncm:replay
execute as @a if score @s ncmReplay matches 1.. if score @s ncmInReplayMode matches 2 if score DataHolder ncmReplaySlot6Occupied matches 1 run function ncm:replay/slots/show_slot_6 with storage ncm:replay
execute as @a if score @s ncmReplay matches 1.. if score @s ncmInReplayMode matches 2 if score DataHolder ncmReplaySlot7Occupied matches 1 run function ncm:replay/slots/show_slot_7 with storage ncm:replay
execute as @a if score @s ncmReplay matches 1.. if score @s ncmInReplayMode matches 2 if score DataHolder ncmReplaySlot8Occupied matches 1 run function ncm:replay/slots/show_slot_8 with storage ncm:replay
execute as @a if score @s ncmReplay matches 1.. if score @s ncmInReplayMode matches 2 if score DataHolder ncmReplaySlot9Occupied matches 1 run function ncm:replay/slots/show_slot_9 with storage ncm:replay

execute as @a if score @s ncmReplay matches 1.. if score @s ncmInReplayMode matches 2 if score DataHolder ncmReplaySlot1Occupied matches 1 if score DataHolder ncmReplaySlot2Occupied matches 1 if score DataHolder ncmReplaySlot3Occupied matches 1 if score DataHolder ncmReplaySlot4Occupied matches 1 if score DataHolder ncmReplaySlot5Occupied matches 1 if score DataHolder ncmReplaySlot6Occupied matches 1 if score DataHolder ncmReplaySlot7Occupied matches 1 if score DataHolder ncmReplaySlot8Occupied matches 1 if score DataHolder ncmReplaySlot9Occupied matches 1 run tellraw @s [{"text":""}]
execute as @a if score @s ncmReplay matches 1.. if score @s ncmInReplayMode matches 2 if score DataHolder ncmReplaySlot1Occupied matches 1 if score DataHolder ncmReplaySlot2Occupied matches 1 if score DataHolder ncmReplaySlot3Occupied matches 1 if score DataHolder ncmReplaySlot4Occupied matches 1 if score DataHolder ncmReplaySlot5Occupied matches 1 if score DataHolder ncmReplaySlot6Occupied matches 1 if score DataHolder ncmReplaySlot7Occupied matches 1 if score DataHolder ncmReplaySlot8Occupied matches 1 if score DataHolder ncmReplaySlot9Occupied matches 1 run tellraw @s [{"text":""},{"text":"NCM","color":"red"},{"text":": ","color":"gray"},{"text":"Warning! A maximum of 9 players with available replays can be displayed. However, due to technical limitations, replays that are not shown will not move up when you delete currently displayed replays.","color":"red"},{"text":"\n"},{"text":"You can run","color":"gray"},{"text":" /scoreboard objectives setdisplay sidebar ncmHasSavedReplay ","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar ncmHasSavedReplay"},"hoverEvent":{"action":"show_text","contents":[{"text":"/scoreboard objectives setdisplay sidebar ncmHasSavedReplay"}]}},{"text":"to find players with a saved replay.","color":"gray"},{"text":"\n"},{"text":"To access the replay of players not listed, make sure that you are in replay mode and execute: ","color":"gray"},{"text":"/data modify storage ncm:replay name set value PLAYERNAME","color":"yellow","clickEvent":{"action":"suggest_command","value":"/data modify storage ncm:replay name set value PLAYERNAME"},"hoverEvent":{"action":"show_text","contents":[{"text":"/data modify storage ncm:replay name set value PLAYERNAME"}]}}]

execute as @a if score @s ncmReplay matches 1.. if score @s ncmInReplayMode matches 2 run tellraw @s [{"text":""}]

execute as @a if score @s ncmReplay matches 1.. run scoreboard players set @s ncmReplay 0