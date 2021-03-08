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
# Description:  This check monitors the player's motion.
# Fail:         This check fails if the player's motion differs from the expected motion in Subcheck-defined situations.
# Subchecks:    - Distance
#               - LostGround
# Author:        n33d4n4m3
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.


# ------------------
# Subcheck: Distance
# ------------------

# Spawn ArmorStand
execute as @e[type=minecraft:player] at @s if score @s ncmJoinGame matches ..40 run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player] at @s if score @s ncmJoinGame matches ..40 run scoreboard players set @s hasSpeedEffI 0
execute as @e[type=minecraft:player] at @s if score @s ncmJoinGame matches ..40 run scoreboard players set @s hasSpeedEffII 0
execute as @e[type=minecraft:player] at @s if score @s ncmJoinGame matches ..40 run scoreboard players set @s sprintJumpFP 0
execute as @e[type=minecraft:player] at @s if score @s ncmJoinGame matches ..40 run scoreboard players set @s sprintJumpFPII 0
execute as @e[type=minecraft:player] at @s if score @s ncmJoinGame matches ..40 run scoreboard players set @s stOnIceC 0
execute as @e[type=minecraft:player] at @s if score @s ncmJoinGame matches ..40 run scoreboard players set @s input 2





execute as @e[type=minecraft:player] at @s if score @s ncmJoinGame matches ..40 run scoreboard players set @s ncmJoinGame 41
execute as @e[type=armor_stand,name=SurvivalFlyA] at @s unless score @s UUID matches 1.. run scoreboard players set @s isSetback 1
execute as @e[type=armor_stand,name=SurvivalFlyA] at @s unless score @s UUID matches 1.. run scoreboard players operation @s UUID = @p[sort=nearest] UUID


execute as @e[type=minecraft:player] store result score @s ncmPlayerY run data get entity @s Pos[1]
execute as @e[type=minecraft:player] if score @s ncmPlayerY < @s ncmLastPlayerY run scoreboard players set @s ncmDecent 1


execute as @e[scores={isSetback=1,UUID=1}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=1},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=1}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=1}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=2}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=2},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=2}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=2}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=3}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=3},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=3}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=3}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=4}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=4},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=4}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=4}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=5}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=5},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=5}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=5}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=6}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=6},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=6}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=6}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=7}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=7},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=7}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=7}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=8}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=8},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=8}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=8}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=9}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=9},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=9}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=9}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=10}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=10},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=10}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=10}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=11}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=11},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=11}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=11}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=12}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=12},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=12}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=12}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=13}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=13},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=13}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=13}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=14}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=14},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=14}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=14}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=15}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=15},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=15}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=15}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=16}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=16},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=16}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=16}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=17}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=17},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=17}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=17}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=18}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=18},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=18}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=18}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=19}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=19},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=19}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=19}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=20}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=20},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=20}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=20}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=21}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=21},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=21}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=21}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=22}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=22},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=22}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=22}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=23}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=23},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=23}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=23}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=24}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=24},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=24}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=24}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=25}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=25},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=25}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=25}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=26}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=26},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=26}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=26}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=27}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=27},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=27}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=27}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=28}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=28},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=28}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=28}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=29}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=29},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=29}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=29}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=30}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=30},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=30}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=30}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=31}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=31},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=31}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=31}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=32}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=32},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=32}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=32}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=33}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=33},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=33}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=33}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=34}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=34},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=34}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=34}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=35}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=35},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=35}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=35}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=36}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=36},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=36}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=36}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=37}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=37},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=37}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=37}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=38}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=38},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=38}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=38}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=39}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=39},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=39}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=39}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=40}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=40},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=40}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=40}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=41}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=41},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=41}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=41}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=42}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=42},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=42}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=42}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=43}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=43},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=43}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=43}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=44}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=44},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=44}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=44}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=45}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=45},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=45}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=45}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=46}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=46},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=46}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=46}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=47}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=47},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=47}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=47}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=48}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=48},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=48}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=48}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=49}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=49},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=49}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=49}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=50}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=50},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=50}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=50}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=51}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=51},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=51}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=51}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=52}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=52},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=52}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=52}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=53}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=53},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=53}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=53}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=54}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=54},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=54}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=54}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=55}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=55},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=55}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=55}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=56}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=56},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=56}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=56}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=57}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=57},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=57}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=57}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=58}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=58},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=58}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=58}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=59}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=59},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=59}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=59}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=60}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=60},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=60}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=60}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=61}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=61},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=61}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=61}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=62}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=62},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=62}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=62}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=63}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=63},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=63}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=63}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=64}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=64},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=64}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=64}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=65}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=65},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=65}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=65}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=66}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=66},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=66}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=66}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=67}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=67},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=67}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=67}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=68}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=68},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=68}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=68}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=69}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=69},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=69}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=69}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=70}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=70},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=70}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=70}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=71}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=71},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=71}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=71}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=72}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=72},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=72}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=72}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=73}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=73},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=73}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=73}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=74}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=74},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=74}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=74}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=75}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=75},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=75}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=75}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=76}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=76},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=76}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=76}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=77}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=77},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=77}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=77}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=78}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=78},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=78}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=78}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=79}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=79},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=79}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=79}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=80}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=80},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=80}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=80}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=81}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=81},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=81}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=81}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=82}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=82},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=82}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=82}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=83}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=83},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=83}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=83}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=84}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=84},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=84}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=84}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=85}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=85},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=85}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=85}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=86}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=86},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=86}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=86}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=87}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=87},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=87}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=87}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=88}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=88},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=88}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=88}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=89}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=89},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=89}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=89}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=90}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=90},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=90}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=90}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=91}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=91},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=91}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=91}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=92}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=92},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=92}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=92}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=93}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=93},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=93}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=93}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=94}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=94},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=94}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=94}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=95}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=95},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=95}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=95}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=96}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=96},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=96}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=96}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=97}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=97},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=97}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=97}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=98}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=98},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=98}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=98}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=99}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=99},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=99}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=99}] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=100}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=100},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=100}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=100}] ncmSFDS_ivl 1



execute as @e[type=minecraft:player] if score @s ncmSFDS_ivl >= DataHolder ncmc_sf_ds_1 run scoreboard players add @s ncmSFDS_ivlrc 1
execute as @e[type=minecraft:player] if score @s ncmSFDS_ivl >= DataHolder ncmc_sf_ds_1 run tellraw @s[scores={inputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Distance","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_ds_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_ds_2"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmLastPlayerY"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmPlayerY"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmDecent"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @e[type=minecraft:player] if score @s ncmSFDS_ivl >= DataHolder ncmc_sf_ds_1 run tellraw @a[scores={inputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Distance","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_ds_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_ds_2"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmLastPlayerY"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmPlayerY"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmDecent"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @e[type=minecraft:player] store result score @s ncmLastPlayerY run data get entity @s Pos[1]

execute as @e[type=minecraft:player] if score @s ncmSFDS_ivlrc >= DataHolder ncmc_sf_ds_2 run scoreboard players set @s ncmSFDS_ivl 0
execute as @e[type=minecraft:player] if score @s ncmSFDS_ivlrc >= DataHolder ncmc_sf_ds_2 run scoreboard players set @s ncmSFDS_ivlrc 0

scoreboard players set @a ncmDecent 0
execute as @e[type=minecraft:player,scores={UUID=1}] at @s run tp @e[scores={isSetback=1,UUID=1}] @s
execute as @e[type=minecraft:player,scores={UUID=2}] at @s run tp @e[scores={isSetback=1,UUID=2}] @s
execute as @e[type=minecraft:player,scores={UUID=3}] at @s run tp @e[scores={isSetback=1,UUID=3}] @s
execute as @e[type=minecraft:player,scores={UUID=4}] at @s run tp @e[scores={isSetback=1,UUID=4}] @s
execute as @e[type=minecraft:player,scores={UUID=5}] at @s run tp @e[scores={isSetback=1,UUID=5}] @s
execute as @e[type=minecraft:player,scores={UUID=6}] at @s run tp @e[scores={isSetback=1,UUID=6}] @s
execute as @e[type=minecraft:player,scores={UUID=7}] at @s run tp @e[scores={isSetback=1,UUID=7}] @s
execute as @e[type=minecraft:player,scores={UUID=8}] at @s run tp @e[scores={isSetback=1,UUID=8}] @s
execute as @e[type=minecraft:player,scores={UUID=9}] at @s run tp @e[scores={isSetback=1,UUID=9}] @s
execute as @e[type=minecraft:player,scores={UUID=10}] at @s run tp @e[scores={isSetback=1,UUID=10}] @s
execute as @e[type=minecraft:player,scores={UUID=11}] at @s run tp @e[scores={isSetback=1,UUID=11}] @s
execute as @e[type=minecraft:player,scores={UUID=12}] at @s run tp @e[scores={isSetback=1,UUID=12}] @s
execute as @e[type=minecraft:player,scores={UUID=13}] at @s run tp @e[scores={isSetback=1,UUID=13}] @s
execute as @e[type=minecraft:player,scores={UUID=14}] at @s run tp @e[scores={isSetback=1,UUID=14}] @s
execute as @e[type=minecraft:player,scores={UUID=15}] at @s run tp @e[scores={isSetback=1,UUID=15}] @s
execute as @e[type=minecraft:player,scores={UUID=16}] at @s run tp @e[scores={isSetback=1,UUID=16}] @s
execute as @e[type=minecraft:player,scores={UUID=17}] at @s run tp @e[scores={isSetback=1,UUID=17}] @s
execute as @e[type=minecraft:player,scores={UUID=18}] at @s run tp @e[scores={isSetback=1,UUID=18}] @s
execute as @e[type=minecraft:player,scores={UUID=19}] at @s run tp @e[scores={isSetback=1,UUID=19}] @s
execute as @e[type=minecraft:player,scores={UUID=20}] at @s run tp @e[scores={isSetback=1,UUID=20}] @s
execute as @e[type=minecraft:player,scores={UUID=21}] at @s run tp @e[scores={isSetback=1,UUID=21}] @s
execute as @e[type=minecraft:player,scores={UUID=22}] at @s run tp @e[scores={isSetback=1,UUID=22}] @s
execute as @e[type=minecraft:player,scores={UUID=23}] at @s run tp @e[scores={isSetback=1,UUID=23}] @s
execute as @e[type=minecraft:player,scores={UUID=24}] at @s run tp @e[scores={isSetback=1,UUID=24}] @s
execute as @e[type=minecraft:player,scores={UUID=25}] at @s run tp @e[scores={isSetback=1,UUID=25}] @s
execute as @e[type=minecraft:player,scores={UUID=26}] at @s run tp @e[scores={isSetback=1,UUID=26}] @s
execute as @e[type=minecraft:player,scores={UUID=27}] at @s run tp @e[scores={isSetback=1,UUID=27}] @s
execute as @e[type=minecraft:player,scores={UUID=28}] at @s run tp @e[scores={isSetback=1,UUID=28}] @s
execute as @e[type=minecraft:player,scores={UUID=29}] at @s run tp @e[scores={isSetback=1,UUID=29}] @s
execute as @e[type=minecraft:player,scores={UUID=30}] at @s run tp @e[scores={isSetback=1,UUID=30}] @s
execute as @e[type=minecraft:player,scores={UUID=31}] at @s run tp @e[scores={isSetback=1,UUID=31}] @s
execute as @e[type=minecraft:player,scores={UUID=32}] at @s run tp @e[scores={isSetback=1,UUID=32}] @s
execute as @e[type=minecraft:player,scores={UUID=33}] at @s run tp @e[scores={isSetback=1,UUID=33}] @s
execute as @e[type=minecraft:player,scores={UUID=34}] at @s run tp @e[scores={isSetback=1,UUID=34}] @s
execute as @e[type=minecraft:player,scores={UUID=35}] at @s run tp @e[scores={isSetback=1,UUID=35}] @s
execute as @e[type=minecraft:player,scores={UUID=36}] at @s run tp @e[scores={isSetback=1,UUID=36}] @s
execute as @e[type=minecraft:player,scores={UUID=37}] at @s run tp @e[scores={isSetback=1,UUID=37}] @s
execute as @e[type=minecraft:player,scores={UUID=38}] at @s run tp @e[scores={isSetback=1,UUID=38}] @s
execute as @e[type=minecraft:player,scores={UUID=39}] at @s run tp @e[scores={isSetback=1,UUID=39}] @s
execute as @e[type=minecraft:player,scores={UUID=40}] at @s run tp @e[scores={isSetback=1,UUID=40}] @s
execute as @e[type=minecraft:player,scores={UUID=41}] at @s run tp @e[scores={isSetback=1,UUID=41}] @s
execute as @e[type=minecraft:player,scores={UUID=42}] at @s run tp @e[scores={isSetback=1,UUID=42}] @s
execute as @e[type=minecraft:player,scores={UUID=43}] at @s run tp @e[scores={isSetback=1,UUID=43}] @s
execute as @e[type=minecraft:player,scores={UUID=44}] at @s run tp @e[scores={isSetback=1,UUID=44}] @s
execute as @e[type=minecraft:player,scores={UUID=45}] at @s run tp @e[scores={isSetback=1,UUID=45}] @s
execute as @e[type=minecraft:player,scores={UUID=46}] at @s run tp @e[scores={isSetback=1,UUID=46}] @s
execute as @e[type=minecraft:player,scores={UUID=47}] at @s run tp @e[scores={isSetback=1,UUID=47}] @s
execute as @e[type=minecraft:player,scores={UUID=48}] at @s run tp @e[scores={isSetback=1,UUID=48}] @s
execute as @e[type=minecraft:player,scores={UUID=49}] at @s run tp @e[scores={isSetback=1,UUID=49}] @s
execute as @e[type=minecraft:player,scores={UUID=50}] at @s run tp @e[scores={isSetback=1,UUID=50}] @s
execute as @e[type=minecraft:player,scores={UUID=51}] at @s run tp @e[scores={isSetback=1,UUID=51}] @s
execute as @e[type=minecraft:player,scores={UUID=52}] at @s run tp @e[scores={isSetback=1,UUID=52}] @s
execute as @e[type=minecraft:player,scores={UUID=53}] at @s run tp @e[scores={isSetback=1,UUID=53}] @s
execute as @e[type=minecraft:player,scores={UUID=54}] at @s run tp @e[scores={isSetback=1,UUID=54}] @s
execute as @e[type=minecraft:player,scores={UUID=55}] at @s run tp @e[scores={isSetback=1,UUID=55}] @s
execute as @e[type=minecraft:player,scores={UUID=56}] at @s run tp @e[scores={isSetback=1,UUID=56}] @s
execute as @e[type=minecraft:player,scores={UUID=57}] at @s run tp @e[scores={isSetback=1,UUID=57}] @s
execute as @e[type=minecraft:player,scores={UUID=58}] at @s run tp @e[scores={isSetback=1,UUID=58}] @s
execute as @e[type=minecraft:player,scores={UUID=59}] at @s run tp @e[scores={isSetback=1,UUID=59}] @s
execute as @e[type=minecraft:player,scores={UUID=60}] at @s run tp @e[scores={isSetback=1,UUID=60}] @s
execute as @e[type=minecraft:player,scores={UUID=61}] at @s run tp @e[scores={isSetback=1,UUID=61}] @s
execute as @e[type=minecraft:player,scores={UUID=62}] at @s run tp @e[scores={isSetback=1,UUID=62}] @s
execute as @e[type=minecraft:player,scores={UUID=63}] at @s run tp @e[scores={isSetback=1,UUID=63}] @s
execute as @e[type=minecraft:player,scores={UUID=64}] at @s run tp @e[scores={isSetback=1,UUID=64}] @s
execute as @e[type=minecraft:player,scores={UUID=65}] at @s run tp @e[scores={isSetback=1,UUID=65}] @s
execute as @e[type=minecraft:player,scores={UUID=66}] at @s run tp @e[scores={isSetback=1,UUID=66}] @s
execute as @e[type=minecraft:player,scores={UUID=67}] at @s run tp @e[scores={isSetback=1,UUID=67}] @s
execute as @e[type=minecraft:player,scores={UUID=68}] at @s run tp @e[scores={isSetback=1,UUID=68}] @s
execute as @e[type=minecraft:player,scores={UUID=69}] at @s run tp @e[scores={isSetback=1,UUID=69}] @s
execute as @e[type=minecraft:player,scores={UUID=70}] at @s run tp @e[scores={isSetback=1,UUID=70}] @s
execute as @e[type=minecraft:player,scores={UUID=71}] at @s run tp @e[scores={isSetback=1,UUID=71}] @s
execute as @e[type=minecraft:player,scores={UUID=72}] at @s run tp @e[scores={isSetback=1,UUID=72}] @s
execute as @e[type=minecraft:player,scores={UUID=73}] at @s run tp @e[scores={isSetback=1,UUID=73}] @s
execute as @e[type=minecraft:player,scores={UUID=74}] at @s run tp @e[scores={isSetback=1,UUID=74}] @s
execute as @e[type=minecraft:player,scores={UUID=75}] at @s run tp @e[scores={isSetback=1,UUID=75}] @s
execute as @e[type=minecraft:player,scores={UUID=76}] at @s run tp @e[scores={isSetback=1,UUID=76}] @s
execute as @e[type=minecraft:player,scores={UUID=77}] at @s run tp @e[scores={isSetback=1,UUID=77}] @s
execute as @e[type=minecraft:player,scores={UUID=78}] at @s run tp @e[scores={isSetback=1,UUID=78}] @s
execute as @e[type=minecraft:player,scores={UUID=79}] at @s run tp @e[scores={isSetback=1,UUID=79}] @s
execute as @e[type=minecraft:player,scores={UUID=80}] at @s run tp @e[scores={isSetback=1,UUID=80}] @s
execute as @e[type=minecraft:player,scores={UUID=81}] at @s run tp @e[scores={isSetback=1,UUID=81}] @s
execute as @e[type=minecraft:player,scores={UUID=82}] at @s run tp @e[scores={isSetback=1,UUID=82}] @s
execute as @e[type=minecraft:player,scores={UUID=83}] at @s run tp @e[scores={isSetback=1,UUID=83}] @s
execute as @e[type=minecraft:player,scores={UUID=84}] at @s run tp @e[scores={isSetback=1,UUID=84}] @s
execute as @e[type=minecraft:player,scores={UUID=85}] at @s run tp @e[scores={isSetback=1,UUID=85}] @s
execute as @e[type=minecraft:player,scores={UUID=86}] at @s run tp @e[scores={isSetback=1,UUID=86}] @s
execute as @e[type=minecraft:player,scores={UUID=87}] at @s run tp @e[scores={isSetback=1,UUID=87}] @s
execute as @e[type=minecraft:player,scores={UUID=88}] at @s run tp @e[scores={isSetback=1,UUID=88}] @s
execute as @e[type=minecraft:player,scores={UUID=89}] at @s run tp @e[scores={isSetback=1,UUID=89}] @s
execute as @e[type=minecraft:player,scores={UUID=90}] at @s run tp @e[scores={isSetback=1,UUID=90}] @s
execute as @e[type=minecraft:player,scores={UUID=91}] at @s run tp @e[scores={isSetback=1,UUID=91}] @s
execute as @e[type=minecraft:player,scores={UUID=92}] at @s run tp @e[scores={isSetback=1,UUID=92}] @s
execute as @e[type=minecraft:player,scores={UUID=93}] at @s run tp @e[scores={isSetback=1,UUID=93}] @s
execute as @e[type=minecraft:player,scores={UUID=94}] at @s run tp @e[scores={isSetback=1,UUID=94}] @s
execute as @e[type=minecraft:player,scores={UUID=95}] at @s run tp @e[scores={isSetback=1,UUID=95}] @s
execute as @e[type=minecraft:player,scores={UUID=96}] at @s run tp @e[scores={isSetback=1,UUID=96}] @s
execute as @e[type=minecraft:player,scores={UUID=97}] at @s run tp @e[scores={isSetback=1,UUID=97}] @s
execute as @e[type=minecraft:player,scores={UUID=98}] at @s run tp @e[scores={isSetback=1,UUID=98}] @s
execute as @e[type=minecraft:player,scores={UUID=99}] at @s run tp @e[scores={isSetback=1,UUID=99}] @s
execute as @e[type=minecraft:player,scores={UUID=100}] at @s run tp @e[scores={isSetback=1,UUID=100}] @s


# Remove ArmorStand
execute if score @e[type=minecraft:player,scores={UUID=1},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=1}]
execute if score @e[type=minecraft:player,scores={UUID=2},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=2}]
execute if score @e[type=minecraft:player,scores={UUID=3},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=3}]
execute if score @e[type=minecraft:player,scores={UUID=4},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=4}]
execute if score @e[type=minecraft:player,scores={UUID=5},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=5}]
execute if score @e[type=minecraft:player,scores={UUID=6},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=6}]
execute if score @e[type=minecraft:player,scores={UUID=7},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=7}]
execute if score @e[type=minecraft:player,scores={UUID=8},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=8}]
execute if score @e[type=minecraft:player,scores={UUID=9},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=9}]
execute if score @e[type=minecraft:player,scores={UUID=10},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=10}]
execute if score @e[type=minecraft:player,scores={UUID=11},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=11}]
execute if score @e[type=minecraft:player,scores={UUID=12},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=12}]
execute if score @e[type=minecraft:player,scores={UUID=13},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=13}]
execute if score @e[type=minecraft:player,scores={UUID=14},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=14}]
execute if score @e[type=minecraft:player,scores={UUID=15},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=15}]
execute if score @e[type=minecraft:player,scores={UUID=16},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=16}]
execute if score @e[type=minecraft:player,scores={UUID=17},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=17}]
execute if score @e[type=minecraft:player,scores={UUID=18},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=18}]
execute if score @e[type=minecraft:player,scores={UUID=19},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=19}]
execute if score @e[type=minecraft:player,scores={UUID=20},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=20}]
execute if score @e[type=minecraft:player,scores={UUID=21},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=21}]
execute if score @e[type=minecraft:player,scores={UUID=22},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=22}]
execute if score @e[type=minecraft:player,scores={UUID=23},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=23}]
execute if score @e[type=minecraft:player,scores={UUID=24},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=24}]
execute if score @e[type=minecraft:player,scores={UUID=25},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=25}]
execute if score @e[type=minecraft:player,scores={UUID=26},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=26}]
execute if score @e[type=minecraft:player,scores={UUID=27},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=27}]
execute if score @e[type=minecraft:player,scores={UUID=28},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=28}]
execute if score @e[type=minecraft:player,scores={UUID=29},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=29}]
execute if score @e[type=minecraft:player,scores={UUID=30},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=30}]
execute if score @e[type=minecraft:player,scores={UUID=31},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=31}]
execute if score @e[type=minecraft:player,scores={UUID=32},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=32}]
execute if score @e[type=minecraft:player,scores={UUID=33},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=33}]
execute if score @e[type=minecraft:player,scores={UUID=34},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=34}]
execute if score @e[type=minecraft:player,scores={UUID=35},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=35}]
execute if score @e[type=minecraft:player,scores={UUID=36},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=36}]
execute if score @e[type=minecraft:player,scores={UUID=37},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=37}]
execute if score @e[type=minecraft:player,scores={UUID=38},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=38}]
execute if score @e[type=minecraft:player,scores={UUID=39},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=39}]
execute if score @e[type=minecraft:player,scores={UUID=40},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=40}]
execute if score @e[type=minecraft:player,scores={UUID=41},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=41}]
execute if score @e[type=minecraft:player,scores={UUID=42},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=42}]
execute if score @e[type=minecraft:player,scores={UUID=43},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=43}]
execute if score @e[type=minecraft:player,scores={UUID=44},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=44}]
execute if score @e[type=minecraft:player,scores={UUID=45},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=45}]
execute if score @e[type=minecraft:player,scores={UUID=46},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=46}]
execute if score @e[type=minecraft:player,scores={UUID=47},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=47}]
execute if score @e[type=minecraft:player,scores={UUID=48},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=48}]
execute if score @e[type=minecraft:player,scores={UUID=49},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=49}]
execute if score @e[type=minecraft:player,scores={UUID=50},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=50}]
execute if score @e[type=minecraft:player,scores={UUID=51},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=51}]
execute if score @e[type=minecraft:player,scores={UUID=52},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=52}]
execute if score @e[type=minecraft:player,scores={UUID=53},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=53}]
execute if score @e[type=minecraft:player,scores={UUID=54},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=54}]
execute if score @e[type=minecraft:player,scores={UUID=55},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=55}]
execute if score @e[type=minecraft:player,scores={UUID=56},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=56}]
execute if score @e[type=minecraft:player,scores={UUID=57},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=57}]
execute if score @e[type=minecraft:player,scores={UUID=58},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=58}]
execute if score @e[type=minecraft:player,scores={UUID=59},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=59}]
execute if score @e[type=minecraft:player,scores={UUID=60},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=60}]
execute if score @e[type=minecraft:player,scores={UUID=61},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=61}]
execute if score @e[type=minecraft:player,scores={UUID=62},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=62}]
execute if score @e[type=minecraft:player,scores={UUID=63},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=63}]
execute if score @e[type=minecraft:player,scores={UUID=64},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=64}]
execute if score @e[type=minecraft:player,scores={UUID=65},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=65}]
execute if score @e[type=minecraft:player,scores={UUID=66},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=66}]
execute if score @e[type=minecraft:player,scores={UUID=67},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=67}]
execute if score @e[type=minecraft:player,scores={UUID=68},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=68}]
execute if score @e[type=minecraft:player,scores={UUID=69},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=69}]
execute if score @e[type=minecraft:player,scores={UUID=70},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=70}]
execute if score @e[type=minecraft:player,scores={UUID=71},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=71}]
execute if score @e[type=minecraft:player,scores={UUID=72},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=72}]
execute if score @e[type=minecraft:player,scores={UUID=73},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=73}]
execute if score @e[type=minecraft:player,scores={UUID=74},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=74}]
execute if score @e[type=minecraft:player,scores={UUID=75},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=75}]
execute if score @e[type=minecraft:player,scores={UUID=76},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=76}]
execute if score @e[type=minecraft:player,scores={UUID=77},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=77}]
execute if score @e[type=minecraft:player,scores={UUID=78},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=78}]
execute if score @e[type=minecraft:player,scores={UUID=79},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=79}]
execute if score @e[type=minecraft:player,scores={UUID=80},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=80}]
execute if score @e[type=minecraft:player,scores={UUID=81},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=81}]
execute if score @e[type=minecraft:player,scores={UUID=82},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=82}]
execute if score @e[type=minecraft:player,scores={UUID=83},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=83}]
execute if score @e[type=minecraft:player,scores={UUID=84},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=84}]
execute if score @e[type=minecraft:player,scores={UUID=85},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=85}]
execute if score @e[type=minecraft:player,scores={UUID=86},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=86}]
execute if score @e[type=minecraft:player,scores={UUID=87},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=87}]
execute if score @e[type=minecraft:player,scores={UUID=88},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=88}]
execute if score @e[type=minecraft:player,scores={UUID=89},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=89}]
execute if score @e[type=minecraft:player,scores={UUID=90},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=90}]
execute if score @e[type=minecraft:player,scores={UUID=91},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=91}]
execute if score @e[type=minecraft:player,scores={UUID=92},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=92}]
execute if score @e[type=minecraft:player,scores={UUID=93},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=93}]
execute if score @e[type=minecraft:player,scores={UUID=94},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=94}]
execute if score @e[type=minecraft:player,scores={UUID=95},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=95}]
execute if score @e[type=minecraft:player,scores={UUID=96},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=96}]
execute if score @e[type=minecraft:player,scores={UUID=97},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=97}]
execute if score @e[type=minecraft:player,scores={UUID=98},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=98}]
execute if score @e[type=minecraft:player,scores={UUID=99},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=99}]
execute if score @e[type=minecraft:player,scores={UUID=100},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=100}]



execute as @e[type=minecraft:player,scores={ncmLeaveGame=1..}] run scoreboard players set @s ncmJoinGame 1
execute as @e[type=minecraft:player,scores={ncmLeaveGame=1..}] run scoreboard players set @s ncmLeaveGame 0



# --------------------
# Subcheck: LostGround
# --------------------
execute as @e[type=minecraft:player] store result score @s ncmYMotion run data get entity @s Motion[1] 1
execute as @e[type=minecraft:player,nbt={OnGround:1b}] unless score @s ncmYMotion matches -1 run scoreboard players add @s ncmSFLG_ivl 1
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivl matches 1.. run scoreboard players add @s ncmSFLG_ivlrc 1
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivl >= DataHolder ncmc_sf_lg_1 run tellraw @s[scores={inputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"LostGround","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"@s","objective":"ncmYMotion"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivl >= DataHolder ncmc_sf_lg_1 run tellraw @a[scores={inputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"LostGround","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"@s","objective":"ncmYMotion"},"color":"gray"},{"text":"}","color":"gray"}]

execute as @e[type=minecraft:player] if score @s ncmSFLG_ivlrc >= DataHolder ncmc_sf_lg_2 run scoreboard players set @s ncmSFLG_ivl 0
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivlrc >= DataHolder ncmc_sf_lg_2 run scoreboard players set @s ncmSFLG_ivlrc 0
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivl >= DataHolder ncmc_sf_lg_1 run scoreboard players set @s ncmSFLG_ivl 0


# ------------------------
# Subcheck: OffGroundTicks
# ------------------------
execute as @a if score @s ncmOGJump matches 1.. run scoreboard players add @s ncmOGJump 1
execute as @a[gamemode=!creative] at @s unless block ~ ~ ~ cobweb if score @s ncmYMotion matches 0.. unless score @s ncmOGJump matches 1.. run scoreboard players add @s ncmOffGrTicks 1
execute as @a if score @s ncmOGJump >= DataHolder ncmc_sf_og_3 run scoreboard players set @s ncmOGJump 0
execute as @a if score @s ncmOffGrTicks matches 1.. run scoreboard players add @s ncmOffGrTicksC 1
execute as @a if score @s ncmOffGrTicks >= DataHolder ncmc_sf_og_1 run tellraw @s[scores={inputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"OffGroundTicks","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_og_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_og_2"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_og_3"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmOffGrTicks"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmOffGrTicksC"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @a if score @s ncmOffGrTicks >= DataHolder ncmc_sf_og_1 run tellraw @a[scores={inputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"OffGroundTicks","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_og_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_og_2"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_og_3"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmOffGrTicks"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmOffGrTicksC"},"color":"gray"},{"text":"}","color":"gray"}]

execute as @a if score @s ncmOffGrTicks >= DataHolder ncmc_sf_og_1 run scoreboard players set @s ncmOffGrTicks 0
execute as @a if score @s ncmOffGrTicksC >= DataHolder ncmc_sf_og_2 run scoreboard players set @s ncmOffGrTicks 0
execute as @a if score @s ncmOffGrTicksC >= DataHolder ncmc_sf_og_2 run scoreboard players set @s ncmOffGrTicksC 0

# ------------------------
# Subcheck: MonitorMotionX
# ------------------------
#execute as @e[type=minecraft:player] store result score @s ncmXMotionM run data get entity @s Motion[0] 10000
#execute as @a if score @s ncmXMotionM >= DataHolder ncmc_sf_xm_1 run say XMotion max exceeded.

# ------------------------
# Subcheck: MonitorMotionY
# ------------------------

# TODO: High amplifier support -> maxYMotion = amp * 1000 + ncmc_sf_ym_1
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:0b}]}] ncmJumpBoostI 40
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:1b}]}] ncmJumpBoostII 40


execute as @e[type=minecraft:player] store result score @s ncmYMotionM run data get entity @s Motion[1] 10000

execute as @a unless score @s ncmJumpBoostI matches 1.. unless score @s ncmJumpBoostII matches 1.. if score @s ncmYMotionM >= DataHolder ncmc_sf_ym_1 run tellraw @s[scores={inputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"MonitorMotionY","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_ym_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmYMotionM"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @a unless score @s ncmJumpBoostI matches 1.. unless score @s ncmJumpBoostII matches 1.. if score @s ncmYMotionM >= DataHolder ncmc_sf_ym_1 run tellraw @a[scores={inputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"MonitorMotionY","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_ym_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmYMotionM"},"color":"gray"},{"text":"}","color":"gray"}]

execute as @a if score @s ncmJumpBoostI matches 1.. unless score @s ncmJumpBoostII matches 1.. if score @s ncmYMotionM >= DataHolder ncmc_sf_ym_2 run tellraw @s[scores={inputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"MonitorMotionY","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_ym_2"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmYMotionM"},"color":"gray"},{"text":", Jump Boost I}","color":"gray"}]
execute as @a if score @s ncmJumpBoostI matches 1.. unless score @s ncmJumpBoostII matches 1.. if score @s ncmYMotionM >= DataHolder ncmc_sf_ym_2 run tellraw @a[scores={inputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"MonitorMotionY","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_ym_2"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmYMotionM"},"color":"gray"},{"text":", Jump Boost I}","color":"gray"}]

execute as @a if score @s ncmJumpBoostII matches 1.. unless score @s ncmJumpBoostI matches 1.. if score @s ncmYMotionM >= DataHolder ncmc_sf_ym_3 run tellraw @s[scores={inputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"MonitorMotionY","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_ym_3"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmYMotionM"},"color":"gray"},{"text":", Jump Boost II}","color":"gray"}]
execute as @a if score @s ncmJumpBoostII matches 1.. unless score @s ncmJumpBoostI matches 1.. if score @s ncmYMotionM >= DataHolder ncmc_sf_ym_3 run tellraw @a[scores={inputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"MonitorMotionY","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_ym_3"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmYMotionM"},"color":"gray"},{"text":", Jump Boost II}","color":"gray"}]


execute as @a if score @s ncmYMotionM > @s ncmYMotionMax run scoreboard players operation @s ncmYMotionMax = @s ncmYMotionM
execute as @a if score @s ncmJumpBoostI matches 1.. run scoreboard players remove @s ncmJumpBoostI 1
execute as @a if score @s ncmJumpBoostII matches 1.. run scoreboard players remove @s ncmJumpBoostII 1

# ------------------------
# Subcheck: MonitorMotionZ
# ------------------------
#execute as @e[type=minecraft:player] store result score @s ncmZMotionM run data get entity @s Motion[2] 10000
#execute as @a if score @s ncmXMotionM >= DataHolder ncmc_sf_zm_1 run say ZMotion max exceeded.
