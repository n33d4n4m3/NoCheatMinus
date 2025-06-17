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
# Description:  This command allows the operator to see available commands.
# Usage:        /trigger ncmHelp
# Author:       n33d4n4m3
# ...

execute if score @s ncmOperator matches 2 run scoreboard players enable @a ncmHelp
execute unless score @s ncmOperator matches 2 run trigger ncmHelp set 0


execute if score @s ncmHelp matches 1.. run tellraw @s [{"text":""},{"text":"NCM","color":"red"},{"text":": The following commands are available:","color":"gray"},{"text":"\n"},{"text":"/trigger ncmInput set 0/1/2","color":"yellow"},{"text":" -> Determines whether you want to be notified about failed checks from no players (0), only verbose-mode players (1), or all players (2)","color":"gray"},{"text":"\n"},{"text":"/trigger ncmReport","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ncmReport"},"hoverEvent":{"action":"show_text","contents":[{"text":"/trigger ncmReport"}]}},{"text":" -> Shows the latest evaluation report","color":"gray"},{"text":"\n"},{"text":"/trigger ncmChecks","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ncmChecks"},"hoverEvent":{"action":"show_text","contents":[{"text":"/trigger ncmChecks"}]}},{"text":" -> Allows you to toggle checks","color":"gray"},{"text":"\n^ Press T to view the full help ^\n","color":"red"},{"text":"/trigger ncmReplay","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ncmReplay"},"hoverEvent":{"action":"show_text","contents":[{"text":"/trigger ncmReplay"}]}},{"text":" -> Watch and manage replays","color":"gray"},{"text":"\n"},{"text":"/trigger ncmTour","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ncmTour"},"hoverEvent":{"action":"show_text","contents":[{"text":"/trigger ncmTour"}]}},{"text":" -> Starts the setup tour (again)","color":"gray"},{"text":"\n"},{"text":"/trigger ncmHelp","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ncmHelp"},"hoverEvent":{"action":"show_text","contents":[{"text":"/trigger ncmHelp"}]}},{"text":" -> Shows this help","color":"gray"},{"text":"\n"},{"text":"/trigger ncmStats","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ncmStats"},"hoverEvent":{"action":"show_text","contents":[{"text":"/trigger ncmStats"}]}},{"text":" -> Retrieve stats of a player","color":"gray"},{"text":"\n"},{"text":"/trigger ncmReset","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ncmReset"},"hoverEvent":{"action":"show_text","contents":[{"text":"/trigger ncmReset"}]}},{"text":" -> Resets stats and reputation of a player","color":"gray"},{"text":"\n"},{"text":"/scoreboard players set PLAYERNAME ncmVerbose 0/1","color":"dark_aqua"},{"text":" -> Enables (1) or disables (0) the verbose mode of a player, make sure you have the verbose-input mode ","color":"gray"},{"text":"/trigger ncmInput set 1 ","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ncmInput set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"/trigger ncmInput set 1"}]}},{"text":"enabled.","color":"gray"}]
execute if score @s ncmHelp matches 1.. run scoreboard players set @s ncmHelp 0