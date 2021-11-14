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

scoreboard players enable @a ncmReport

scoreboard players set DataHolder ncmPLSuspectHLCT 0
scoreboard players set DataHolder ncmPLObserveT 0
scoreboard players set DataHolder ncmPLHighT 0


execute as @e[type=minecraft:player] if score @s ncmPL matches 1 run scoreboard players add DataHolder ncmPLSuspectHLCT 1
execute as @e[type=minecraft:player] if score @s ncmPL matches 2 run scoreboard players add DataHolder ncmPLObserveT 1
execute as @e[type=minecraft:player] if score @s ncmPL matches 3 run scoreboard players add DataHolder ncmPLHighT 1


execute as @e[type=minecraft:player] if score @s ncmReport matches 1 run tellraw @s ["\n",{"text":"[TestNCM] ","color":"yellow"},{"text":"Showing the latest evaluation report.","color":"white"},"\n"]

execute as @e[type=minecraft:player] if score @s ncmReport matches 1 if score DataHolder ncmPLSuspectHLCT matches 2.. run tellraw @s ["","-> ",{"text":"There are ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmPLSuspectHLCT"},"color":"white"},{"text":" players with probability level ","color":"white"},{"text":"Suspect/HLC","color":"yellow"},{"text":" online: ","color":"white"},{"selector":"@a[scores={ncmPL=1}]","color":"gray"},"\n"]
execute as @e[type=minecraft:player] if score @s ncmReport matches 1 if score DataHolder ncmPLSuspectHLCT matches 1 run tellraw @s ["","-> ",{"text":"There is ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmPLSuspectHLCT"},"color":"white"},{"text":" player with probability level ","color":"white"},{"text":"Suspect/HLC","color":"yellow"},{"text":" online: ","color":"white"},{"selector":"@a[scores={ncmPL=1}]","color":"gray"},"\n"]
execute as @e[type=minecraft:player] if score @s ncmReport matches 1 if score DataHolder ncmPLSuspectHLCT matches 0 run tellraw @s ["","-> ",{"text":"There are no players with probability level ","color":"white"},{"text":"Suspect/HLC ","color":"yellow"},{"text":"online.","color":"white"},"\n"]
execute as @e[type=minecraft:player] if score @s ncmReport matches 1 if score DataHolder ncmPLObserveT matches 2.. run tellraw @s ["","-> ",{"text":"There are ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmPLObserveT"},"color":"white"},{"text":" players with probability level ","color":"white"},{"text":"Observe","color":"dark_aqua"},{"text":" online: ","color":"white"},{"selector":"@a[scores={ncmPL=2}]","color":"gray"},"\n"]
execute as @e[type=minecraft:player] if score @s ncmReport matches 1 if score DataHolder ncmPLObserveT matches 1 run tellraw @s ["","-> ",{"text":"There is ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmPLObserveT"},"color":"white"},{"text":" player with probability level ","color":"white"},{"text":"Observe","color":"dark_aqua"},{"text":" online: ","color":"white"},{"selector":"@a[scores={ncmPL=2}]","color":"gray"},"\n"]
execute as @e[type=minecraft:player] if score @s ncmReport matches 1 if score DataHolder ncmPLObserveT matches 0 run tellraw @s ["","-> ",{"text":"There are no players with probability level ","color":"white"},{"text":"Observe ","color":"dark_aqua"},{"text":"online.","color":"white"},"\n"]
execute as @e[type=minecraft:player] if score @s ncmReport matches 1 if score DataHolder ncmPLHighT matches 2.. run tellraw @s ["","-> ",{"text":"There are ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmPLHighT"},"color":"white"},{"text":" players with probability level ","color":"white"},{"text":"High","color":"red"},{"text":" online: ","color":"white"},{"selector":"@a[scores={ncmPL=3}]","color":"gray"},"\n"]
execute as @e[type=minecraft:player] if score @s ncmReport matches 1 if score DataHolder ncmPLHighT matches 1 run tellraw @s ["","-> ",{"text":"There is ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmPLHighT"},"color":"white"},{"text":" player with probability level ","color":"white"},{"text":"High","color":"red"},{"text":" online: ","color":"white"},{"selector":"@a[scores={ncmPL=3}]","color":"gray"},"\n"]
execute as @e[type=minecraft:player] if score @s ncmReport matches 1 if score DataHolder ncmPLHighT matches 0 run tellraw @s ["","-> ",{"text":"There are no players with probability level ","color":"white"},{"text":"High ","color":"red"},{"text":"online.","color":"white"},"\n"]
execute as @e[type=minecraft:player] if score @s ncmReport matches 1 run scoreboard players set @s ncmReport 0

execute if score DataHolder ncmc_bs_rp_11 matches 1.. run scoreboard players add DataHolder ncmPLNotifyC 1
execute if score DataHolder ncmc_bs_rp_11 matches 1.. if score DataHolder ncmPLNotifyC >= DataHolder ncmc_bs_rp_11 if score DataHolder ncmPLSuspectHLCT matches 1.. run tellraw @a ["",{"text":"[TestNCM] ","color":"yellow"},{"text":"There are players with suspicious behavior online. Click ","color":"white"},{"text":"here","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ncmReport set 1"},"hoverEvent":{"action":"show_text","contents":["/trigger ncmReport set 1"]}},{"text":" to see the latest evaluation report.","color":"white"}]
execute if score DataHolder ncmc_bs_rp_11 matches 1.. if score DataHolder ncmPLNotifyC >= DataHolder ncmc_bs_rp_11 if score DataHolder ncmPLSuspectHLCT matches 1.. run scoreboard players set DataHolder ncmPLNotifyC 0

execute if score DataHolder ncmc_bs_rp_11 matches 1.. if score DataHolder ncmPLNotifyC >= DataHolder ncmc_bs_rp_11 if score DataHolder ncmPLObserveT matches 1.. run tellraw @a ["",{"text":"[TestNCM] ","color":"yellow"},{"text":"There are players with suspicious behavior online. Click ","color":"white"},{"text":"here","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ncmReport set 1"},"hoverEvent":{"action":"show_text","contents":["/trigger ncmReport set 1"]}},{"text":" to see the latest evaluation report.","color":"white"}]
execute if score DataHolder ncmc_bs_rp_11 matches 1.. if score DataHolder ncmPLNotifyC >= DataHolder ncmc_bs_rp_11 if score DataHolder ncmPLObserveT matches 1.. run scoreboard players set DataHolder ncmPLNotifyC 0


execute if score DataHolder ncmc_bs_rp_11 matches 1.. if score DataHolder ncmPLNotifyC >= DataHolder ncmc_bs_rp_11 if score DataHolder ncmPLHighT matches 1.. run tellraw @a ["",{"text":"[TestNCM] ","color":"yellow"},{"text":"There are players with suspicious behavior online. Click ","color":"white"},{"text":"here","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ncmReport set 1"},"hoverEvent":{"action":"show_text","contents":["/trigger ncmReport set 1"]}},{"text":" to see the latest evaluation report.","color":"white"}]
execute if score DataHolder ncmc_bs_rp_11 matches 1.. if score DataHolder ncmPLNotifyC >= DataHolder ncmc_bs_rp_11 if score DataHolder ncmPLHighT matches 1.. run scoreboard players set DataHolder ncmPLNotifyC 0
