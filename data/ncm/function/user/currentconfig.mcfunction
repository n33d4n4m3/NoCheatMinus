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
# Description:  This function gets called by the NoCheatMinus-Loadup-function. The user can save his favorite configs into infinite slots, which can be accessed from the game.
# Author:       n33d4n4m3
# ...

# CurrentConfig Slot 1
execute as @e[type=minecraft:player] if score DataHolder ncmCC matches 1 run function ncm:user/configs/default
# CurrentConfig Slot 2
execute as @e[type=minecraft:player] if score DataHolder ncmCC matches 2 run function ncm:user/configs/default
# CurrentConfig Slot 3
execute as @e[type=minecraft:player] if score DataHolder ncmCC matches 3 run function ncm:user/configs/default
# CurrentConfig Slot 4
execute as @e[type=minecraft:player] if score DataHolder ncmCC matches 4 run function ncm:user/configs/default
# CurrentConfig Slot 5
execute as @e[type=minecraft:player] if score DataHolder ncmCC matches 5 run function ncm:user/configs/default
# CurrentConfig Slot 6
execute as @e[type=minecraft:player] if score DataHolder ncmCC matches 6 run function ncm:user/configs/default
# CurrentConfig Slot 7
execute as @e[type=minecraft:player] if score DataHolder ncmCC matches 7 run function ncm:user/configs/default
# CurrentConfig Slot 8
execute as @e[type=minecraft:player] if score DataHolder ncmCC matches 8 run function ncm:user/configs/default
# CurrentConfig Slot 9
execute as @e[type=minecraft:player] if score DataHolder ncmCC matches 9 run function ncm:user/configs/default
# ...

tellraw @a[scores={ncmOperator=2}] [{"text":""},{"text":"NCM","color":"red"},{"text":": ","color":"gray"},{"text":"Loaded ","color":"gray"},{"text":"configuration file in slot ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmCC"},"color":"yellow"},{"text":".","color":"gray"}]