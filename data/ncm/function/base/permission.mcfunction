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
# Description:  This function manages the permission groups of NoCheatMinus-commands.
# Author:       n33d4n4m3
# ...

execute as @a if score @s ncmOperator matches 1 run tellraw @s ["",{"text":"NCM","color":"red"},{"text":": You are now a NoCheatMinus operator and have access to commands with the 'ncm'-prefix. Execute ","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 2"}},{"text":"/trigger ncmHelp","clickEvent":{"action":"run_command","value":"/trigger ncmHelp"},"hoverEvent":{"action":"show_text","contents":["/trigger ncmHelp"]}}," to get an overview of what you can do."]
execute as @a if score @s ncmOperator matches 1 run trigger ncmInput set 2
execute as @a if score @s ncmOperator matches 1 run scoreboard players set @s ncmOperator 2


