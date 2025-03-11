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
# Description: This funciton prints the player's statistics.
# Author:      n33d4n4m3
# ...


# Statistics

$execute unless score $(name) ncmRep matches -999999999..999999999 run tellraw @a[scores={ncmOperator=2}] ["",{"text":"NCM","color":"red"},{"text":": An operator attempted to retrieve the statistics of player ","color":"gray"},{"text":"$(name)","color":"yellow"},{"text":", but none are available.","color":"gray"}]
$execute unless score $(name) ncmRep matches -999999999..999999999 run data remove storage ncm:stats name
$execute unless score $(name) ncmRep matches -999999999..999999999 run return fail

$tellraw @a[scores={ncmOperator=2}] ["",{"text":"===========================","color":"yellow"},"\n","NoCheatMinus Statistics","\n",{"text":"===========================","color":"yellow"},"\n","\n",{"text":"Player","color":"yellow"},": ",{"text":"$(name)"}]
$execute if score $(name) ncmRep > DataHolder ncmc_bs_rp_5 run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Reputation","color":"yellow"},": ","",{"score":{"name":"$(name)","objective":"ncmRep"},"color":"green"},{"text":" ✓","color":"green"}]
$execute if score $(name) ncmRep <= DataHolder ncmc_bs_rp_5 unless score $(name) ncmRep <= DataHolder ncmc_bs_rp_6 run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Reputation","color":"yellow"},": ",{"score":{"name":"$(name)","objective":"ncmRep"},"color":"gold"},{"text":" ❗OBSERVE❗","color":"gold"}]
$execute if score $(name) ncmRep <= DataHolder ncmc_bs_rp_6 run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Reputation","color":"yellow"},": ",{"score":{"name":"$(name)","objective":"ncmRep"},"color":"red"},{"text":" ❗SUSPICIOUS❗","color":"red"}]
$execute if score $(name) ncmLatencyLevelsSummedCount matches 1.. run tellraw @p ["",{"text":"Last Ping: ","color":"yellow"},{"score":{"name":"$(name)","objective":"ncmLastMinimumPing"},"color":"white"},{"text":"-","color":"white"},{"score":{"name":"$(name)","objective":"ncmLastMaximumPing"}},{"text":"ms"}]
$execute if score $(name) ncmLatencyLevelsSummedCount matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Average Ping: ","color":"yellow"},{"text":"~","color":"white"},{"score":{"name":"$(name)","objective":"ncmAveragePing"},"color":"white"},{"text":"ms (Checked ","color":"white"},{"score":{"name":"$(name)","objective":"ncmLatencyLevelsSummedCount"}},{"text":"x since last login)"}]
$execute unless score $(name) ncmLatencyLevelsSummedCount matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Last Ping: ","color":"yellow"},{"text":"No network data available yet","color":"red"}]
$execute unless score $(name) ncmLatencyLevelsSummedCount matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Average Ping: ","color":"yellow"},{"text":"No network data available yet","color":"red"}]

tellraw @a[scores={ncmOperator=2}] [""]

$execute if score $(name) ncmViolationCount matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Total violations: ","color":"yellow"},{"score":{"name":"$(name)","objective":"ncmViolationCount"},"color":"white"}]
$execute unless score $(name) ncmViolationCount matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Total violations: ","color":"yellow"},{"text":"/","color":"white"}]
$execute if score $(name) ncmAverageTimeBetweenFailsInSeconds matches 0 run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Average time between violations: ","color":"yellow"},{"score":{"name":"$(name)","objective":"ncmAverageTimeBetweenFailsInSeconds"},"color":"white"},{"text":" seconds","color":"white"}]
$execute if score $(name) ncmAverageTimeBetweenFailsInSeconds matches 1 run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Average time between violations: ","color":"yellow"},{"score":{"name":"$(name)","objective":"ncmAverageTimeBetweenFailsInSeconds"},"color":"white"},{"text":" second","color":"white"}]
$execute if score $(name) ncmAverageTimeBetweenFailsInSeconds matches 2.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Average time between violations: ","color":"yellow"},{"score":{"name":"$(name)","objective":"ncmAverageTimeBetweenFailsInSeconds"},"color":"white"},{"text":" seconds","color":"white"}]
$execute unless score $(name) ncmAverageTimeBetweenFailsInSeconds matches 0.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Average time between violations: ","color":"yellow"},{"text":"/","color":"white"}]

tellraw @a[scores={ncmOperator=2}] [""]
$tellraw @a[scores={ncmOperator=2}] {"text":"Click this text to see the player's check fails.","color":"blue","clickEvent":{"action":"run_command","value":"/data modify storage ncm:stats checkname set value $(name)"},"hoverEvent":{"action":"show_text","contents":[{"text":"/data modify storage ncm:stats checkname set value $(name)"}]}}
tellraw @a[scores={ncmOperator=2}] [""]
data remove storage ncm:stats name