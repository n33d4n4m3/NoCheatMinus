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
# For:      This listener waits for movement-related events, collects data and fires the associated functions. (TODO: Replace this with a VE event)
# Fires:    /
# Author:   n33d4n4m3
# ...

# Determine the last location where the player was onground.
execute as @a if data entity @s sleeping_pos run scoreboard players set @s ncmPlayerIsInBed 1

execute as @e[type=minecraft:player] run scoreboard players set @s ncmAirAround 1
execute as @e[type=minecraft:player] at @s unless block ~ ~ ~ #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~ ~1 ~ #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~ ~ ~1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~ ~1 ~1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~ ~-1 ~ #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~ ~ ~-1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~ ~-1 ~-1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~ ~-1 ~1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~ ~1 ~-1 #air run scoreboard players set @s ncmAirAround 0

execute as @e[type=minecraft:player] at @s unless block ~1 ~1 ~ #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~1 ~ ~1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~1 ~1 ~1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~1 ~-1 ~ #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~1 ~ ~-1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~1 ~-1 ~-1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~1 ~-1 ~1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~1 ~1 ~-1 #air run scoreboard players set @s ncmAirAround 0

execute as @e[type=minecraft:player] at @s unless block ~-1 ~1 ~ #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~-1 ~ ~1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~-1 ~1 ~1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~-1 ~-1 ~ #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~-1 ~ ~-1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~-1 ~-1 ~-1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~-1 ~-1 ~1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~-1 ~1 ~-1 #air run scoreboard players set @s ncmAirAround 0

execute as @e[type=minecraft:player] at @s unless block ~ ~0.1 ~ #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~ ~ ~1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~ ~0.1 ~1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~ ~-0.1 ~ #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~ ~ ~-1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~ ~-0.1 ~-1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~ ~-0.1 ~1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~ ~0.1 ~-1 #air run scoreboard players set @s ncmAirAround 0

execute as @e[type=minecraft:player] at @s unless block ~1 ~0.1 ~ #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~1 ~ ~1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~1 ~0.1 ~1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~1 ~-0.1 ~ #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~1 ~ ~-1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~1 ~-0.1 ~-1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~1 ~-0.1 ~1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~1 ~0.1 ~-1 #air run scoreboard players set @s ncmAirAround 0

execute as @e[type=minecraft:player] at @s unless block ~-1 ~0.1 ~ #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~-1 ~ ~1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~-1 ~0.1 ~1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~-1 ~-0.1 ~ #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~-1 ~ ~-0.1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~-1 ~-0.1 ~-1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~-1 ~-0.1 ~1 #air run scoreboard players set @s ncmAirAround 0
execute as @e[type=minecraft:player] at @s unless block ~-1 ~0.1 ~-1 #air run scoreboard players set @s ncmAirAround 0




execute as @a if score DataHolder ncmBlockMode matches 1 run scoreboard players add @s ncmTicksSinceLastMovementViolation 1
# Setback for TickStride
execute as @a if score @s ncmTicksSinceLastMovementViolation >= DataHolder ncmc_bs_fl_59 store result score @s ncmTSSetbackX if score DataHolder ncmBlockMode matches 1 run data get entity @s Pos[0] 100
execute as @a if score @s ncmTicksSinceLastMovementViolation >= DataHolder ncmc_bs_fl_59 store result score @s ncmTSSetbackY if score DataHolder ncmBlockMode matches 1 run data get entity @s Pos[1] 100
execute as @a if score @s ncmTicksSinceLastMovementViolation >= DataHolder ncmc_bs_fl_59 store result score @s ncmTSSetbackZ if score DataHolder ncmBlockMode matches 1 run data get entity @s Pos[2] 100
execute as @a unless score @s ncmTSSetbackX matches -999999999..999999999 store result score @s ncmTSSetbackX if score DataHolder ncmBlockMode matches 1 run data get entity @s Pos[0] 100
execute as @a unless score @s ncmTSSetbackY matches -999999999..999999999 store result score @s ncmTSSetbackY if score DataHolder ncmBlockMode matches 1 run data get entity @s Pos[1] 100
execute as @a unless score @s ncmTSSetbackZ matches -999999999..999999999 store result score @s ncmTSSetbackZ if score DataHolder ncmBlockMode matches 1 run data get entity @s Pos[2] 100


# Setback for SurvivalFly
execute as @a if predicate ncm:is_on_ground if score @s ncmTicksSinceLastMovementViolation >= DataHolder ncmc_bs_fl_59 at @s unless score @s ncmAirAround matches 1.. if score DataHolder ncmBlockMode matches 1 store result score @s ncmLastXOnGrd run data get entity @s Pos[0]
execute as @a if predicate ncm:is_on_ground if score @s ncmTicksSinceLastMovementViolation >= DataHolder ncmc_bs_fl_59 at @s unless score @s ncmAirAround matches 1.. if score DataHolder ncmBlockMode matches 1 store result score @s ncmLastYOnGrd run data get entity @s Pos[1]
execute as @a if predicate ncm:is_on_ground if score @s ncmTicksSinceLastMovementViolation >= DataHolder ncmc_bs_fl_59 at @s unless score @s ncmAirAround matches 1.. if score DataHolder ncmBlockMode matches 1 store result score @s ncmLastZOnGrd run data get entity @s Pos[2]
execute as @a if predicate ncm:is_on_ground if score @s ncmTicksSinceLastMovementViolation >= DataHolder ncmc_bs_fl_59 at @s unless score @s ncmAirAround matches 1.. if score DataHolder ncmBlockMode matches 1 store result score @s ncmLastRotYOnGrd run data get entity @s Rotation[0]
execute as @a if predicate ncm:is_on_ground if score @s ncmTicksSinceLastMovementViolation >= DataHolder ncmc_bs_fl_59 at @s unless score @s ncmAirAround matches 1.. if score DataHolder ncmBlockMode matches 1 store result score @s ncmLastRotXOnGrd run data get entity @s Rotation[1]
execute as @a unless score @s ncmLastXOnGrd matches -999999999..999999999 at @s if score DataHolder ncmBlockMode matches 1 store result score @s ncmLastXOnGrd run data get entity @s Pos[0]
execute as @a unless score @s ncmLastYOnGrd matches -999999999..999999999 at @s if score DataHolder ncmBlockMode matches 1 store result score @s ncmLastYOnGrd run data get entity @s Pos[1]
execute as @a unless score @s ncmLastZOnGrd matches -999999999..999999999 at @s if score DataHolder ncmBlockMode matches 1 store result score @s ncmLastZOnGrd run data get entity @s Pos[2]
execute as @a unless score @s ncmLastRotYOnGrd matches -999999999..999999999 at @s if score DataHolder ncmBlockMode matches 1 store result score @s ncmLastRotYOnGrd run data get entity @s Rotation[0]
execute as @a unless score @s ncmLastRotXOnGrd matches -999999999..999999999 at @s if score DataHolder ncmBlockMode matches 1 store result score @s ncmLastRotXOnGrd run data get entity @s Rotation[1]
