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
# Description: This funciton ensures that positive or negative behaviors affect the player's reputation.
# Author:      n33d4n4m3
# ...

# Every player gets an initial amount of reputation after joining the first time.
execute as @e[type=minecraft:player] if score @s ncmTotalTime matches ..40 run scoreboard players operation @s ncmRep = DataHolder ncmc_bs_rp_1

# Monitor/restrict/allow reputation gain.
execute as @e[type=minecraft:player] if score @s ncmAddRep matches 1.. run scoreboard players operation @s ncmRepGainTotal = @s ncmGainRepCount
execute as @e[type=minecraft:player] if score @s ncmAddRep matches 1.. run scoreboard players operation @s ncmRepGainTotal += @s ncmAddRep

execute as @e[type=minecraft:player] if score @s ncmAddRep matches 1.. run scoreboard players operation @s ncmRpGainTotal = @s ncmRep
execute as @e[type=minecraft:player] if score @s ncmAddRep matches 1.. run scoreboard players operation @s ncmRpGainTotal += @s ncmAddRep


execute as @e[type=minecraft:player] if score @s ncmAddRep matches 1.. if score @s ncmRepGainTotal <= DataHolder ncmc_bs_rp_7 if score @s ncmRpGainTotal <= DataHolder ncmc_bs_rp_3 run scoreboard players operation @s ncmRep += @s ncmAddRep
execute as @e[type=minecraft:player] if score @s ncmAddRep matches 1.. if score @s ncmRepGainTotal <= DataHolder ncmc_bs_rp_7 if score @s ncmRpGainTotal <= DataHolder ncmc_bs_rp_3 run scoreboard players operation @s ncmGainRepCount += @s ncmAddRep
scoreboard players set @a ncmAddRep 0
scoreboard players set @a ncmRepGainTotal 0
scoreboard players set @a ncmRpGainTotal 0
execute as @e[type=minecraft:player] if score @s ncmGainRepCount matches 1.. unless score @s ncmGainRepClDwn matches 1.. run scoreboard players set @s ncmGainRepClDwn 1
execute as @e[type=minecraft:player] if score @s ncmGainRepClDwn matches 1.. run scoreboard players add @s ncmGainRepClDwn 1
execute as @e[type=minecraft:player] if score @s ncmGainRepClDwn >= DataHolder ncmc_bs_rp_8 run scoreboard players set @s ncmGainRepCount 0
execute as @e[type=minecraft:player] if score @s ncmGainRepClDwn >= DataHolder ncmc_bs_rp_8 run scoreboard players set @s ncmGainRepClDwn 0

# Monitor/restrict/allow reputation loss.
execute as @e[type=minecraft:player] if score @s ncmLowerRep matches 1.. run scoreboard players operation @s ncmRepLowerTotal = @s ncmLowerRepCount
execute as @e[type=minecraft:player] if score @s ncmLowerRep matches 1.. run scoreboard players operation @s ncmRepLowerTotal += @s ncmLowerRep

execute as @e[type=minecraft:player] if score @s ncmLowerRep matches 1.. run scoreboard players operation @s ncmRpLowerTotal = @s ncmRep
execute as @e[type=minecraft:player] if score @s ncmLowerRep matches 1.. run scoreboard players operation @s ncmRpLowerTotal -= @s ncmLowerRep


execute as @e[type=minecraft:player] if score @s ncmLowerRep matches 1.. if score @s ncmRepLowerTotal <= DataHolder ncmc_bs_rp_9 if score @s ncmRpLowerTotal >= DataHolder ncmc_bs_rp_2 run scoreboard players operation @s ncmRep -= @s ncmLowerRep
execute as @e[type=minecraft:player] if score @s ncmLowerRep matches 1.. if score @s ncmRepLowerTotal <= DataHolder ncmc_bs_rp_9 if score @s ncmRpLowerTotal >= DataHolder ncmc_bs_rp_2 run scoreboard players operation @s ncmLowerRepCount += @s ncmLowerRep
scoreboard players set @a ncmLowerRep 0
scoreboard players set @a ncmRepLowerTotal 0
scoreboard players set @a ncmRpLowerTotal 0
execute as @e[type=minecraft:player] if score @s ncmLowerRepCount matches 1.. unless score @s ncmLowerRepClDwn matches 1.. run scoreboard players set @s ncmLowerRepClDwn 1
execute as @e[type=minecraft:player] if score @s ncmLowerRepClDwn matches 1.. run scoreboard players add @s ncmLowerRepClDwn 1
execute as @e[type=minecraft:player] if score @s ncmLowerRepClDwn >= DataHolder ncmc_bs_rp_10 run scoreboard players set @s ncmLowerRepCount 0
execute as @e[type=minecraft:player] if score @s ncmLowerRepClDwn >= DataHolder ncmc_bs_rp_10 run scoreboard players set @s ncmLowerRepClDwn 0


# Monitor reputation / propability level limits


execute as @e[type=minecraft:player] if score @s ncmRep > DataHolder ncmc_bs_rp_4 run scoreboard players set @s ncmPL 0
execute as @e[type=minecraft:player] if score @s ncmRep <= DataHolder ncmc_bs_rp_4 if score @s ncmRep > DataHolder ncmc_bs_rp_5 if score @s ncmRep > DataHolder ncmc_bs_rp_6 run scoreboard players set @s ncmPL 1
execute as @e[type=minecraft:player] if score @s ncmRep <= DataHolder ncmc_bs_rp_5 if score @s ncmRep > DataHolder ncmc_bs_rp_6 run scoreboard players set @s ncmPL 2
execute as @e[type=minecraft:player] if score @s ncmRep <= DataHolder ncmc_bs_rp_6 run scoreboard players set @s ncmPL 3


# Notification
