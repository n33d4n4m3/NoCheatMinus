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
# Description:  If the player casts his fishing rod, this check verifies that he has not fished himself. However, it's possible to fish yourself at any time, even for players without a cheat client. Nevertheless, this check resets self-fishers to the position where they were last time onground. Players without cheat will not notice this, but players with cheat will notice it even more.
# Fail:         This check fails if the player has hooked himself.
# Idea:         mc_dev (NoCheatPlus)
# Sub checks:    /
# Author:       n33d4n4m3
# ...

# Info: The basic mechanic of this check is the conditional granting of the "ncm:player_fished_himself" advancement.
execute unless score DataHolder ncmcm_COMMUN matches 1 run advancement revoke @s only ncm:player_fished_himself
execute unless score DataHolder ncmcm_COMMUN matches 1 run return 0
scoreboard players set @s ncmFailedCMnchsn 1
tellraw @s[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Combined","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Munchhausen","color":"light_purple"}]
tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Combined","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Munchhausen","color":"light_purple"}]
# If the player has fished himself, put him back to the position where he was onground.
function ncm:base/cancel_offgroundmovement
advancement revoke @s only ncm:player_fished_himself
