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
# Description:  This check is responsible for checking the number of blocks placed by the player within the timeframe.
# Fail:         This check fails if the player places too many blocks within a configurable timeframe.
# Subchecks:    /
# Author:       n33d4n4m3
# ...


# TODO (Code): Add many comments, which are explaining the subroutines.

execute as @a if score @s ncmBlocksPlaced matches 1.. run scoreboard players add @s ncmBlocksPlacedC 1
execute as @a if score @s ncmBlocksPlaced >= DataHolder ncmc_ap_bp_1 run scoreboard players set @s ncmFailedBPAP 5
execute as @a if score @s ncmBlocksPlaced >= DataHolder ncmc_ap_bp_1 run tellraw @s[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"BlockPlace","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Appropriate","color":"light_purple"},{"text":"","color":"light_purple"},{"text":"","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_ap_bp_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_ap_bp_2"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmBlocksPlaced"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @a if score @s ncmBlocksPlaced >= DataHolder ncmc_ap_bp_1 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"BlockPlace","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Appropriate","color":"light_purple"},{"text":"","color":"light_purple"},{"text":"","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_ap_bp_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_ap_bp_2"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmBlocksPlaced"},"color":"gray"},{"text":"}","color":"gray"}]

execute as @a if score @s ncmBlocksPlaced >= DataHolder ncmc_ap_bp_1 run scoreboard players set @s ncmBlocksPlaced 0
execute as @a if score @s ncmBlocksPlaced >= DataHolder ncmc_ap_bp_1 run scoreboard players set @s ncmBlocksPlacedC 0
execute as @a if score @s ncmBlocksPlacedC >= DataHolder ncmc_ap_bp_2 run scoreboard players set @s ncmBlocksPlaced 0
execute as @a if score @s ncmBlocksPlacedC >= DataHolder ncmc_ap_bp_2 run scoreboard players set @s ncmBlocksPlacedC 0
