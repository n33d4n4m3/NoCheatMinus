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


execute as @e[type=minecraft:player] run function ncm:command/report


execute if score DataHolder ncmc_bs_rp_11 matches 1.. run scoreboard players add DataHolder ncmPLNotifyC 1
execute if score DataHolder ncmc_bs_rp_11 matches 1.. if score DataHolder ncmPLNotifyC >= DataHolder ncmc_bs_rp_11 if score DataHolder ncmPLSuspectHLCT matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"NCM: ","color":"red"},{"text":"There are players with suspicious behavior online. \nClick ","color":"gray"},{"text":"here","color":"yellow","click_event":{"action":"run_command","command":"/trigger ncmReport set 1"},"hover_event":{"action":"show_text","value":["/trigger ncmReport set 1"]}},{"text":" to see the latest evaluation report.","color":"gray"}]
execute if score DataHolder ncmc_bs_rp_11 matches 1.. if score DataHolder ncmPLNotifyC >= DataHolder ncmc_bs_rp_11 if score DataHolder ncmPLSuspectHLCT matches 1.. run scoreboard players set DataHolder ncmPLNotifyC 0

execute if score DataHolder ncmc_bs_rp_11 matches 1.. if score DataHolder ncmPLNotifyC >= DataHolder ncmc_bs_rp_11 if score DataHolder ncmPLObserveT matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"NCM: ","color":"red"},{"text":"There are players with suspicious behavior online. \nClick ","color":"gray"},{"text":"here","color":"yellow","click_event":{"action":"run_command","command":"/trigger ncmReport set 1"},"hover_event":{"action":"show_text","value":["/trigger ncmReport set 1"]}},{"text":" to see the latest evaluation report.","color":"gray"}]
execute if score DataHolder ncmc_bs_rp_11 matches 1.. if score DataHolder ncmPLNotifyC >= DataHolder ncmc_bs_rp_11 if score DataHolder ncmPLObserveT matches 1.. run scoreboard players set DataHolder ncmPLNotifyC 0


execute if score DataHolder ncmc_bs_rp_11 matches 1.. if score DataHolder ncmPLNotifyC >= DataHolder ncmc_bs_rp_11 if score DataHolder ncmPLHighT matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"NCM: ","color":"red"},{"text":"There are players with suspicious behavior online. \nClick ","color":"gray"},{"text":"here","color":"yellow","click_event":{"action":"run_command","command":"/trigger ncmReport set 1"},"hover_event":{"action":"show_text","value":["/trigger ncmReport set 1"]}},{"text":" to see the latest evaluation report.","color":"gray"}]
execute if score DataHolder ncmc_bs_rp_11 matches 1.. if score DataHolder ncmPLNotifyC >= DataHolder ncmc_bs_rp_11 if score DataHolder ncmPLHighT matches 1.. run scoreboard players set DataHolder ncmPLNotifyC 0
