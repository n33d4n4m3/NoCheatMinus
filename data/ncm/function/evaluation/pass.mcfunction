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
# Description:  This function ensures that good behavior affects the player's reputation.
# Author:       n33d4n4m3
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.

# Regenerate the cofingured amount of reputation
execute as @e[type=minecraft:player] if score DataHolder ncmc_bs_ps_2 matches 1.. if score DataHolder ncmc_bs_ps_2 matches 1.. if score @s ncmRepRegCounter >= DataHolder ncmc_bs_ps_2 run scoreboard players operation @s ncmRepRegTotal = @s ncmRep
execute as @e[type=minecraft:player] if score DataHolder ncmc_bs_ps_2 matches 1.. if score DataHolder ncmc_bs_ps_2 matches 1.. if score @s ncmRepRegCounter >= DataHolder ncmc_bs_ps_2 run scoreboard players operation @s ncmRepRegTotal += DataHolder ncmc_bs_ps_1
execute as @e[type=minecraft:player] if score DataHolder ncmc_bs_ps_2 matches 1.. if score DataHolder ncmc_bs_ps_2 matches 1.. if score @s ncmRepRegCounter >= DataHolder ncmc_bs_ps_2 if score @s ncmRepRegTotal <= DataHolder ncmc_bs_rp_1 run scoreboard players operation @s ncmRep += DataHolder ncmc_bs_ps_1
execute as @e[type=minecraft:player] if score DataHolder ncmc_bs_ps_2 matches 1.. if score DataHolder ncmc_bs_ps_2 matches 1.. if score @s ncmRepRegCounter >= DataHolder ncmc_bs_ps_2 if score @s ncmRepRegTotal <= DataHolder ncmc_bs_rp_1 run scoreboard players set @s ncmRepRegCounter 0
scoreboard players set @a ncmRepRegTotal 0
