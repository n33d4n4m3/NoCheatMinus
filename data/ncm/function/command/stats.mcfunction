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
# Description:  This command allows the operator to retrieve the player's stats.
# Usage:        /trigger ncmStats
# Author:       n33d4n4m3
# ...

execute as @a if score @s ncmOperator matches 2 run scoreboard players enable @a ncmStats
execute as @a unless score @s ncmOperator matches 2 run trigger ncmStats set 0


execute as @a if score @s ncmStats matches 1.. run tellraw @s ["",{"text":"NCM","color":"red"},{"text":": ","color":"gray"},{"text":"Click this text, enter the name of the player whose statistics you want to view, and then press Enter.","color":"yellow","click_event":{"action":"suggest_command","command":"/data modify storage ncm:stats name set value "}}]
execute as @a if score @s ncmStats matches 1.. run scoreboard players set @s ncmStats 0






execute as @a unless score @s ncmAverageLatencyLevel matches 0.. run scoreboard players set @s ncmAverageLatencyLevel 0
execute as @a unless score @s ncmLatencyLevelsSummedCount matches 0.. run scoreboard players set @s ncmLatencyLevelsSummedCount 0

execute as @a unless score @s ncmAverageTimeBetweenFails matches 0.. run scoreboard players set @s ncmAverageTimeBetweenFails 0
execute as @a unless score @s ncmTimeBetweenFailsSummedCount matches 0.. run scoreboard players set @s ncmTimeBetweenFailsSummedCount 0

execute as @a unless score @s ncmAveragePing matches 0.. run scoreboard players set @s ncmAveragePing 25

execute as @a if score @s ncmLeaveGame matches 1.. run scoreboard players set @s ncmLatencyLevelsSummedCount 0
execute as @a if score @s ncmLeaveGame matches 1.. run scoreboard players set @s ncmAverageLatencyLevel 0
execute as @a if score @s ncmLeaveGame matches 1.. run scoreboard players set @s ncmAveragePing 25





scoreboard players set DataHolder ncmPrintStats 0
scoreboard players set DataHolder ncmPrintCheckStats 0

execute store success score DataHolder ncmPrintStats run data get storage ncm:stats name
execute store success score DataHolder ncmPrintCheckStats run data get storage ncm:stats checkname
execute if score DataHolder ncmPrintStats matches 1 run function ncm:command/util/printstatistics with storage ncm:stats
execute if score DataHolder ncmPrintCheckStats matches 1 run function ncm:command/util/printcheckstatistics with storage ncm:stats