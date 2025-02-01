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
# Description:  This command allows the player to see the latest evaluation report.
# Usage:        /trigger ncmReport set 1
# Author:       n33d4n4m3
# ...

execute as @a if score @s ncmOperator matches 2 run scoreboard players enable @a ncmReport
execute as @a unless score @s ncmOperator matches 2 run trigger ncmReport set 0

scoreboard players set DataHolder ncmPLSuspectHLCT 0
scoreboard players set DataHolder ncmPLObserveT 0
scoreboard players set DataHolder ncmPLHighT 0


execute as @e[type=minecraft:player] if score @s ncmPL matches 1 run scoreboard players add DataHolder ncmPLSuspectHLCT 1
execute as @e[type=minecraft:player] if score @s ncmPL matches 2 run scoreboard players add DataHolder ncmPLObserveT 1
execute as @e[type=minecraft:player] if score @s ncmPL matches 3 run scoreboard players add DataHolder ncmPLHighT 1


execute as @e[type=minecraft:player] if score @s ncmReport matches 1 run tellraw @s ["",{"text":"===========================","color":"yellow"},"\n","NoCheatMinus Evaluation Report","\n",{"text":"===========================","color":"yellow"},"\n"]
execute as @e[type=minecraft:player] if score @s ncmReport matches 1 if score DataHolder ncmPLObserveT matches 0 if score @s ncmReport matches 1 if score DataHolder ncmPLHighT matches 0 run tellraw @s ["",{"text":"✓ There are currently no players online who need monitoring or have shown particularly negative behavior.","color":"green"}]

execute as @e[type=minecraft:player] if score @s ncmReport matches 1 if score DataHolder ncmPLObserveT matches 1 run tellraw @s ["",{"text":" ❗ Player ","color":"gold"},{"selector":"@a[scores={ncmPL=2}]"},{"text":" is currently online and has raised an initial suspicion. NoCheatMinus has detected some potentially unusual behavior that might suggest cheating, but this is only a preliminary finding. To investigate further, you should teleport to them, observe their actions carefully, and watch for any suspicious activity. Be sure to activate detailed logging (Verbose) for this player to receive alerts if any suspicious behavior is detected.","color":"gold"}]
execute as @e[type=minecraft:player] if score @s ncmReport matches 1 if score DataHolder ncmPLObserveT matches 2.. run tellraw @s ["",{"text":" ❗ There are players online who have raised initial suspicion. NoCheatMinus has detected some potentially unusual behavior that might suggest cheating, but this is only a preliminary finding. To investigate further, you should teleport to them, observe their actions carefully, and watch for any suspicious activity. Be sure to activate detailed logging (Verbose) for these players to receive alerts if any suspicious behavior is detected.","color":"gold"}]
execute as @e[type=minecraft:player] if score @s ncmReport matches 1 if score DataHolder ncmPLObserveT matches 2.. run tellraw @s ["",{"text":"The players involved are: ","color":"gold"},{"selector":"@a[scores={ncmPL=2}]"}]

execute as @e[type=minecraft:player] if score @s ncmReport matches 1 if score DataHolder ncmPLHighT matches 1 run tellraw @s ["",{"text":" ❗ Player ","color":"red"},{"selector":"@a[scores={ncmPL=3}]"},{"text":" is currently online and is suspected of cheating or exploiting game issues. NoCheatMinus has repeatedly marked their behavior as highly suspicious. However, this should not lead to an immediate ban. To investigate further, you should teleport to them, observe their actions carefully, and watch for any suspicious activity. Be sure to activate detailed logging (Verbose) for this player to receive alerts if any suspicious behavior is detected.","color":"red"}]
execute as @e[type=minecraft:player] if score @s ncmReport matches 1 if score DataHolder ncmPLHighT matches 2.. run tellraw @s ["",{"text":" ❗ There are players online who are suspected of cheating or exploiting game issues. NoCheatMinus has repeatedly marked their behavior as highly suspicious. However, this should not lead to an immediate ban. To investigate further, you should teleport to them, observe their actions carefully, and watch for any suspicious activity. Be sure to activate detailed logging (Verbose) for these players to receive alerts if any suspicious behavior is detected.","color":"red"}]
execute as @e[type=minecraft:player] if score @s ncmReport matches 1 if score DataHolder ncmPLHighT matches 2.. run tellraw @s ["",{"text":"The players involved are: ","color":"red"},{"selector":"@a[scores={ncmPL=3}]"}]

execute as @e[type=minecraft:player] if score @s ncmReport matches 1 if score DataHolder ncmPLHighT matches 1.. unless score DataHolder ncmPLObserveT matches 1.. run tellraw @s ["",{"text":"Click ","color":"white"},{"text":"here","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set @a[scores={ncmPL=2..}] ncmVerbose 1"},"hoverEvent":{"action":"show_text","contents":["/scoreboard players set @a[scores={ncmPL=2..}] ncmVerbose 1"]}}," to enable verbose logging for all players marked for monitoring and those considered highly suspicious.","\n","Make sure that you have input level 1 enabled. Otherwise you won't receive verbose logs. Click ",{"text":"here","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ncmInput set 1"},"hoverEvent":{"action":"show_text","contents":["/trigger ncmInput set 1"]}}," to enable input level 1."]
execute as @e[type=minecraft:player] if score @s ncmReport matches 1 if score DataHolder ncmPLObserveT matches 1.. unless score DataHolder ncmPLHighT matches 1.. run tellraw @s ["",{"text":"Click ","color":"white"},{"text":"here","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set @a[scores={ncmPL=2..}] ncmVerbose 1"},"hoverEvent":{"action":"show_text","contents":["/scoreboard players set @a[scores={ncmPL=2..}] ncmVerbose 1"]}}," to enable verbose logging for all players marked for monitoring and those considered highly suspicious.","\n","Make sure that you have input level 1 enabled. Otherwise you won't receive verbose logs. Click ",{"text":"here","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ncmInput set 1"},"hoverEvent":{"action":"show_text","contents":["/trigger ncmInput set 1"]}}," to enable input level 1."]
execute as @e[type=minecraft:player] if score @s ncmReport matches 1 if score DataHolder ncmPLObserveT matches 1.. if score DataHolder ncmPLHighT matches 1.. run tellraw @s ["",{"text":"Click ","color":"white"},{"text":"here","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set @a[scores={ncmPL=2..}] ncmVerbose 1"},"hoverEvent":{"action":"show_text","contents":["/scoreboard players set @a[scores={ncmPL=2..}] ncmVerbose 1"]}}," to enable verbose logging for all players marked for monitoring and those considered highly suspicious.","\n","Make sure that you have input level 1 enabled. Otherwise you won't receive verbose logs. Click ",{"text":"here","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ncmInput set 1"},"hoverEvent":{"action":"show_text","contents":["/trigger ncmInput set 1"]}}," to enable input level 1."]







execute as @e[type=minecraft:player] if score @s ncmReport matches 1 run scoreboard players set @s ncmReport 0

execute if score DataHolder ncmc_bs_rp_11 matches 1.. run scoreboard players add DataHolder ncmPLNotifyC 1
execute if score DataHolder ncmc_bs_rp_11 matches 1.. if score DataHolder ncmPLNotifyC >= DataHolder ncmc_bs_rp_11 if score DataHolder ncmPLSuspectHLCT matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"NCM: ","color":"red"},{"text":"There are players with suspicious behavior online. \nClick ","color":"gray"},{"text":"here","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ncmReport set 1"},"hoverEvent":{"action":"show_text","contents":["/trigger ncmReport set 1"]}},{"text":" to see the latest evaluation report.","color":"gray"}]
execute if score DataHolder ncmc_bs_rp_11 matches 1.. if score DataHolder ncmPLNotifyC >= DataHolder ncmc_bs_rp_11 if score DataHolder ncmPLSuspectHLCT matches 1.. run scoreboard players set DataHolder ncmPLNotifyC 0

execute if score DataHolder ncmc_bs_rp_11 matches 1.. if score DataHolder ncmPLNotifyC >= DataHolder ncmc_bs_rp_11 if score DataHolder ncmPLObserveT matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"NCM: ","color":"red"},{"text":"There are players with suspicious behavior online. \nClick ","color":"gray"},{"text":"here","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ncmReport set 1"},"hoverEvent":{"action":"show_text","contents":["/trigger ncmReport set 1"]}},{"text":" to see the latest evaluation report.","color":"gray"}]
execute if score DataHolder ncmc_bs_rp_11 matches 1.. if score DataHolder ncmPLNotifyC >= DataHolder ncmc_bs_rp_11 if score DataHolder ncmPLObserveT matches 1.. run scoreboard players set DataHolder ncmPLNotifyC 0


execute if score DataHolder ncmc_bs_rp_11 matches 1.. if score DataHolder ncmPLNotifyC >= DataHolder ncmc_bs_rp_11 if score DataHolder ncmPLHighT matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"NCM: ","color":"red"},{"text":"There are players with suspicious behavior online. \nClick ","color":"gray"},{"text":"here","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ncmReport set 1"},"hoverEvent":{"action":"show_text","contents":["/trigger ncmReport set 1"]}},{"text":" to see the latest evaluation report.","color":"gray"}]
execute if score DataHolder ncmc_bs_rp_11 matches 1.. if score DataHolder ncmPLNotifyC >= DataHolder ncmc_bs_rp_11 if score DataHolder ncmPLHighT matches 1.. run scoreboard players set DataHolder ncmPLNotifyC 0
