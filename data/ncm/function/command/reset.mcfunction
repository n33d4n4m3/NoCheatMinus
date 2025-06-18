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
# Description:  This command allows the operator to reset the player's stats and their reputation.
# Usage:        /trigger ncmReset
# Author:       n33d4n4m3
# ...

execute as @a if score @s ncmOperator matches 2 run scoreboard players enable @a ncmReset
execute as @a unless score @s ncmOperator matches 2 run trigger ncmReset set 0


execute as @a if score @s ncmReset matches 1.. run tellraw @s ["",{"text":"NCM","color":"red"},{"text":": ","color":"gray"},{"text":"Click this text, enter the name of the player whose statistics and reputation you want to reset, and then press Enter.","color":"red","click_event":{"action":"suggest_command","command":"/data modify storage ncm:stats reset set value "}}]
execute as @a if score @s ncmReset matches 1.. run scoreboard players set @s ncmReset 0


scoreboard players set DataHolder ncmDoReset 0

execute store success score DataHolder ncmDoReset run data get storage ncm:stats reset
execute if score DataHolder ncmDoReset matches 1 run function ncm:command/util/resetstatsandreputation with storage ncm:stats