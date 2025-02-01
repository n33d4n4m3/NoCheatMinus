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

execute as @a if score @s ncmOperator matches 1 if score DataHolder ncmFinishedTour matches 1 run tellraw @s [{"text":""},{"text":"NCM","color":"red"},{"text":": ","color":"gray"},{"text":"You are now a NoCheatMinus operator and have access to commands with the 'ncm'-prefix. Execute","color":"gray"},{"text":" /trigger ncmHelp ","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ncmHelp"},"hoverEvent":{"action":"show_text","contents":[{"text":"/trigger ncmHelp"}]}},{"text":"to get an overview of what you can do.","color":"gray"}]
execute as @a if score @s ncmOperator matches 1 unless score DataHolder ncmFinishedTour matches 1 run tellraw @s [{"text":""},{"text":"NCM","color":"red"},{"text":": ","color":"gray"},{"text":"You are now a NoCheatMinus operator. NoCheatMinus has been successfully installed but will remain inactive until you complete the setup tour. If you have time, you can start it anytime with","color":"gray"},{"text":" /trigger ncmTour","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ncmTour"},"hoverEvent":{"action":"show_text","contents":[{"text":"/trigger ncmTour"}]}},{"text":". It only takes a few minutes.","color":"gray"}]
execute as @a if score @s ncmOperator matches 1 run scoreboard players set @s ncmOperator 2