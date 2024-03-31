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

execute as @a if score @s ncmOperator matches 2 run scoreboard players enable @a ncmChecks
execute as @a unless score @s ncmOperator matches 2 run trigger ncmChecks set 0

execute as @a if score @s ncmChecks matches 2 run scoreboard players set DataHolder ncmcm_toggle_MVMSF 2
execute as @a if score @s ncmChecks matches 3 run scoreboard players set DataHolder ncmcm_toggle_MVMSF 1

execute as @a if score @s ncmChecks matches 6 run scoreboard players set DataHolder ncmcm_toggle_NETUP 2
execute as @a if score @s ncmChecks matches 7 run scoreboard players set DataHolder ncmcm_toggle_NETUP 1

execute as @a if score @s ncmChecks matches 8 run scoreboard players set DataHolder ncmcm_toggle_NETAP 2
execute as @a if score @s ncmChecks matches 9 run scoreboard players set DataHolder ncmcm_toggle_NETAP 1

execute as @a if score @s ncmChecks matches 10 run scoreboard players set DataHolder ncmcm_toggle_INVAP 2
execute as @a if score @s ncmChecks matches 11 run scoreboard players set DataHolder ncmcm_toggle_INVAP 1

execute as @a if score @s ncmChecks matches 14 run scoreboard players set DataHolder ncmcm_toggle_FRC 2
execute as @a if score @s ncmChecks matches 15 run scoreboard players set DataHolder ncmcm_toggle_FRC 1

execute as @a if score @s ncmChecks matches 16 run scoreboard players set DataHolder ncmcm_toggle_FCR 2
execute as @a if score @s ncmChecks matches 17 run scoreboard players set DataHolder ncmcm_toggle_FCR 1

execute as @a if score @s ncmChecks matches 18 run scoreboard players set DataHolder ncmcm_toggle_COMBL 2
execute as @a if score @s ncmChecks matches 19 run scoreboard players set DataHolder ncmcm_toggle_COMBL 1

execute as @a if score @s ncmChecks matches 20 run scoreboard players set DataHolder ncmcm_toggle_COMMUN 2
execute as @a if score @s ncmChecks matches 21 run scoreboard players set DataHolder ncmcm_toggle_COMMUN 1

execute as @a if score @s ncmChecks matches 24 run scoreboard players set DataHolder ncmcm_toggle_BPAP 2
execute as @a if score @s ncmChecks matches 25 run scoreboard players set DataHolder ncmcm_toggle_BPAP 1

execute as @a if score @s ncmChecks matches 26 run scoreboard players set DataHolder ncmcm_toggle_BIMB 2
execute as @a if score @s ncmChecks matches 27 run scoreboard players set DataHolder ncmcm_toggle_BIMB 1

execute as @a if score @s ncmChecks matches 28 run scoreboard players set DataHolder ncmcm_toggle_MVMTS 2
execute as @a if score @s ncmChecks matches 29 run scoreboard players set DataHolder ncmcm_toggle_MVMTS 1

execute as @a if score @s ncmChecks matches 30 run scoreboard players set DataHolder ncmcm_toggle_MVMNF 2
execute as @a if score @s ncmChecks matches 31 run scoreboard players set DataHolder ncmcm_toggle_MVMNF 1

execute as @a if score @s ncmChecks matches 2.. run function ncm:checks/checkmanager




execute as @a if score @s ncmChecks matches 1.. run tellraw @s ["",{"text":"\n\nNCM","color":"red"},": Here is a list of all available checks. Checks displayed in ",{"text":"red","color":"red"}," are currently disabled, and checks displayed in ",{"text":"green","color":"green"}," are currently enabled. Click on a check to toggle its status (enabled/disabled)\n"]




execute as @a if score @s ncmChecks matches 1.. run tellraw @s {"text":"  Movement","bold":true}

execute as @a if score @s ncmChecks matches 1.. if score DataHolder ncmcm_MVMSF matches 1 run tellraw @s ["","    -> ",{"text":"SurvivalFly [✓]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 2"}}]
execute as @a if score @s ncmChecks matches 1.. if score DataHolder ncmcm_MVMSF matches 0 run tellraw @s ["","    -> ",{"text":"SurvivalFly [X]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 3"}}]

execute as @a if score @s ncmChecks matches 1.. if score DataHolder ncmcm_MVMTS matches 1 run tellraw @s ["","    -> ",{"text":"TickStride [✓]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 28"}}]
execute as @a if score @s ncmChecks matches 1.. if score DataHolder ncmcm_MVMTS matches 0 run tellraw @s ["","    -> ",{"text":"TickStride [X]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 29"}}]

execute as @a if score @s ncmChecks matches 1.. if score DataHolder ncmcm_MVMNF matches 1 run tellraw @s ["","    -> ",{"text":"NoFall [✓]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 30"}}]
execute as @a if score @s ncmChecks matches 1.. if score DataHolder ncmcm_MVMNF matches 0 run tellraw @s ["","    -> ",{"text":"NoFall [X]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 31"}}]

execute as @a if score @s ncmChecks matches 1.. run tellraw @s {"text":"  Net","bold":true}

execute as @a if score @s ncmChecks matches 1.. if score DataHolder ncmcm_NETUP matches 1 run tellraw @s ["","    -> ",{"text":"UnfittingPacket [✓]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 6"}}]
execute as @a if score @s ncmChecks matches 1.. if score DataHolder ncmcm_NETUP matches 0 run tellraw @s ["","    -> ",{"text":"UnfittingPacket [X]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 7"}}]

execute as @a if score @s ncmChecks matches 1.. if score DataHolder ncmcm_NETAP matches 1 run tellraw @s ["","    -> ",{"text":"Appropriate [✓]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 8"}}]
execute as @a if score @s ncmChecks matches 1.. if score DataHolder ncmcm_NETAP matches 0 run tellraw @s ["","    -> ",{"text":"Appropriate [X]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 9"}}]

execute as @a if score @s ncmChecks matches 1.. run tellraw @s {"text":"  Inventory","bold":true}

execute as @a if score @s ncmChecks matches 1.. if score DataHolder ncmcm_INVAP matches 1 run tellraw @s ["","    -> ",{"text":"Appropriate [✓]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 10"}}]
execute as @a if score @s ncmChecks matches 1.. if score DataHolder ncmcm_INVAP matches 0 run tellraw @s ["","    -> ",{"text":"Appropriate [X]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 11"}}]

execute as @a if score @s ncmChecks matches 1.. run tellraw @s {"text":"  Fight","bold":true}

execute as @a if score @s ncmChecks matches 1.. if score DataHolder ncmcm_FRC matches 1 run tellraw @s ["","    -> ",{"text":"Reach [✓]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 14"}}]
execute as @a if score @s ncmChecks matches 1.. if score DataHolder ncmcm_FRC matches 0 run tellraw @s ["","    -> ",{"text":"Reach [X]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 15"}}]

execute as @a if score @s ncmChecks matches 1.. if score DataHolder ncmcm_FCR matches 1 run tellraw @s ["","    -> ",{"text":"Criticals [✓]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 16"}}]
execute as @a if score @s ncmChecks matches 1.. if score DataHolder ncmcm_FCR matches 0 run tellraw @s ["","    -> ",{"text":"Criticals [X]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 17"}}]

execute as @a if score @s ncmChecks matches 1.. run tellraw @s {"text":"  Combined","bold":true}

execute as @a if score @s ncmChecks matches 1.. if score DataHolder ncmcm_COMBL matches 1 run tellraw @s ["","    -> ",{"text":"BedLeave [✓]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 18"}}]
execute as @a if score @s ncmChecks matches 1.. if score DataHolder ncmcm_COMBL matches 0 run tellraw @s ["","    -> ",{"text":"BedLeave [X]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 19"}}]

execute as @a if score @s ncmChecks matches 1.. if score DataHolder ncmcm_COMMUN matches 1 run tellraw @s ["","    -> ",{"text":"Munchhausen [✓]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 20"}}]
execute as @a if score @s ncmChecks matches 1.. if score DataHolder ncmcm_COMMUN matches 0 run tellraw @s ["","    -> ",{"text":"Munchhausen [X]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 21"}}]

execute as @a if score @s ncmChecks matches 1.. run tellraw @s {"text":"  BlockPlace","bold":true}

execute as @a if score @s ncmChecks matches 1.. if score DataHolder ncmcm_BPAP matches 1 run tellraw @s ["","    -> ",{"text":"Appropriate [✓]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 24"}}]
execute as @a if score @s ncmChecks matches 1.. if score DataHolder ncmcm_BPAP matches 0 run tellraw @s ["","    -> ",{"text":"Appropriate [X]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 25"}}]

execute as @a if score @s ncmChecks matches 1.. run tellraw @s {"text":"  BlockInteract","bold":true}

execute as @a if score @s ncmChecks matches 1.. if score DataHolder ncmcm_BIMB matches 1 run tellraw @s ["","    -> ",{"text":"MissingBlock [✓]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 26"}}]
execute as @a if score @s ncmChecks matches 1.. if score DataHolder ncmcm_BIMB matches 0 run tellraw @s ["","    -> ",{"text":"MissingBlock [X]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 27"}}]






execute as @a if score @s ncmChecks matches 1.. run scoreboard players set @s ncmChecks 0