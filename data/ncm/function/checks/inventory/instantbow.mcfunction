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
# Description:  This check monitors the player's arrow-shooting speed.
# Fail:         This check fails if a player shoots two arrows within too short a timeframe.
# Author:       n33d4n4m3
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.
execute as @a if score @s ncmUsedBow matches 1 if score @s ncmUsedBowTimer matches 1.. run scoreboard players set @s ncmFailedIIB 5
execute as @a if score @s ncmUsedBow matches 1 if score @s ncmUsedBowTimer matches 1.. if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"","color":"light_purple"},{"text":"","color":"light_purple"},{"text":"Inventory","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"InstantBow","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_ib_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmUsedBowTimer"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @a if score @s ncmUsedBow matches 1 if score @s ncmUsedBowTimer matches 1.. run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"","color":"light_purple"},{"text":"","color":"light_purple"},{"text":"Inventory","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"InstantBow","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_ib_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmUsedBowTimer"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @a if score @s ncmUsedBow matches 1 if score @s ncmUsedBowTimer matches 1.. run scoreboard players set @s ncmUsedBowTimer 0
execute as @a if score @s ncmUsedBow matches 1 unless score @s ncmUsedBowTimer matches 1.. run scoreboard players operation @s ncmUsedBowTimer = DataHolder ncmc_ib_1
execute as @a if score @s ncmUsedBowTimer matches 1.. run scoreboard players remove @s ncmUsedBowTimer 1
execute as @a if score @s ncmUsedBow matches 1 run scoreboard players set @s ncmUsedBow 0