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
# Description:  This function is a sub-function of "ncm:load".
# Author:   n33d4n4m3
# ...

# Check for VanillaEvents installation and compatability, register events
scoreboard objectives add ncmVEPlayerAttackEventRegistered dummy
scoreboard objectives add ncmVEPlayerMoveEventRegistered dummy
scoreboard objectives add ncmVEPlayerMovementStateTransitionEventRegistered dummy
scoreboard objectives add ncmVEPlayerGameModeChangeEventRegistered dummy
scoreboard objectives add ncmRequiredVEBuild dummy
scoreboard objectives add ncmTickReady dummy
scoreboard objectives add VESys.Build dummy
scoreboard players set DataHolder ncmRequiredVEBuild 30
execute if score $ VESys.Build matches 1.. if score $ VESys.Build >= DataHolder ncmRequiredVEBuild run function ncm:base/registerevents

execute if score $ VESys.Build matches 1.. if score $ VESys.Build < DataHolder ncmRequiredVEBuild run tellraw @a ["",{"text":"NCM","color":"red"},": The installation/update has been aborted. You currently have VanillaEvents ",{"text":"Build ","color":"yellow"},{"score":{"name":"$","objective":"VESys.Build"},"color":"yellow"}," installed, while NoCheatMinus requires VanillaEvents ",{"text":"Build ","color":"yellow"},{"score":{"name":"DataHolder","objective":"ncmRequiredVEBuild"},"color":"yellow"}," (or higher) to function properly. Please download the latest build of the VanillaEvents Datapack ",{"text":"here","color":"yellow","click_event":{"action":"open_url","url":"https://github.com/n33d4n4m3/VanillaEvents"},"hover_event":{"action":"show_text","value":["https://github.com/n33d4n4m3/VanillaEvents"]}},", replace the outdated one and run ",{"text":"/reload","click_event":{"action":"suggest_command","command":"/reload"},"hover_event":{"action":"show_text","value":["/reload"]}},"."]
execute if score $ VESys.Build matches 1.. if score $ VESys.Build < DataHolder ncmRequiredVEBuild run return run scoreboard players set DataHolder ncmTickReady 0

execute unless score $ VESys.Build matches 1.. run tellraw @a ["",{"text":"NCM","color":"red"},": The installation/update has been aborted. NoCheatMinus requires VanillaEvents to function properly. Please download the latest build of the VanillaEvents Datapack ",{"text":"here","color":"yellow","click_event":{"action":"open_url","url":"https://github.com/n33d4n4m3/VanillaEvents"},"hover_event":{"action":"show_text","value":["https://github.com/n33d4n4m3/VanillaEvents"]}},", move it in the /datapacks folder and run ",{"text":"/reload","click_event":{"action":"suggest_command","command":"/reload"},"hover_event":{"action":"show_text","value":["/reload"]}},"."]
execute unless score $ VESys.Build matches 1.. run return run scoreboard players set DataHolder ncmTickReady 0

schedule function ncm:user/currentconfig 5s
function ncm:base/install