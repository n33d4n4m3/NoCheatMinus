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
# Description:  This command allows the player to view the available checks and their status and to enable or disable them.
# Usage:        /trigger ncmChecks set 1
# Author:       n33d4n4m3
# ...

execute if score @s ncmOperator matches 2 run scoreboard players enable @a ncmChecks
execute unless score @s ncmOperator matches 2 run trigger ncmChecks set 0

execute if score @s ncmChecks matches 2 run scoreboard players set DataHolder ncmcm_toggle_MVMSF 2
execute if score @s ncmChecks matches 3 run scoreboard players set DataHolder ncmcm_toggle_MVMSF 1

execute if score @s ncmChecks matches 6 run scoreboard players set DataHolder ncmcm_toggle_NETUP 2
execute if score @s ncmChecks matches 7 run scoreboard players set DataHolder ncmcm_toggle_NETUP 1

execute if score @s ncmChecks matches 8 run scoreboard players set DataHolder ncmcm_toggle_NETAP 2
execute if score @s ncmChecks matches 9 run scoreboard players set DataHolder ncmcm_toggle_NETAP 1

execute if score @s ncmChecks matches 10 run scoreboard players set DataHolder ncmcm_toggle_INVAP 2
execute if score @s ncmChecks matches 11 run scoreboard players set DataHolder ncmcm_toggle_INVAP 1

execute if score @s ncmChecks matches 14 run scoreboard players set DataHolder ncmcm_toggle_FRC 2
execute if score @s ncmChecks matches 15 run scoreboard players set DataHolder ncmcm_toggle_FRC 1

execute if score @s ncmChecks matches 16 run scoreboard players set DataHolder ncmcm_toggle_FCR 2
execute if score @s ncmChecks matches 17 run scoreboard players set DataHolder ncmcm_toggle_FCR 1

execute if score @s ncmChecks matches 18 run scoreboard players set DataHolder ncmcm_toggle_COMBL 2
execute if score @s ncmChecks matches 19 run scoreboard players set DataHolder ncmcm_toggle_COMBL 1

execute if score @s ncmChecks matches 20 run scoreboard players set DataHolder ncmcm_toggle_COMMUN 2
execute if score @s ncmChecks matches 21 run scoreboard players set DataHolder ncmcm_toggle_COMMUN 1

execute if score @s ncmChecks matches 24 run scoreboard players set DataHolder ncmcm_toggle_BPAP 2
execute if score @s ncmChecks matches 25 run scoreboard players set DataHolder ncmcm_toggle_BPAP 1

execute if score @s ncmChecks matches 26 run scoreboard players set DataHolder ncmcm_toggle_BIMB 2
execute if score @s ncmChecks matches 27 run scoreboard players set DataHolder ncmcm_toggle_BIMB 1

execute if score @s ncmChecks matches 28 run scoreboard players set DataHolder ncmcm_toggle_MVMTS 2
execute if score @s ncmChecks matches 29 run scoreboard players set DataHolder ncmcm_toggle_MVMTS 1

execute if score @s ncmChecks matches 30 run scoreboard players set DataHolder ncmcm_toggle_MVMNF 2
execute if score @s ncmChecks matches 31 run scoreboard players set DataHolder ncmcm_toggle_MVMNF 1

execute if score @s ncmChecks matches 32 run scoreboard players set DataHolder ncmcm_toggle_FWT 2
execute if score @s ncmChecks matches 33 run scoreboard players set DataHolder ncmcm_toggle_FWT 1

execute if score @s ncmChecks matches 34 run scoreboard players set DataHolder ncmcm_toggle_FCV 2
execute if score @s ncmChecks matches 35 run scoreboard players set DataHolder ncmcm_toggle_FCV 1

execute if score @s ncmChecks matches 36 run scoreboard players set DataHolder ncmcm_toggle_IIB 2
execute if score @s ncmChecks matches 37 run scoreboard players set DataHolder ncmcm_toggle_IIB 1

execute if score @s ncmChecks matches 38 run scoreboard players set DataHolder ncmcm_toggle_FD 2
execute if score @s ncmChecks matches 39 run scoreboard players set DataHolder ncmcm_toggle_FD 1

execute if score @s ncmChecks matches 40 run scoreboard players set DataHolder ncmcm_toggle_COMEX 2
execute if score @s ncmChecks matches 41 run scoreboard players set DataHolder ncmcm_toggle_COMEX 1

execute if score @s ncmChecks matches 2.. run function ncm:checks/checkmanager



execute if score @s ncmcm_currentPage matches -2 if score @s ncmChecks matches 1 run scoreboard players set @s ncmcm_currentPage -1


execute if score @s ncmcm_currentPage matches 1 run scoreboard players set @s ncmChecks 1
execute if score @s ncmcm_currentPage matches 1 run scoreboard players set @s ncmcm_currentPage -1
execute if score @s ncmcm_currentPage matches 2 run scoreboard players set @s ncmChecks 1
execute if score @s ncmcm_currentPage matches 2 run scoreboard players set @s ncmcm_currentPage -2

execute unless score @s ncmcm_currentPage matches -2..2 run scoreboard players set @s ncmcm_currentPage -1

execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -1 run tellraw @s ["",{"text":"\n\n\nNCM","color":"red"},": Here is a list of all available checks. Checks displayed in ",{"text":"red","color":"red"}," are currently disabled, and checks displayed in ",{"text":"green","color":"green"}," are currently enabled. Click on a check to toggle its status (enabled/disabled)\n"]
execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -1 run tellraw @s [{"text":""},{"text":"Showing page 1 / 2."},{"text":" Next > ","color":"yellow","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmcm_currentPage 2"},"hover_event":{"action":"show_text","value":[{"text":"/scoreboard players set @s ncmcm_currentPage 2"}]}}]

execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -1 run tellraw @s {"text":"  Movement","bold":true}

execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -1 if score DataHolder ncmcm_MVMSF matches 1 run tellraw @s ["","    -> ",{"text":"SurvivalFly [✓]","color":"green","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 2"}}]
execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -1 if score DataHolder ncmcm_MVMSF matches 0 run tellraw @s ["","    -> ",{"text":"SurvivalFly [X]","color":"red","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 3"}}]

execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -1 if score DataHolder ncmcm_MVMTS matches 1 run tellraw @s ["","    -> ",{"text":"TickStride [✓]","color":"green","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 28"}}]
execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -1 if score DataHolder ncmcm_MVMTS matches 0 run tellraw @s ["","    -> ",{"text":"TickStride [X]","color":"red","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 29"}}]

execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -1 if score DataHolder ncmcm_MVMNF matches 1 run tellraw @s ["","    -> ",{"text":"NoFall [✓]","color":"green","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 30"}}]
execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -1 if score DataHolder ncmcm_MVMNF matches 0 run tellraw @s ["","    -> ",{"text":"NoFall [X]","color":"red","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 31"}}]

execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -1 run tellraw @s {"text":"  Net","bold":true}

execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -1 if score DataHolder ncmcm_NETUP matches 1 run tellraw @s ["","    -> ",{"text":"UnfittingPacket [✓]","color":"green","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 6"}}]
execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -1 if score DataHolder ncmcm_NETUP matches 0 run tellraw @s ["","    -> ",{"text":"UnfittingPacket [X]","color":"red","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 7"}}]

execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -1 if score DataHolder ncmcm_NETAP matches 1 run tellraw @s ["","    -> ",{"text":"Appropriate [✓]","color":"green","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 8"}}]
execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -1 if score DataHolder ncmcm_NETAP matches 0 run tellraw @s ["","    -> ",{"text":"Appropriate [X]","color":"red","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 9"}}]

execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -1 run tellraw @s {"text":"  Inventory","bold":true}

execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -1 if score DataHolder ncmcm_INVAP matches 1 run tellraw @s ["","    -> ",{"text":"Appropriate [✓]","color":"green","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 10"}}]
execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -1 if score DataHolder ncmcm_INVAP matches 0 run tellraw @s ["","    -> ",{"text":"Appropriate [X]","color":"red","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 11"}}]

execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -1 if score DataHolder ncmcm_IIB matches 1 run tellraw @s ["","    -> ",{"text":"InstantBow [✓]","color":"green","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 36"}}]
execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -1 if score DataHolder ncmcm_IIB matches 0 run tellraw @s ["","    -> ",{"text":"InstantBow [X]","color":"red","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 37"}}]
execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -1 run tellraw @s [{"text":""},{"text":"Showing page 1 / 2."},{"text":" Next > ","color":"yellow","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmcm_currentPage 2"},"hover_event":{"action":"show_text","value":[{"text":"/scoreboard players set @s ncmcm_currentPage 2"}]}}]

execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 run tellraw @s [{"text":""},{"text":"\n\n\n\n\n\n\nShowing page 2 / 2."},{"text":" < Prev ","color":"yellow","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmcm_currentPage 1"},"hover_event":{"action":"show_text","value":[{"text":"/scoreboard players set @s ncmcm_currentPage 1"}]}}]
execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 run tellraw @s {"text":"  Fight","bold":true}

execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 if score DataHolder ncmcm_FRC matches 1 run tellraw @s ["","    -> ",{"text":"Reach [✓]","color":"green","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 14"}}]
execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 if score DataHolder ncmcm_FRC matches 0 run tellraw @s ["","    -> ",{"text":"Reach [X]","color":"red","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 15"}}]

execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 if score DataHolder ncmcm_FD matches 1 run tellraw @s ["","    -> ",{"text":"Direction [✓]","color":"green","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 38"}}]
execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 if score DataHolder ncmcm_FD matches 0 run tellraw @s ["","    -> ",{"text":"Direction [X]","color":"red","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 39"}}]

execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 if score DataHolder ncmcm_FCR matches 1 run tellraw @s ["","    -> ",{"text":"Criticals [✓]","color":"green","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 16"}}]
execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 if score DataHolder ncmcm_FCR matches 0 run tellraw @s ["","    -> ",{"text":"Criticals [X]","color":"red","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 17"}}]

execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 if score DataHolder ncmcm_FWT matches 1 run tellraw @s ["","    -> ",{"text":"WrongTurn [✓]","color":"green","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 32"}}]
execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 if score DataHolder ncmcm_FWT matches 0 run tellraw @s ["","    -> ",{"text":"WrongTurn [X]","color":"red","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 33"}}]

execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 if score DataHolder ncmcm_FCV matches 1 run tellraw @s ["","    -> ",{"text":"CompliantVelocity [✓]","color":"green","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 34"}}]
execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 if score DataHolder ncmcm_FCV matches 0 run tellraw @s ["","    -> ",{"text":"CompliantVelocity [X]","color":"red","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 35"}}]

execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 run tellraw @s {"text":"  Combined","bold":true}

execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 if score DataHolder ncmcm_COMBL matches 1 run tellraw @s ["","    -> ",{"text":"BedLeave [✓]","color":"green","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 18"}}]
execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 if score DataHolder ncmcm_COMBL matches 0 run tellraw @s ["","    -> ",{"text":"BedLeave [X]","color":"red","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 19"}}]

execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 if score DataHolder ncmcm_COMMUN matches 1 run tellraw @s ["","    -> ",{"text":"Munchhausen [✓]","color":"green","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 20"}}]
execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 if score DataHolder ncmcm_COMMUN matches 0 run tellraw @s ["","    -> ",{"text":"Munchhausen [X]","color":"red","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 21"}}]

execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 if score DataHolder ncmcm_COMEX matches 1 run tellraw @s ["","    -> ",{"text":"Exploit [✓]","color":"green","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 40"}}]
execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 if score DataHolder ncmcm_COMEX matches 0 run tellraw @s ["","    -> ",{"text":"Exploit [X]","color":"red","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 41"}}]

execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 run tellraw @s {"text":"  BlockPlace","bold":true}

execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 if score DataHolder ncmcm_BPAP matches 1 run tellraw @s ["","    -> ",{"text":"Appropriate [✓]","color":"green","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 24"}}]
execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 if score DataHolder ncmcm_BPAP matches 0 run tellraw @s ["","    -> ",{"text":"Appropriate [X]","color":"red","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 25"}}]

execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 run tellraw @s {"text":"  BlockInteract","bold":true}

execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 if score DataHolder ncmcm_BIMB matches 1 run tellraw @s ["","    -> ",{"text":"MissingBlock [✓]","color":"green","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 26"}}]
execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 if score DataHolder ncmcm_BIMB matches 0 run tellraw @s ["","    -> ",{"text":"MissingBlock [X]","color":"red","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmChecks 27"}}]



execute if score @s ncmChecks matches 1.. if score @s ncmcm_currentPage matches -2 run tellraw @s [{"text":""},{"text":"Showing page 2 / 2."},{"text":" < Prev ","color":"yellow","click_event":{"action":"run_command","command":"/scoreboard players set @s ncmcm_currentPage 1"},"hover_event":{"action":"show_text","value":[{"text":"/scoreboard players set @s ncmcm_currentPage 1"}]}}]



execute if score @s ncmChecks matches 1.. run scoreboard players set @s ncmChecks 0