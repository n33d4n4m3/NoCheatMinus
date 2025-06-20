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
# Description:  This command allows the player to configure logging.
# Usage:        /trigger ncmInput set 0/1/2
#               0 - Log no failed checks
#               1 - Log failed checks of verbose-mode players
#               2 - Log all failed checks
# Author:       n33d4n4m3
# ...

execute if score @s ncmOperator matches 2 run scoreboard players enable @s ncmInput
execute if score @s ncmOperator matches 1 run scoreboard players set @s ncmInput 2

execute if score @s ncmInput matches 0 run tellraw @s ["",{"text":"NCM","color":"red"},{"text":": Disabled check fail notifications.","color":"gray"}]
execute if score @s ncmInput matches 1 run tellraw @s ["",{"text":"NCM","color":"red"},{"text":": You will now receive notifications about failed checks from players with active verbose mode. Use ","color":"gray"},{"text":"/scoreboard players set PLAYERNAME ncmVerbose 1 ","color":"yellow"},{"text":"to enable the verbose mode for a player.","color":"gray"}]
execute if score @s ncmInput matches 2 run tellraw @s ["",{"text":"NCM","color":"red"},{"text":": Enabled notifications for check fails of all players.","color":"gray"}]
execute if score @s ncmInput matches 0 run scoreboard players set @s ncmInputR 0
execute if score @s ncmInput matches 1 run scoreboard players set @s ncmInputR 1
execute if score @s ncmInput matches 2 run scoreboard players set @s ncmInputR 2
execute if score @s ncmInput matches 0 run scoreboard players set @s ncmInput -1
execute if score @s ncmInput matches 1 run scoreboard players set @s ncmInput -1
execute if score @s ncmInput matches 2 run scoreboard players set @s ncmInput -1
