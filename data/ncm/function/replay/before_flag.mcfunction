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
# Description:  This function handels the replay playback phase 1/2.
# Author:       n33d4n4m3
# ...





scoreboard players set @s ncmReplayStarted 1






execute unless score @s ncmReplayTick matches -100..200 run scoreboard players set @s ncmReplayTick 0


$execute if score @s ncmReplayTick matches 0 run scoreboard players operation @s ncmReplayTick = $(name) ncmReplayStoreTick
$execute if score @s ncmReplayTick = $(name) ncmReplayStoreTick unless score @s ncmFirstRunFinished matches 1 run scoreboard players add @s ncmReplayState 1


scoreboard players remove @s ncmReplayTick 1

$execute if score @s ncmReplayTick = $(name) ncmReplayStoreTick run scoreboard players add @s ncmReplayState 1
execute if score @s ncmReplayTick matches 0 run scoreboard players set @s ncmReplayTick 100




execute if score @s ncmReplayState matches 2 run scoreboard players set @s ncmReplayTick 0


execute unless score @s ncmFirstRunFinished matches 1 run scoreboard players add @s ncmReplayTick 1

execute if score @s ncmReplayTick matches 101 run scoreboard players set @s ncmReplayTick 1


scoreboard players add @s ncmReplayCounter 1


# Sprinting
$execute if score @s ncmReplayTick matches 1 if score $(name) ncmReplayM1 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 1 if score $(name) ncmReplayM1 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 2 if score $(name) ncmReplayM2 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 2 if score $(name) ncmReplayM2 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 3 if score $(name) ncmReplayM3 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 3 if score $(name) ncmReplayM3 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 4 if score $(name) ncmReplayM4 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 4 if score $(name) ncmReplayM4 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 5 if score $(name) ncmReplayM5 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 5 if score $(name) ncmReplayM5 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 6 if score $(name) ncmReplayM6 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 6 if score $(name) ncmReplayM6 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 7 if score $(name) ncmReplayM7 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 7 if score $(name) ncmReplayM7 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 8 if score $(name) ncmReplayM8 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 8 if score $(name) ncmReplayM8 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 9 if score $(name) ncmReplayM9 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 9 if score $(name) ncmReplayM9 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 10 if score $(name) ncmReplayM10 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 10 if score $(name) ncmReplayM10 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 11 if score $(name) ncmReplayM11 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 11 if score $(name) ncmReplayM11 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 12 if score $(name) ncmReplayM12 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 12 if score $(name) ncmReplayM12 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 13 if score $(name) ncmReplayM13 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 13 if score $(name) ncmReplayM13 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 14 if score $(name) ncmReplayM14 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 14 if score $(name) ncmReplayM14 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 15 if score $(name) ncmReplayM15 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 15 if score $(name) ncmReplayM15 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 16 if score $(name) ncmReplayM16 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 16 if score $(name) ncmReplayM16 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 17 if score $(name) ncmReplayM17 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 17 if score $(name) ncmReplayM17 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 18 if score $(name) ncmReplayM18 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 18 if score $(name) ncmReplayM18 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 19 if score $(name) ncmReplayM19 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 19 if score $(name) ncmReplayM19 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 20 if score $(name) ncmReplayM20 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 20 if score $(name) ncmReplayM20 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 21 if score $(name) ncmReplayM21 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 21 if score $(name) ncmReplayM21 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 22 if score $(name) ncmReplayM22 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 22 if score $(name) ncmReplayM22 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 23 if score $(name) ncmReplayM23 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 23 if score $(name) ncmReplayM23 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 24 if score $(name) ncmReplayM24 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 24 if score $(name) ncmReplayM24 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 25 if score $(name) ncmReplayM25 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 25 if score $(name) ncmReplayM25 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 26 if score $(name) ncmReplayM26 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 26 if score $(name) ncmReplayM26 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 27 if score $(name) ncmReplayM27 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 27 if score $(name) ncmReplayM27 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 28 if score $(name) ncmReplayM28 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 28 if score $(name) ncmReplayM28 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 29 if score $(name) ncmReplayM29 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 29 if score $(name) ncmReplayM29 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 30 if score $(name) ncmReplayM30 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 30 if score $(name) ncmReplayM30 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 31 if score $(name) ncmReplayM31 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 31 if score $(name) ncmReplayM31 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 32 if score $(name) ncmReplayM32 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 32 if score $(name) ncmReplayM32 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 33 if score $(name) ncmReplayM33 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 33 if score $(name) ncmReplayM33 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 34 if score $(name) ncmReplayM34 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 34 if score $(name) ncmReplayM34 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 35 if score $(name) ncmReplayM35 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 35 if score $(name) ncmReplayM35 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 36 if score $(name) ncmReplayM36 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 36 if score $(name) ncmReplayM36 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 37 if score $(name) ncmReplayM37 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 37 if score $(name) ncmReplayM37 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 38 if score $(name) ncmReplayM38 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 38 if score $(name) ncmReplayM38 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 39 if score $(name) ncmReplayM39 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 39 if score $(name) ncmReplayM39 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 40 if score $(name) ncmReplayM40 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 40 if score $(name) ncmReplayM40 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 41 if score $(name) ncmReplayM41 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 41 if score $(name) ncmReplayM41 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 42 if score $(name) ncmReplayM42 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 42 if score $(name) ncmReplayM42 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 43 if score $(name) ncmReplayM43 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 43 if score $(name) ncmReplayM43 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 44 if score $(name) ncmReplayM44 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 44 if score $(name) ncmReplayM44 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 45 if score $(name) ncmReplayM45 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 45 if score $(name) ncmReplayM45 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 46 if score $(name) ncmReplayM46 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 46 if score $(name) ncmReplayM46 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 47 if score $(name) ncmReplayM47 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 47 if score $(name) ncmReplayM47 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 48 if score $(name) ncmReplayM48 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 48 if score $(name) ncmReplayM48 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 49 if score $(name) ncmReplayM49 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 49 if score $(name) ncmReplayM49 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 50 if score $(name) ncmReplayM50 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 50 if score $(name) ncmReplayM50 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 51 if score $(name) ncmReplayM51 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 51 if score $(name) ncmReplayM51 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 52 if score $(name) ncmReplayM52 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 52 if score $(name) ncmReplayM52 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 53 if score $(name) ncmReplayM53 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 53 if score $(name) ncmReplayM53 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 54 if score $(name) ncmReplayM54 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 54 if score $(name) ncmReplayM54 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 55 if score $(name) ncmReplayM55 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 55 if score $(name) ncmReplayM55 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 56 if score $(name) ncmReplayM56 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 56 if score $(name) ncmReplayM56 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 57 if score $(name) ncmReplayM57 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 57 if score $(name) ncmReplayM57 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 58 if score $(name) ncmReplayM58 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 58 if score $(name) ncmReplayM58 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 59 if score $(name) ncmReplayM59 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 59 if score $(name) ncmReplayM59 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 60 if score $(name) ncmReplayM60 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 60 if score $(name) ncmReplayM60 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 61 if score $(name) ncmReplayM61 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 61 if score $(name) ncmReplayM61 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 62 if score $(name) ncmReplayM62 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 62 if score $(name) ncmReplayM62 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 63 if score $(name) ncmReplayM63 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 63 if score $(name) ncmReplayM63 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 64 if score $(name) ncmReplayM64 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 64 if score $(name) ncmReplayM64 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 65 if score $(name) ncmReplayM65 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 65 if score $(name) ncmReplayM65 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 66 if score $(name) ncmReplayM66 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 66 if score $(name) ncmReplayM66 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 67 if score $(name) ncmReplayM67 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 67 if score $(name) ncmReplayM67 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 68 if score $(name) ncmReplayM68 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 68 if score $(name) ncmReplayM68 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 69 if score $(name) ncmReplayM69 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 69 if score $(name) ncmReplayM69 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 70 if score $(name) ncmReplayM70 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 70 if score $(name) ncmReplayM70 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 71 if score $(name) ncmReplayM71 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 71 if score $(name) ncmReplayM71 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 72 if score $(name) ncmReplayM72 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 72 if score $(name) ncmReplayM72 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 73 if score $(name) ncmReplayM73 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 73 if score $(name) ncmReplayM73 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 74 if score $(name) ncmReplayM74 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 74 if score $(name) ncmReplayM74 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 75 if score $(name) ncmReplayM75 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 75 if score $(name) ncmReplayM75 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 76 if score $(name) ncmReplayM76 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 76 if score $(name) ncmReplayM76 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 77 if score $(name) ncmReplayM77 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 77 if score $(name) ncmReplayM77 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 78 if score $(name) ncmReplayM78 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 78 if score $(name) ncmReplayM78 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 79 if score $(name) ncmReplayM79 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 79 if score $(name) ncmReplayM79 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 80 if score $(name) ncmReplayM80 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 80 if score $(name) ncmReplayM80 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 81 if score $(name) ncmReplayM81 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 81 if score $(name) ncmReplayM81 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 82 if score $(name) ncmReplayM82 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 82 if score $(name) ncmReplayM82 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 83 if score $(name) ncmReplayM83 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 83 if score $(name) ncmReplayM83 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 84 if score $(name) ncmReplayM84 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 84 if score $(name) ncmReplayM84 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 85 if score $(name) ncmReplayM85 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 85 if score $(name) ncmReplayM85 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 86 if score $(name) ncmReplayM86 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 86 if score $(name) ncmReplayM86 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 87 if score $(name) ncmReplayM87 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 87 if score $(name) ncmReplayM87 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 88 if score $(name) ncmReplayM88 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 88 if score $(name) ncmReplayM88 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 89 if score $(name) ncmReplayM89 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 89 if score $(name) ncmReplayM89 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 90 if score $(name) ncmReplayM90 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 90 if score $(name) ncmReplayM90 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 91 if score $(name) ncmReplayM91 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 91 if score $(name) ncmReplayM91 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 92 if score $(name) ncmReplayM92 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 92 if score $(name) ncmReplayM92 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 93 if score $(name) ncmReplayM93 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 93 if score $(name) ncmReplayM93 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 94 if score $(name) ncmReplayM94 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 94 if score $(name) ncmReplayM94 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 95 if score $(name) ncmReplayM95 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 95 if score $(name) ncmReplayM95 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 96 if score $(name) ncmReplayM96 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 96 if score $(name) ncmReplayM96 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 97 if score $(name) ncmReplayM97 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 97 if score $(name) ncmReplayM97 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 98 if score $(name) ncmReplayM98 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 98 if score $(name) ncmReplayM98 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 99 if score $(name) ncmReplayM99 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 99 if score $(name) ncmReplayM99 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 100 if score $(name) ncmReplayM100 matches 2 run execute as @e[team=NCMReplay,limit=1] at @s anchored feet run particle block{block_state:{Name:stone}} ~ ~ ~ 0 0 0 0 1
$execute if score @s ncmReplayTick matches 100 if score $(name) ncmReplayM100 matches 2 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing







$execute if score @s ncmReplayTick matches 1 if score $(name) ncmReplayH1 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 1 if score $(name) ncmReplayF1 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 1 unless score $(name) ncmReplayF1 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 1 if score $(name) ncmReplayM1 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 1 if score $(name) ncmReplayM1 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 1 if score $(name) ncmReplayM1 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 1 if score $(name) ncmReplayM1 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 1 if score $(name) ncmReplayM1 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 2 if score $(name) ncmReplayH2 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 2 if score $(name) ncmReplayF2 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 2 unless score $(name) ncmReplayF2 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 2 if score $(name) ncmReplayM2 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 2 if score $(name) ncmReplayM2 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 2 if score $(name) ncmReplayM2 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 2 if score $(name) ncmReplayM2 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 2 if score $(name) ncmReplayM2 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 3 if score $(name) ncmReplayH3 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 3 if score $(name) ncmReplayF3 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 3 unless score $(name) ncmReplayF3 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 3 if score $(name) ncmReplayM3 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 3 if score $(name) ncmReplayM3 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 3 if score $(name) ncmReplayM3 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 3 if score $(name) ncmReplayM3 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 3 if score $(name) ncmReplayM3 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 4 if score $(name) ncmReplayH4 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 4 if score $(name) ncmReplayF4 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 4 unless score $(name) ncmReplayF4 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 4 if score $(name) ncmReplayM4 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 4 if score $(name) ncmReplayM4 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 4 if score $(name) ncmReplayM4 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 4 if score $(name) ncmReplayM4 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 4 if score $(name) ncmReplayM4 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 5 if score $(name) ncmReplayH5 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 5 if score $(name) ncmReplayF5 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 5 unless score $(name) ncmReplayF5 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 5 if score $(name) ncmReplayM5 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 5 if score $(name) ncmReplayM5 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 5 if score $(name) ncmReplayM5 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 5 if score $(name) ncmReplayM5 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 5 if score $(name) ncmReplayM5 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 6 if score $(name) ncmReplayH6 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 6 if score $(name) ncmReplayF6 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 6 unless score $(name) ncmReplayF6 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 6 if score $(name) ncmReplayM6 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 6 if score $(name) ncmReplayM6 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 6 if score $(name) ncmReplayM6 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 6 if score $(name) ncmReplayM6 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 6 if score $(name) ncmReplayM6 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 7 if score $(name) ncmReplayH7 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 7 if score $(name) ncmReplayF7 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 7 unless score $(name) ncmReplayF7 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 7 if score $(name) ncmReplayM7 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 7 if score $(name) ncmReplayM7 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 7 if score $(name) ncmReplayM7 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 7 if score $(name) ncmReplayM7 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 7 if score $(name) ncmReplayM7 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 8 if score $(name) ncmReplayH8 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 8 if score $(name) ncmReplayF8 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 8 unless score $(name) ncmReplayF8 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 8 if score $(name) ncmReplayM8 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 8 if score $(name) ncmReplayM8 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 8 if score $(name) ncmReplayM8 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 8 if score $(name) ncmReplayM8 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 8 if score $(name) ncmReplayM8 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 9 if score $(name) ncmReplayH9 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 9 if score $(name) ncmReplayF9 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 9 unless score $(name) ncmReplayF9 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 9 if score $(name) ncmReplayM9 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 9 if score $(name) ncmReplayM9 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 9 if score $(name) ncmReplayM9 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 9 if score $(name) ncmReplayM9 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 9 if score $(name) ncmReplayM9 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 10 if score $(name) ncmReplayH10 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 10 if score $(name) ncmReplayF10 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 10 unless score $(name) ncmReplayF10 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 10 if score $(name) ncmReplayM10 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 10 if score $(name) ncmReplayM10 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 10 if score $(name) ncmReplayM10 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 10 if score $(name) ncmReplayM10 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 10 if score $(name) ncmReplayM10 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 11 if score $(name) ncmReplayH11 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 11 if score $(name) ncmReplayF11 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 11 unless score $(name) ncmReplayF11 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 11 if score $(name) ncmReplayM11 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 11 if score $(name) ncmReplayM11 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 11 if score $(name) ncmReplayM11 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 11 if score $(name) ncmReplayM11 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 11 if score $(name) ncmReplayM11 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 12 if score $(name) ncmReplayH12 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 12 if score $(name) ncmReplayF12 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 12 unless score $(name) ncmReplayF12 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 12 if score $(name) ncmReplayM12 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 12 if score $(name) ncmReplayM12 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 12 if score $(name) ncmReplayM12 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 12 if score $(name) ncmReplayM12 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 12 if score $(name) ncmReplayM12 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 13 if score $(name) ncmReplayH13 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 13 if score $(name) ncmReplayF13 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 13 unless score $(name) ncmReplayF13 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 13 if score $(name) ncmReplayM13 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 13 if score $(name) ncmReplayM13 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 13 if score $(name) ncmReplayM13 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 13 if score $(name) ncmReplayM13 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 13 if score $(name) ncmReplayM13 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 14 if score $(name) ncmReplayH14 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 14 if score $(name) ncmReplayF14 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 14 unless score $(name) ncmReplayF14 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 14 if score $(name) ncmReplayM14 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 14 if score $(name) ncmReplayM14 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 14 if score $(name) ncmReplayM14 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 14 if score $(name) ncmReplayM14 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 14 if score $(name) ncmReplayM14 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 15 if score $(name) ncmReplayH15 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 15 if score $(name) ncmReplayF15 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 15 unless score $(name) ncmReplayF15 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 15 if score $(name) ncmReplayM15 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 15 if score $(name) ncmReplayM15 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 15 if score $(name) ncmReplayM15 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 15 if score $(name) ncmReplayM15 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 15 if score $(name) ncmReplayM15 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 16 if score $(name) ncmReplayH16 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 16 if score $(name) ncmReplayF16 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 16 unless score $(name) ncmReplayF16 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 16 if score $(name) ncmReplayM16 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 16 if score $(name) ncmReplayM16 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 16 if score $(name) ncmReplayM16 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 16 if score $(name) ncmReplayM16 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 16 if score $(name) ncmReplayM16 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 17 if score $(name) ncmReplayH17 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 17 if score $(name) ncmReplayF17 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 17 unless score $(name) ncmReplayF17 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 17 if score $(name) ncmReplayM17 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 17 if score $(name) ncmReplayM17 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 17 if score $(name) ncmReplayM17 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 17 if score $(name) ncmReplayM17 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 17 if score $(name) ncmReplayM17 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 18 if score $(name) ncmReplayH18 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 18 if score $(name) ncmReplayF18 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 18 unless score $(name) ncmReplayF18 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 18 if score $(name) ncmReplayM18 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 18 if score $(name) ncmReplayM18 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 18 if score $(name) ncmReplayM18 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 18 if score $(name) ncmReplayM18 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 18 if score $(name) ncmReplayM18 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 19 if score $(name) ncmReplayH19 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 19 if score $(name) ncmReplayF19 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 19 unless score $(name) ncmReplayF19 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 19 if score $(name) ncmReplayM19 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 19 if score $(name) ncmReplayM19 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 19 if score $(name) ncmReplayM19 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 19 if score $(name) ncmReplayM19 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 19 if score $(name) ncmReplayM19 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 20 if score $(name) ncmReplayH20 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 20 if score $(name) ncmReplayF20 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 20 unless score $(name) ncmReplayF20 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 20 if score $(name) ncmReplayM20 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 20 if score $(name) ncmReplayM20 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 20 if score $(name) ncmReplayM20 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 20 if score $(name) ncmReplayM20 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 20 if score $(name) ncmReplayM20 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 21 if score $(name) ncmReplayH21 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 21 if score $(name) ncmReplayF21 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 21 unless score $(name) ncmReplayF21 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 21 if score $(name) ncmReplayM21 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 21 if score $(name) ncmReplayM21 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 21 if score $(name) ncmReplayM21 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 21 if score $(name) ncmReplayM21 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 21 if score $(name) ncmReplayM21 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 22 if score $(name) ncmReplayH22 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 22 if score $(name) ncmReplayF22 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 22 unless score $(name) ncmReplayF22 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 22 if score $(name) ncmReplayM22 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 22 if score $(name) ncmReplayM22 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 22 if score $(name) ncmReplayM22 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 22 if score $(name) ncmReplayM22 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 22 if score $(name) ncmReplayM22 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 23 if score $(name) ncmReplayH23 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 23 if score $(name) ncmReplayF23 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 23 unless score $(name) ncmReplayF23 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 23 if score $(name) ncmReplayM23 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 23 if score $(name) ncmReplayM23 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 23 if score $(name) ncmReplayM23 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 23 if score $(name) ncmReplayM23 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 23 if score $(name) ncmReplayM23 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 24 if score $(name) ncmReplayH24 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 24 if score $(name) ncmReplayF24 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 24 unless score $(name) ncmReplayF24 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 24 if score $(name) ncmReplayM24 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 24 if score $(name) ncmReplayM24 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 24 if score $(name) ncmReplayM24 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 24 if score $(name) ncmReplayM24 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 24 if score $(name) ncmReplayM24 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 25 if score $(name) ncmReplayH25 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 25 if score $(name) ncmReplayF25 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 25 unless score $(name) ncmReplayF25 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 25 if score $(name) ncmReplayM25 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 25 if score $(name) ncmReplayM25 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 25 if score $(name) ncmReplayM25 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 25 if score $(name) ncmReplayM25 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 25 if score $(name) ncmReplayM25 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 26 if score $(name) ncmReplayH26 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 26 if score $(name) ncmReplayF26 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 26 unless score $(name) ncmReplayF26 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 26 if score $(name) ncmReplayM26 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 26 if score $(name) ncmReplayM26 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 26 if score $(name) ncmReplayM26 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 26 if score $(name) ncmReplayM26 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 26 if score $(name) ncmReplayM26 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 27 if score $(name) ncmReplayH27 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 27 if score $(name) ncmReplayF27 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 27 unless score $(name) ncmReplayF27 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 27 if score $(name) ncmReplayM27 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 27 if score $(name) ncmReplayM27 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 27 if score $(name) ncmReplayM27 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 27 if score $(name) ncmReplayM27 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 27 if score $(name) ncmReplayM27 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 28 if score $(name) ncmReplayH28 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 28 if score $(name) ncmReplayF28 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 28 unless score $(name) ncmReplayF28 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 28 if score $(name) ncmReplayM28 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 28 if score $(name) ncmReplayM28 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 28 if score $(name) ncmReplayM28 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 28 if score $(name) ncmReplayM28 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 28 if score $(name) ncmReplayM28 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 29 if score $(name) ncmReplayH29 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 29 if score $(name) ncmReplayF29 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 29 unless score $(name) ncmReplayF29 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 29 if score $(name) ncmReplayM29 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 29 if score $(name) ncmReplayM29 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 29 if score $(name) ncmReplayM29 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 29 if score $(name) ncmReplayM29 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 29 if score $(name) ncmReplayM29 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 30 if score $(name) ncmReplayH30 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 30 if score $(name) ncmReplayF30 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 30 unless score $(name) ncmReplayF30 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 30 if score $(name) ncmReplayM30 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 30 if score $(name) ncmReplayM30 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 30 if score $(name) ncmReplayM30 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 30 if score $(name) ncmReplayM30 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 30 if score $(name) ncmReplayM30 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 31 if score $(name) ncmReplayH31 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 31 if score $(name) ncmReplayF31 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 31 unless score $(name) ncmReplayF31 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 31 if score $(name) ncmReplayM31 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 31 if score $(name) ncmReplayM31 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 31 if score $(name) ncmReplayM31 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 31 if score $(name) ncmReplayM31 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 31 if score $(name) ncmReplayM31 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 32 if score $(name) ncmReplayH32 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 32 if score $(name) ncmReplayF32 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 32 unless score $(name) ncmReplayF32 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 32 if score $(name) ncmReplayM32 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 32 if score $(name) ncmReplayM32 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 32 if score $(name) ncmReplayM32 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 32 if score $(name) ncmReplayM32 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 32 if score $(name) ncmReplayM32 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 33 if score $(name) ncmReplayH33 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 33 if score $(name) ncmReplayF33 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 33 unless score $(name) ncmReplayF33 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 33 if score $(name) ncmReplayM33 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 33 if score $(name) ncmReplayM33 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 33 if score $(name) ncmReplayM33 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 33 if score $(name) ncmReplayM33 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 33 if score $(name) ncmReplayM33 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 34 if score $(name) ncmReplayH34 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 34 if score $(name) ncmReplayF34 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 34 unless score $(name) ncmReplayF34 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 34 if score $(name) ncmReplayM34 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 34 if score $(name) ncmReplayM34 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 34 if score $(name) ncmReplayM34 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 34 if score $(name) ncmReplayM34 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 34 if score $(name) ncmReplayM34 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 35 if score $(name) ncmReplayH35 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 35 if score $(name) ncmReplayF35 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 35 unless score $(name) ncmReplayF35 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 35 if score $(name) ncmReplayM35 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 35 if score $(name) ncmReplayM35 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 35 if score $(name) ncmReplayM35 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 35 if score $(name) ncmReplayM35 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 35 if score $(name) ncmReplayM35 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 36 if score $(name) ncmReplayH36 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 36 if score $(name) ncmReplayF36 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 36 unless score $(name) ncmReplayF36 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 36 if score $(name) ncmReplayM36 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 36 if score $(name) ncmReplayM36 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 36 if score $(name) ncmReplayM36 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 36 if score $(name) ncmReplayM36 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 36 if score $(name) ncmReplayM36 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 37 if score $(name) ncmReplayH37 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 37 if score $(name) ncmReplayF37 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 37 unless score $(name) ncmReplayF37 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 37 if score $(name) ncmReplayM37 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 37 if score $(name) ncmReplayM37 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 37 if score $(name) ncmReplayM37 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 37 if score $(name) ncmReplayM37 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 37 if score $(name) ncmReplayM37 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 38 if score $(name) ncmReplayH38 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 38 if score $(name) ncmReplayF38 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 38 unless score $(name) ncmReplayF38 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 38 if score $(name) ncmReplayM38 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 38 if score $(name) ncmReplayM38 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 38 if score $(name) ncmReplayM38 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 38 if score $(name) ncmReplayM38 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 38 if score $(name) ncmReplayM38 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 39 if score $(name) ncmReplayH39 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 39 if score $(name) ncmReplayF39 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 39 unless score $(name) ncmReplayF39 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 39 if score $(name) ncmReplayM39 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 39 if score $(name) ncmReplayM39 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 39 if score $(name) ncmReplayM39 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 39 if score $(name) ncmReplayM39 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 39 if score $(name) ncmReplayM39 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 40 if score $(name) ncmReplayH40 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 40 if score $(name) ncmReplayF40 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 40 unless score $(name) ncmReplayF40 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 40 if score $(name) ncmReplayM40 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 40 if score $(name) ncmReplayM40 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 40 if score $(name) ncmReplayM40 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 40 if score $(name) ncmReplayM40 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 40 if score $(name) ncmReplayM40 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 41 if score $(name) ncmReplayH41 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 41 if score $(name) ncmReplayF41 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 41 unless score $(name) ncmReplayF41 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 41 if score $(name) ncmReplayM41 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 41 if score $(name) ncmReplayM41 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 41 if score $(name) ncmReplayM41 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 41 if score $(name) ncmReplayM41 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 41 if score $(name) ncmReplayM41 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 42 if score $(name) ncmReplayH42 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 42 if score $(name) ncmReplayF42 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 42 unless score $(name) ncmReplayF42 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 42 if score $(name) ncmReplayM42 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 42 if score $(name) ncmReplayM42 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 42 if score $(name) ncmReplayM42 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 42 if score $(name) ncmReplayM42 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 42 if score $(name) ncmReplayM42 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 43 if score $(name) ncmReplayH43 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 43 if score $(name) ncmReplayF43 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 43 unless score $(name) ncmReplayF43 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 43 if score $(name) ncmReplayM43 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 43 if score $(name) ncmReplayM43 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 43 if score $(name) ncmReplayM43 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 43 if score $(name) ncmReplayM43 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 43 if score $(name) ncmReplayM43 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 44 if score $(name) ncmReplayH44 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 44 if score $(name) ncmReplayF44 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 44 unless score $(name) ncmReplayF44 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 44 if score $(name) ncmReplayM44 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 44 if score $(name) ncmReplayM44 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 44 if score $(name) ncmReplayM44 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 44 if score $(name) ncmReplayM44 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 44 if score $(name) ncmReplayM44 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 45 if score $(name) ncmReplayH45 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 45 if score $(name) ncmReplayF45 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 45 unless score $(name) ncmReplayF45 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 45 if score $(name) ncmReplayM45 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 45 if score $(name) ncmReplayM45 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 45 if score $(name) ncmReplayM45 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 45 if score $(name) ncmReplayM45 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 45 if score $(name) ncmReplayM45 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 46 if score $(name) ncmReplayH46 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 46 if score $(name) ncmReplayF46 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 46 unless score $(name) ncmReplayF46 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 46 if score $(name) ncmReplayM46 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 46 if score $(name) ncmReplayM46 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 46 if score $(name) ncmReplayM46 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 46 if score $(name) ncmReplayM46 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 46 if score $(name) ncmReplayM46 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 47 if score $(name) ncmReplayH47 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 47 if score $(name) ncmReplayF47 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 47 unless score $(name) ncmReplayF47 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 47 if score $(name) ncmReplayM47 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 47 if score $(name) ncmReplayM47 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 47 if score $(name) ncmReplayM47 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 47 if score $(name) ncmReplayM47 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 47 if score $(name) ncmReplayM47 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 48 if score $(name) ncmReplayH48 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 48 if score $(name) ncmReplayF48 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 48 unless score $(name) ncmReplayF48 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 48 if score $(name) ncmReplayM48 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 48 if score $(name) ncmReplayM48 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 48 if score $(name) ncmReplayM48 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 48 if score $(name) ncmReplayM48 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 48 if score $(name) ncmReplayM48 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 49 if score $(name) ncmReplayH49 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 49 if score $(name) ncmReplayF49 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 49 unless score $(name) ncmReplayF49 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 49 if score $(name) ncmReplayM49 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 49 if score $(name) ncmReplayM49 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 49 if score $(name) ncmReplayM49 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 49 if score $(name) ncmReplayM49 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 49 if score $(name) ncmReplayM49 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 50 if score $(name) ncmReplayH50 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 50 if score $(name) ncmReplayF50 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 50 unless score $(name) ncmReplayF50 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 50 if score $(name) ncmReplayM50 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 50 if score $(name) ncmReplayM50 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 50 if score $(name) ncmReplayM50 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 50 if score $(name) ncmReplayM50 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 50 if score $(name) ncmReplayM50 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 51 if score $(name) ncmReplayH51 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 51 if score $(name) ncmReplayF51 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 51 unless score $(name) ncmReplayF51 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 51 if score $(name) ncmReplayM51 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 51 if score $(name) ncmReplayM51 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 51 if score $(name) ncmReplayM51 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 51 if score $(name) ncmReplayM51 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 51 if score $(name) ncmReplayM51 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 52 if score $(name) ncmReplayH52 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 52 if score $(name) ncmReplayF52 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 52 unless score $(name) ncmReplayF52 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 52 if score $(name) ncmReplayM52 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 52 if score $(name) ncmReplayM52 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 52 if score $(name) ncmReplayM52 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 52 if score $(name) ncmReplayM52 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 52 if score $(name) ncmReplayM52 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 53 if score $(name) ncmReplayH53 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 53 if score $(name) ncmReplayF53 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 53 unless score $(name) ncmReplayF53 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 53 if score $(name) ncmReplayM53 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 53 if score $(name) ncmReplayM53 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 53 if score $(name) ncmReplayM53 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 53 if score $(name) ncmReplayM53 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 53 if score $(name) ncmReplayM53 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 54 if score $(name) ncmReplayH54 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 54 if score $(name) ncmReplayF54 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 54 unless score $(name) ncmReplayF54 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 54 if score $(name) ncmReplayM54 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 54 if score $(name) ncmReplayM54 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 54 if score $(name) ncmReplayM54 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 54 if score $(name) ncmReplayM54 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 54 if score $(name) ncmReplayM54 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 55 if score $(name) ncmReplayH55 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 55 if score $(name) ncmReplayF55 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 55 unless score $(name) ncmReplayF55 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 55 if score $(name) ncmReplayM55 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 55 if score $(name) ncmReplayM55 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 55 if score $(name) ncmReplayM55 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 55 if score $(name) ncmReplayM55 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 55 if score $(name) ncmReplayM55 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 56 if score $(name) ncmReplayH56 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 56 if score $(name) ncmReplayF56 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 56 unless score $(name) ncmReplayF56 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 56 if score $(name) ncmReplayM56 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 56 if score $(name) ncmReplayM56 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 56 if score $(name) ncmReplayM56 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 56 if score $(name) ncmReplayM56 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 56 if score $(name) ncmReplayM56 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 57 if score $(name) ncmReplayH57 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 57 if score $(name) ncmReplayF57 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 57 unless score $(name) ncmReplayF57 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 57 if score $(name) ncmReplayM57 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 57 if score $(name) ncmReplayM57 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 57 if score $(name) ncmReplayM57 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 57 if score $(name) ncmReplayM57 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 57 if score $(name) ncmReplayM57 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 58 if score $(name) ncmReplayH58 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 58 if score $(name) ncmReplayF58 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 58 unless score $(name) ncmReplayF58 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 58 if score $(name) ncmReplayM58 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 58 if score $(name) ncmReplayM58 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 58 if score $(name) ncmReplayM58 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 58 if score $(name) ncmReplayM58 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 58 if score $(name) ncmReplayM58 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 59 if score $(name) ncmReplayH59 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 59 if score $(name) ncmReplayF59 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 59 unless score $(name) ncmReplayF59 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 59 if score $(name) ncmReplayM59 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 59 if score $(name) ncmReplayM59 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 59 if score $(name) ncmReplayM59 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 59 if score $(name) ncmReplayM59 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 59 if score $(name) ncmReplayM59 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 60 if score $(name) ncmReplayH60 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 60 if score $(name) ncmReplayF60 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 60 unless score $(name) ncmReplayF60 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 60 if score $(name) ncmReplayM60 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 60 if score $(name) ncmReplayM60 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 60 if score $(name) ncmReplayM60 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 60 if score $(name) ncmReplayM60 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 60 if score $(name) ncmReplayM60 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 61 if score $(name) ncmReplayH61 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 61 if score $(name) ncmReplayF61 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 61 unless score $(name) ncmReplayF61 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 61 if score $(name) ncmReplayM61 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 61 if score $(name) ncmReplayM61 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 61 if score $(name) ncmReplayM61 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 61 if score $(name) ncmReplayM61 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 61 if score $(name) ncmReplayM61 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 62 if score $(name) ncmReplayH62 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 62 if score $(name) ncmReplayF62 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 62 unless score $(name) ncmReplayF62 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 62 if score $(name) ncmReplayM62 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 62 if score $(name) ncmReplayM62 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 62 if score $(name) ncmReplayM62 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 62 if score $(name) ncmReplayM62 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 62 if score $(name) ncmReplayM62 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 63 if score $(name) ncmReplayH63 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 63 if score $(name) ncmReplayF63 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 63 unless score $(name) ncmReplayF63 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 63 if score $(name) ncmReplayM63 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 63 if score $(name) ncmReplayM63 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 63 if score $(name) ncmReplayM63 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 63 if score $(name) ncmReplayM63 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 63 if score $(name) ncmReplayM63 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 64 if score $(name) ncmReplayH64 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 64 if score $(name) ncmReplayF64 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 64 unless score $(name) ncmReplayF64 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 64 if score $(name) ncmReplayM64 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 64 if score $(name) ncmReplayM64 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 64 if score $(name) ncmReplayM64 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 64 if score $(name) ncmReplayM64 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 64 if score $(name) ncmReplayM64 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 65 if score $(name) ncmReplayH65 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 65 if score $(name) ncmReplayF65 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 65 unless score $(name) ncmReplayF65 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 65 if score $(name) ncmReplayM65 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 65 if score $(name) ncmReplayM65 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 65 if score $(name) ncmReplayM65 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 65 if score $(name) ncmReplayM65 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 65 if score $(name) ncmReplayM65 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 66 if score $(name) ncmReplayH66 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 66 if score $(name) ncmReplayF66 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 66 unless score $(name) ncmReplayF66 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 66 if score $(name) ncmReplayM66 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 66 if score $(name) ncmReplayM66 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 66 if score $(name) ncmReplayM66 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 66 if score $(name) ncmReplayM66 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 66 if score $(name) ncmReplayM66 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 67 if score $(name) ncmReplayH67 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 67 if score $(name) ncmReplayF67 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 67 unless score $(name) ncmReplayF67 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 67 if score $(name) ncmReplayM67 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 67 if score $(name) ncmReplayM67 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 67 if score $(name) ncmReplayM67 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 67 if score $(name) ncmReplayM67 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 67 if score $(name) ncmReplayM67 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 68 if score $(name) ncmReplayH68 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 68 if score $(name) ncmReplayF68 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 68 unless score $(name) ncmReplayF68 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 68 if score $(name) ncmReplayM68 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 68 if score $(name) ncmReplayM68 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 68 if score $(name) ncmReplayM68 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 68 if score $(name) ncmReplayM68 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 68 if score $(name) ncmReplayM68 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 69 if score $(name) ncmReplayH69 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 69 if score $(name) ncmReplayF69 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 69 unless score $(name) ncmReplayF69 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 69 if score $(name) ncmReplayM69 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 69 if score $(name) ncmReplayM69 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 69 if score $(name) ncmReplayM69 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 69 if score $(name) ncmReplayM69 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 69 if score $(name) ncmReplayM69 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 70 if score $(name) ncmReplayH70 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 70 if score $(name) ncmReplayF70 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 70 unless score $(name) ncmReplayF70 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 70 if score $(name) ncmReplayM70 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 70 if score $(name) ncmReplayM70 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 70 if score $(name) ncmReplayM70 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 70 if score $(name) ncmReplayM70 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 70 if score $(name) ncmReplayM70 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 71 if score $(name) ncmReplayH71 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 71 if score $(name) ncmReplayF71 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 71 unless score $(name) ncmReplayF71 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 71 if score $(name) ncmReplayM71 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 71 if score $(name) ncmReplayM71 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 71 if score $(name) ncmReplayM71 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 71 if score $(name) ncmReplayM71 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 71 if score $(name) ncmReplayM71 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 72 if score $(name) ncmReplayH72 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 72 if score $(name) ncmReplayF72 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 72 unless score $(name) ncmReplayF72 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 72 if score $(name) ncmReplayM72 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 72 if score $(name) ncmReplayM72 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 72 if score $(name) ncmReplayM72 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 72 if score $(name) ncmReplayM72 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 72 if score $(name) ncmReplayM72 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 73 if score $(name) ncmReplayH73 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 73 if score $(name) ncmReplayF73 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 73 unless score $(name) ncmReplayF73 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 73 if score $(name) ncmReplayM73 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 73 if score $(name) ncmReplayM73 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 73 if score $(name) ncmReplayM73 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 73 if score $(name) ncmReplayM73 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 73 if score $(name) ncmReplayM73 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 74 if score $(name) ncmReplayH74 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 74 if score $(name) ncmReplayF74 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 74 unless score $(name) ncmReplayF74 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 74 if score $(name) ncmReplayM74 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 74 if score $(name) ncmReplayM74 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 74 if score $(name) ncmReplayM74 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 74 if score $(name) ncmReplayM74 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 74 if score $(name) ncmReplayM74 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 75 if score $(name) ncmReplayH75 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 75 if score $(name) ncmReplayF75 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 75 unless score $(name) ncmReplayF75 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 75 if score $(name) ncmReplayM75 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 75 if score $(name) ncmReplayM75 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 75 if score $(name) ncmReplayM75 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 75 if score $(name) ncmReplayM75 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 75 if score $(name) ncmReplayM75 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 76 if score $(name) ncmReplayH76 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 76 if score $(name) ncmReplayF76 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 76 unless score $(name) ncmReplayF76 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 76 if score $(name) ncmReplayM76 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 76 if score $(name) ncmReplayM76 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 76 if score $(name) ncmReplayM76 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 76 if score $(name) ncmReplayM76 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 76 if score $(name) ncmReplayM76 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 77 if score $(name) ncmReplayH77 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 77 if score $(name) ncmReplayF77 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 77 unless score $(name) ncmReplayF77 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 77 if score $(name) ncmReplayM77 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 77 if score $(name) ncmReplayM77 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 77 if score $(name) ncmReplayM77 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 77 if score $(name) ncmReplayM77 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 77 if score $(name) ncmReplayM77 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 78 if score $(name) ncmReplayH78 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 78 if score $(name) ncmReplayF78 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 78 unless score $(name) ncmReplayF78 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 78 if score $(name) ncmReplayM78 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 78 if score $(name) ncmReplayM78 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 78 if score $(name) ncmReplayM78 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 78 if score $(name) ncmReplayM78 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 78 if score $(name) ncmReplayM78 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 79 if score $(name) ncmReplayH79 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 79 if score $(name) ncmReplayF79 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 79 unless score $(name) ncmReplayF79 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 79 if score $(name) ncmReplayM79 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 79 if score $(name) ncmReplayM79 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 79 if score $(name) ncmReplayM79 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 79 if score $(name) ncmReplayM79 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 79 if score $(name) ncmReplayM79 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 80 if score $(name) ncmReplayH80 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 80 if score $(name) ncmReplayF80 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 80 unless score $(name) ncmReplayF80 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 80 if score $(name) ncmReplayM80 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 80 if score $(name) ncmReplayM80 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 80 if score $(name) ncmReplayM80 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 80 if score $(name) ncmReplayM80 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 80 if score $(name) ncmReplayM80 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 81 if score $(name) ncmReplayH81 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 81 if score $(name) ncmReplayF81 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 81 unless score $(name) ncmReplayF81 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 81 if score $(name) ncmReplayM81 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 81 if score $(name) ncmReplayM81 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 81 if score $(name) ncmReplayM81 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 81 if score $(name) ncmReplayM81 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 81 if score $(name) ncmReplayM81 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 82 if score $(name) ncmReplayH82 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 82 if score $(name) ncmReplayF82 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 82 unless score $(name) ncmReplayF82 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 82 if score $(name) ncmReplayM82 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 82 if score $(name) ncmReplayM82 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 82 if score $(name) ncmReplayM82 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 82 if score $(name) ncmReplayM82 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 82 if score $(name) ncmReplayM82 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 83 if score $(name) ncmReplayH83 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 83 if score $(name) ncmReplayF83 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 83 unless score $(name) ncmReplayF83 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 83 if score $(name) ncmReplayM83 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 83 if score $(name) ncmReplayM83 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 83 if score $(name) ncmReplayM83 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 83 if score $(name) ncmReplayM83 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 83 if score $(name) ncmReplayM83 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 84 if score $(name) ncmReplayH84 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 84 if score $(name) ncmReplayF84 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 84 unless score $(name) ncmReplayF84 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 84 if score $(name) ncmReplayM84 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 84 if score $(name) ncmReplayM84 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 84 if score $(name) ncmReplayM84 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 84 if score $(name) ncmReplayM84 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 84 if score $(name) ncmReplayM84 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 85 if score $(name) ncmReplayH85 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 85 if score $(name) ncmReplayF85 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 85 unless score $(name) ncmReplayF85 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 85 if score $(name) ncmReplayM85 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 85 if score $(name) ncmReplayM85 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 85 if score $(name) ncmReplayM85 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 85 if score $(name) ncmReplayM85 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 85 if score $(name) ncmReplayM85 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 86 if score $(name) ncmReplayH86 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 86 if score $(name) ncmReplayF86 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 86 unless score $(name) ncmReplayF86 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 86 if score $(name) ncmReplayM86 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 86 if score $(name) ncmReplayM86 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 86 if score $(name) ncmReplayM86 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 86 if score $(name) ncmReplayM86 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 86 if score $(name) ncmReplayM86 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 87 if score $(name) ncmReplayH87 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 87 if score $(name) ncmReplayF87 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 87 unless score $(name) ncmReplayF87 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 87 if score $(name) ncmReplayM87 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 87 if score $(name) ncmReplayM87 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 87 if score $(name) ncmReplayM87 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 87 if score $(name) ncmReplayM87 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 87 if score $(name) ncmReplayM87 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 88 if score $(name) ncmReplayH88 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 88 if score $(name) ncmReplayF88 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 88 unless score $(name) ncmReplayF88 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 88 if score $(name) ncmReplayM88 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 88 if score $(name) ncmReplayM88 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 88 if score $(name) ncmReplayM88 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 88 if score $(name) ncmReplayM88 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 88 if score $(name) ncmReplayM88 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 89 if score $(name) ncmReplayH89 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 89 if score $(name) ncmReplayF89 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 89 unless score $(name) ncmReplayF89 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 89 if score $(name) ncmReplayM89 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 89 if score $(name) ncmReplayM89 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 89 if score $(name) ncmReplayM89 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 89 if score $(name) ncmReplayM89 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 89 if score $(name) ncmReplayM89 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 90 if score $(name) ncmReplayH90 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 90 if score $(name) ncmReplayF90 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 90 unless score $(name) ncmReplayF90 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 90 if score $(name) ncmReplayM90 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 90 if score $(name) ncmReplayM90 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 90 if score $(name) ncmReplayM90 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 90 if score $(name) ncmReplayM90 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 90 if score $(name) ncmReplayM90 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 91 if score $(name) ncmReplayH91 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 91 if score $(name) ncmReplayF91 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 91 unless score $(name) ncmReplayF91 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 91 if score $(name) ncmReplayM91 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 91 if score $(name) ncmReplayM91 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 91 if score $(name) ncmReplayM91 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 91 if score $(name) ncmReplayM91 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 91 if score $(name) ncmReplayM91 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 92 if score $(name) ncmReplayH92 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 92 if score $(name) ncmReplayF92 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 92 unless score $(name) ncmReplayF92 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 92 if score $(name) ncmReplayM92 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 92 if score $(name) ncmReplayM92 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 92 if score $(name) ncmReplayM92 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 92 if score $(name) ncmReplayM92 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 92 if score $(name) ncmReplayM92 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 93 if score $(name) ncmReplayH93 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 93 if score $(name) ncmReplayF93 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 93 unless score $(name) ncmReplayF93 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 93 if score $(name) ncmReplayM93 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 93 if score $(name) ncmReplayM93 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 93 if score $(name) ncmReplayM93 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 93 if score $(name) ncmReplayM93 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 93 if score $(name) ncmReplayM93 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 94 if score $(name) ncmReplayH94 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 94 if score $(name) ncmReplayF94 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 94 unless score $(name) ncmReplayF94 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 94 if score $(name) ncmReplayM94 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 94 if score $(name) ncmReplayM94 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 94 if score $(name) ncmReplayM94 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 94 if score $(name) ncmReplayM94 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 94 if score $(name) ncmReplayM94 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 95 if score $(name) ncmReplayH95 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 95 if score $(name) ncmReplayF95 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 95 unless score $(name) ncmReplayF95 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 95 if score $(name) ncmReplayM95 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 95 if score $(name) ncmReplayM95 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 95 if score $(name) ncmReplayM95 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 95 if score $(name) ncmReplayM95 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 95 if score $(name) ncmReplayM95 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 96 if score $(name) ncmReplayH96 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 96 if score $(name) ncmReplayF96 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 96 unless score $(name) ncmReplayF96 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 96 if score $(name) ncmReplayM96 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 96 if score $(name) ncmReplayM96 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 96 if score $(name) ncmReplayM96 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 96 if score $(name) ncmReplayM96 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 96 if score $(name) ncmReplayM96 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 97 if score $(name) ncmReplayH97 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 97 if score $(name) ncmReplayF97 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 97 unless score $(name) ncmReplayF97 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 97 if score $(name) ncmReplayM97 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 97 if score $(name) ncmReplayM97 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 97 if score $(name) ncmReplayM97 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 97 if score $(name) ncmReplayM97 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 97 if score $(name) ncmReplayM97 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 98 if score $(name) ncmReplayH98 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 98 if score $(name) ncmReplayF98 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 98 unless score $(name) ncmReplayF98 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 98 if score $(name) ncmReplayM98 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 98 if score $(name) ncmReplayM98 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 98 if score $(name) ncmReplayM98 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 98 if score $(name) ncmReplayM98 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 98 if score $(name) ncmReplayM98 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 99 if score $(name) ncmReplayH99 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 99 if score $(name) ncmReplayF99 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 99 unless score $(name) ncmReplayF99 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 99 if score $(name) ncmReplayM99 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 99 if score $(name) ncmReplayM99 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 99 if score $(name) ncmReplayM99 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 99 if score $(name) ncmReplayM99 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 99 if score $(name) ncmReplayM99 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping
$execute if score @s ncmReplayTick matches 100 if score $(name) ncmReplayH100 matches 1 run damage @e[team=NCMReplay,limit=1] 0
$execute if score @s ncmReplayTick matches 100 if score $(name) ncmReplayF100 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 1
$execute if score @s ncmReplayTick matches 100 unless score $(name) ncmReplayF100 matches 1 run data modify entity @e[team=NCMReplay,limit=1] HasVisualFire set value 0
$execute if score @s ncmReplayTick matches 100 if score $(name) ncmReplayM100 matches 0 run data modify entity @e[team=NCMReplay,limit=1] pose set value standing
$execute if score @s ncmReplayTick matches 100 if score $(name) ncmReplayM100 matches 1 run data modify entity @e[team=NCMReplay,limit=1] pose set value crouching
$execute if score @s ncmReplayTick matches 100 if score $(name) ncmReplayM100 matches 3 run data modify entity @e[team=NCMReplay,limit=1] pose set value fall_flying
$execute if score @s ncmReplayTick matches 100 if score $(name) ncmReplayM100 matches 4 run data modify entity @e[team=NCMReplay,limit=1] pose set value swimming
$execute if score @s ncmReplayTick matches 100 if score $(name) ncmReplayM100 matches 5 run data modify entity @e[team=NCMReplay,limit=1] pose set value sleeping





$execute if score @s ncmReplayTick matches 1 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX1
$execute if score @s ncmReplayTick matches 1 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY1
$execute if score @s ncmReplayTick matches 1 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ1
$execute if score @s ncmReplayTick matches 1 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw1
$execute if score @s ncmReplayTick matches 1 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch1
$execute if score @s ncmReplayTick matches 2 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX2
$execute if score @s ncmReplayTick matches 2 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY2
$execute if score @s ncmReplayTick matches 2 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ2
$execute if score @s ncmReplayTick matches 2 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw2
$execute if score @s ncmReplayTick matches 2 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch2
$execute if score @s ncmReplayTick matches 3 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX3
$execute if score @s ncmReplayTick matches 3 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY3
$execute if score @s ncmReplayTick matches 3 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ3
$execute if score @s ncmReplayTick matches 3 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw3
$execute if score @s ncmReplayTick matches 3 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch3
$execute if score @s ncmReplayTick matches 4 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX4
$execute if score @s ncmReplayTick matches 4 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY4
$execute if score @s ncmReplayTick matches 4 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ4
$execute if score @s ncmReplayTick matches 4 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw4
$execute if score @s ncmReplayTick matches 4 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch4
$execute if score @s ncmReplayTick matches 5 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX5
$execute if score @s ncmReplayTick matches 5 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY5
$execute if score @s ncmReplayTick matches 5 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ5
$execute if score @s ncmReplayTick matches 5 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw5
$execute if score @s ncmReplayTick matches 5 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch5
$execute if score @s ncmReplayTick matches 6 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX6
$execute if score @s ncmReplayTick matches 6 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY6
$execute if score @s ncmReplayTick matches 6 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ6
$execute if score @s ncmReplayTick matches 6 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw6
$execute if score @s ncmReplayTick matches 6 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch6
$execute if score @s ncmReplayTick matches 7 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX7
$execute if score @s ncmReplayTick matches 7 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY7
$execute if score @s ncmReplayTick matches 7 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ7
$execute if score @s ncmReplayTick matches 7 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw7
$execute if score @s ncmReplayTick matches 7 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch7
$execute if score @s ncmReplayTick matches 8 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX8
$execute if score @s ncmReplayTick matches 8 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY8
$execute if score @s ncmReplayTick matches 8 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ8
$execute if score @s ncmReplayTick matches 8 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw8
$execute if score @s ncmReplayTick matches 8 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch8
$execute if score @s ncmReplayTick matches 9 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX9
$execute if score @s ncmReplayTick matches 9 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY9
$execute if score @s ncmReplayTick matches 9 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ9
$execute if score @s ncmReplayTick matches 9 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw9
$execute if score @s ncmReplayTick matches 9 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch9
$execute if score @s ncmReplayTick matches 10 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX10
$execute if score @s ncmReplayTick matches 10 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY10
$execute if score @s ncmReplayTick matches 10 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ10
$execute if score @s ncmReplayTick matches 10 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw10
$execute if score @s ncmReplayTick matches 10 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch10
$execute if score @s ncmReplayTick matches 11 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX11
$execute if score @s ncmReplayTick matches 11 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY11
$execute if score @s ncmReplayTick matches 11 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ11
$execute if score @s ncmReplayTick matches 11 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw11
$execute if score @s ncmReplayTick matches 11 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch11
$execute if score @s ncmReplayTick matches 12 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX12
$execute if score @s ncmReplayTick matches 12 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY12
$execute if score @s ncmReplayTick matches 12 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ12
$execute if score @s ncmReplayTick matches 12 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw12
$execute if score @s ncmReplayTick matches 12 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch12
$execute if score @s ncmReplayTick matches 13 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX13
$execute if score @s ncmReplayTick matches 13 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY13
$execute if score @s ncmReplayTick matches 13 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ13
$execute if score @s ncmReplayTick matches 13 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw13
$execute if score @s ncmReplayTick matches 13 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch13
$execute if score @s ncmReplayTick matches 14 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX14
$execute if score @s ncmReplayTick matches 14 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY14
$execute if score @s ncmReplayTick matches 14 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ14
$execute if score @s ncmReplayTick matches 14 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw14
$execute if score @s ncmReplayTick matches 14 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch14
$execute if score @s ncmReplayTick matches 15 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX15
$execute if score @s ncmReplayTick matches 15 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY15
$execute if score @s ncmReplayTick matches 15 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ15
$execute if score @s ncmReplayTick matches 15 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw15
$execute if score @s ncmReplayTick matches 15 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch15
$execute if score @s ncmReplayTick matches 16 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX16
$execute if score @s ncmReplayTick matches 16 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY16
$execute if score @s ncmReplayTick matches 16 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ16
$execute if score @s ncmReplayTick matches 16 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw16
$execute if score @s ncmReplayTick matches 16 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch16
$execute if score @s ncmReplayTick matches 17 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX17
$execute if score @s ncmReplayTick matches 17 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY17
$execute if score @s ncmReplayTick matches 17 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ17
$execute if score @s ncmReplayTick matches 17 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw17
$execute if score @s ncmReplayTick matches 17 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch17
$execute if score @s ncmReplayTick matches 18 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX18
$execute if score @s ncmReplayTick matches 18 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY18
$execute if score @s ncmReplayTick matches 18 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ18
$execute if score @s ncmReplayTick matches 18 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw18
$execute if score @s ncmReplayTick matches 18 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch18
$execute if score @s ncmReplayTick matches 19 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX19
$execute if score @s ncmReplayTick matches 19 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY19
$execute if score @s ncmReplayTick matches 19 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ19
$execute if score @s ncmReplayTick matches 19 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw19
$execute if score @s ncmReplayTick matches 19 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch19
$execute if score @s ncmReplayTick matches 20 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX20
$execute if score @s ncmReplayTick matches 20 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY20
$execute if score @s ncmReplayTick matches 20 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ20
$execute if score @s ncmReplayTick matches 20 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw20
$execute if score @s ncmReplayTick matches 20 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch20

$execute if score @s ncmReplayTick matches 21 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX21
$execute if score @s ncmReplayTick matches 21 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY21
$execute if score @s ncmReplayTick matches 21 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ21
$execute if score @s ncmReplayTick matches 21 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw21
$execute if score @s ncmReplayTick matches 21 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch21
$execute if score @s ncmReplayTick matches 22 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX22
$execute if score @s ncmReplayTick matches 22 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY22
$execute if score @s ncmReplayTick matches 22 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ22
$execute if score @s ncmReplayTick matches 22 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw22
$execute if score @s ncmReplayTick matches 22 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch22
$execute if score @s ncmReplayTick matches 23 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX23
$execute if score @s ncmReplayTick matches 23 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY23
$execute if score @s ncmReplayTick matches 23 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ23
$execute if score @s ncmReplayTick matches 23 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw23
$execute if score @s ncmReplayTick matches 23 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch23
$execute if score @s ncmReplayTick matches 24 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX24
$execute if score @s ncmReplayTick matches 24 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY24
$execute if score @s ncmReplayTick matches 24 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ24
$execute if score @s ncmReplayTick matches 24 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw24
$execute if score @s ncmReplayTick matches 24 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch24
$execute if score @s ncmReplayTick matches 25 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX25
$execute if score @s ncmReplayTick matches 25 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY25
$execute if score @s ncmReplayTick matches 25 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ25
$execute if score @s ncmReplayTick matches 25 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw25
$execute if score @s ncmReplayTick matches 25 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch25
$execute if score @s ncmReplayTick matches 26 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX26
$execute if score @s ncmReplayTick matches 26 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY26
$execute if score @s ncmReplayTick matches 26 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ26
$execute if score @s ncmReplayTick matches 26 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw26
$execute if score @s ncmReplayTick matches 26 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch26
$execute if score @s ncmReplayTick matches 27 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX27
$execute if score @s ncmReplayTick matches 27 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY27
$execute if score @s ncmReplayTick matches 27 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ27
$execute if score @s ncmReplayTick matches 27 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw27
$execute if score @s ncmReplayTick matches 27 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch27
$execute if score @s ncmReplayTick matches 28 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX28
$execute if score @s ncmReplayTick matches 28 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY28
$execute if score @s ncmReplayTick matches 28 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ28
$execute if score @s ncmReplayTick matches 28 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw28
$execute if score @s ncmReplayTick matches 28 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch28
$execute if score @s ncmReplayTick matches 29 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX29
$execute if score @s ncmReplayTick matches 29 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY29
$execute if score @s ncmReplayTick matches 29 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ29
$execute if score @s ncmReplayTick matches 29 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw29
$execute if score @s ncmReplayTick matches 29 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch29
$execute if score @s ncmReplayTick matches 30 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX30
$execute if score @s ncmReplayTick matches 30 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY30
$execute if score @s ncmReplayTick matches 30 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ30
$execute if score @s ncmReplayTick matches 30 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw30
$execute if score @s ncmReplayTick matches 30 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch30
$execute if score @s ncmReplayTick matches 31 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX31
$execute if score @s ncmReplayTick matches 31 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY31
$execute if score @s ncmReplayTick matches 31 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ31
$execute if score @s ncmReplayTick matches 31 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw31
$execute if score @s ncmReplayTick matches 31 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch31
$execute if score @s ncmReplayTick matches 32 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX32
$execute if score @s ncmReplayTick matches 32 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY32
$execute if score @s ncmReplayTick matches 32 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ32
$execute if score @s ncmReplayTick matches 32 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw32
$execute if score @s ncmReplayTick matches 32 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch32
$execute if score @s ncmReplayTick matches 33 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX33
$execute if score @s ncmReplayTick matches 33 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY33
$execute if score @s ncmReplayTick matches 33 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ33
$execute if score @s ncmReplayTick matches 33 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw33
$execute if score @s ncmReplayTick matches 33 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch33
$execute if score @s ncmReplayTick matches 34 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX34
$execute if score @s ncmReplayTick matches 34 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY34
$execute if score @s ncmReplayTick matches 34 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ34
$execute if score @s ncmReplayTick matches 34 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw34
$execute if score @s ncmReplayTick matches 34 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch34
$execute if score @s ncmReplayTick matches 35 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX35
$execute if score @s ncmReplayTick matches 35 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY35
$execute if score @s ncmReplayTick matches 35 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ35
$execute if score @s ncmReplayTick matches 35 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw35
$execute if score @s ncmReplayTick matches 35 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch35
$execute if score @s ncmReplayTick matches 36 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX36
$execute if score @s ncmReplayTick matches 36 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY36
$execute if score @s ncmReplayTick matches 36 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ36
$execute if score @s ncmReplayTick matches 36 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw36
$execute if score @s ncmReplayTick matches 36 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch36
$execute if score @s ncmReplayTick matches 37 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX37
$execute if score @s ncmReplayTick matches 37 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY37
$execute if score @s ncmReplayTick matches 37 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ37
$execute if score @s ncmReplayTick matches 37 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw37
$execute if score @s ncmReplayTick matches 37 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch37
$execute if score @s ncmReplayTick matches 38 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX38
$execute if score @s ncmReplayTick matches 38 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY38
$execute if score @s ncmReplayTick matches 38 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ38
$execute if score @s ncmReplayTick matches 38 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw38
$execute if score @s ncmReplayTick matches 38 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch38
$execute if score @s ncmReplayTick matches 39 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX39
$execute if score @s ncmReplayTick matches 39 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY39
$execute if score @s ncmReplayTick matches 39 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ39
$execute if score @s ncmReplayTick matches 39 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw39
$execute if score @s ncmReplayTick matches 39 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch39
$execute if score @s ncmReplayTick matches 40 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX40
$execute if score @s ncmReplayTick matches 40 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY40
$execute if score @s ncmReplayTick matches 40 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ40
$execute if score @s ncmReplayTick matches 40 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw40
$execute if score @s ncmReplayTick matches 40 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch40

$execute if score @s ncmReplayTick matches 41 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX41
$execute if score @s ncmReplayTick matches 41 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY41
$execute if score @s ncmReplayTick matches 41 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ41
$execute if score @s ncmReplayTick matches 41 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw41
$execute if score @s ncmReplayTick matches 41 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch41
$execute if score @s ncmReplayTick matches 42 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX42
$execute if score @s ncmReplayTick matches 42 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY42
$execute if score @s ncmReplayTick matches 42 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ42
$execute if score @s ncmReplayTick matches 42 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw42
$execute if score @s ncmReplayTick matches 42 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch42
$execute if score @s ncmReplayTick matches 43 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX43
$execute if score @s ncmReplayTick matches 43 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY43
$execute if score @s ncmReplayTick matches 43 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ43
$execute if score @s ncmReplayTick matches 43 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw43
$execute if score @s ncmReplayTick matches 43 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch43
$execute if score @s ncmReplayTick matches 44 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX44
$execute if score @s ncmReplayTick matches 44 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY44
$execute if score @s ncmReplayTick matches 44 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ44
$execute if score @s ncmReplayTick matches 44 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw44
$execute if score @s ncmReplayTick matches 44 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch44
$execute if score @s ncmReplayTick matches 45 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX45
$execute if score @s ncmReplayTick matches 45 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY45
$execute if score @s ncmReplayTick matches 45 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ45
$execute if score @s ncmReplayTick matches 45 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw45
$execute if score @s ncmReplayTick matches 45 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch45
$execute if score @s ncmReplayTick matches 46 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX46
$execute if score @s ncmReplayTick matches 46 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY46
$execute if score @s ncmReplayTick matches 46 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ46
$execute if score @s ncmReplayTick matches 46 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw46
$execute if score @s ncmReplayTick matches 46 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch46
$execute if score @s ncmReplayTick matches 47 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX47
$execute if score @s ncmReplayTick matches 47 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY47
$execute if score @s ncmReplayTick matches 47 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ47
$execute if score @s ncmReplayTick matches 47 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw47
$execute if score @s ncmReplayTick matches 47 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch47
$execute if score @s ncmReplayTick matches 48 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX48
$execute if score @s ncmReplayTick matches 48 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY48
$execute if score @s ncmReplayTick matches 48 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ48
$execute if score @s ncmReplayTick matches 48 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw48
$execute if score @s ncmReplayTick matches 48 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch48
$execute if score @s ncmReplayTick matches 49 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX49
$execute if score @s ncmReplayTick matches 49 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY49
$execute if score @s ncmReplayTick matches 49 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ49
$execute if score @s ncmReplayTick matches 49 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw49
$execute if score @s ncmReplayTick matches 49 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch49
$execute if score @s ncmReplayTick matches 50 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX50
$execute if score @s ncmReplayTick matches 50 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY50
$execute if score @s ncmReplayTick matches 50 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ50
$execute if score @s ncmReplayTick matches 50 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw50
$execute if score @s ncmReplayTick matches 50 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch50
$execute if score @s ncmReplayTick matches 51 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX51
$execute if score @s ncmReplayTick matches 51 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY51
$execute if score @s ncmReplayTick matches 51 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ51
$execute if score @s ncmReplayTick matches 51 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw51
$execute if score @s ncmReplayTick matches 51 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch51
$execute if score @s ncmReplayTick matches 52 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX52
$execute if score @s ncmReplayTick matches 52 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY52
$execute if score @s ncmReplayTick matches 52 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ52
$execute if score @s ncmReplayTick matches 52 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw52
$execute if score @s ncmReplayTick matches 52 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch52
$execute if score @s ncmReplayTick matches 53 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX53
$execute if score @s ncmReplayTick matches 53 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY53
$execute if score @s ncmReplayTick matches 53 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ53
$execute if score @s ncmReplayTick matches 53 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw53
$execute if score @s ncmReplayTick matches 53 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch53
$execute if score @s ncmReplayTick matches 54 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX54
$execute if score @s ncmReplayTick matches 54 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY54
$execute if score @s ncmReplayTick matches 54 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ54
$execute if score @s ncmReplayTick matches 54 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw54
$execute if score @s ncmReplayTick matches 54 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch54
$execute if score @s ncmReplayTick matches 55 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX55
$execute if score @s ncmReplayTick matches 55 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY55
$execute if score @s ncmReplayTick matches 55 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ55
$execute if score @s ncmReplayTick matches 55 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw55
$execute if score @s ncmReplayTick matches 55 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch55
$execute if score @s ncmReplayTick matches 56 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX56
$execute if score @s ncmReplayTick matches 56 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY56
$execute if score @s ncmReplayTick matches 56 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ56
$execute if score @s ncmReplayTick matches 56 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw56
$execute if score @s ncmReplayTick matches 56 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch56
$execute if score @s ncmReplayTick matches 57 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX57
$execute if score @s ncmReplayTick matches 57 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY57
$execute if score @s ncmReplayTick matches 57 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ57
$execute if score @s ncmReplayTick matches 57 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw57
$execute if score @s ncmReplayTick matches 57 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch57
$execute if score @s ncmReplayTick matches 58 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX58
$execute if score @s ncmReplayTick matches 58 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY58
$execute if score @s ncmReplayTick matches 58 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ58
$execute if score @s ncmReplayTick matches 58 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw58
$execute if score @s ncmReplayTick matches 58 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch58
$execute if score @s ncmReplayTick matches 59 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX59
$execute if score @s ncmReplayTick matches 59 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY59
$execute if score @s ncmReplayTick matches 59 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ59
$execute if score @s ncmReplayTick matches 59 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw59
$execute if score @s ncmReplayTick matches 59 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch59
$execute if score @s ncmReplayTick matches 60 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX60
$execute if score @s ncmReplayTick matches 60 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY60
$execute if score @s ncmReplayTick matches 60 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ60
$execute if score @s ncmReplayTick matches 60 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw60
$execute if score @s ncmReplayTick matches 60 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch60

$execute if score @s ncmReplayTick matches 61 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX61
$execute if score @s ncmReplayTick matches 61 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY61
$execute if score @s ncmReplayTick matches 61 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ61
$execute if score @s ncmReplayTick matches 61 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw61
$execute if score @s ncmReplayTick matches 61 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch61
$execute if score @s ncmReplayTick matches 62 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX62
$execute if score @s ncmReplayTick matches 62 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY62
$execute if score @s ncmReplayTick matches 62 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ62
$execute if score @s ncmReplayTick matches 62 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw62
$execute if score @s ncmReplayTick matches 62 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch62
$execute if score @s ncmReplayTick matches 63 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX63
$execute if score @s ncmReplayTick matches 63 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY63
$execute if score @s ncmReplayTick matches 63 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ63
$execute if score @s ncmReplayTick matches 63 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw63
$execute if score @s ncmReplayTick matches 63 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch63
$execute if score @s ncmReplayTick matches 64 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX64
$execute if score @s ncmReplayTick matches 64 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY64
$execute if score @s ncmReplayTick matches 64 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ64
$execute if score @s ncmReplayTick matches 64 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw64
$execute if score @s ncmReplayTick matches 64 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch64
$execute if score @s ncmReplayTick matches 65 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX65
$execute if score @s ncmReplayTick matches 65 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY65
$execute if score @s ncmReplayTick matches 65 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ65
$execute if score @s ncmReplayTick matches 65 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw65
$execute if score @s ncmReplayTick matches 65 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch65
$execute if score @s ncmReplayTick matches 66 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX66
$execute if score @s ncmReplayTick matches 66 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY66
$execute if score @s ncmReplayTick matches 66 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ66
$execute if score @s ncmReplayTick matches 66 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw66
$execute if score @s ncmReplayTick matches 66 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch66
$execute if score @s ncmReplayTick matches 67 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX67
$execute if score @s ncmReplayTick matches 67 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY67
$execute if score @s ncmReplayTick matches 67 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ67
$execute if score @s ncmReplayTick matches 67 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw67
$execute if score @s ncmReplayTick matches 67 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch67
$execute if score @s ncmReplayTick matches 68 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX68
$execute if score @s ncmReplayTick matches 68 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY68
$execute if score @s ncmReplayTick matches 68 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ68
$execute if score @s ncmReplayTick matches 68 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw68
$execute if score @s ncmReplayTick matches 68 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch68
$execute if score @s ncmReplayTick matches 69 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX69
$execute if score @s ncmReplayTick matches 69 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY69
$execute if score @s ncmReplayTick matches 69 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ69
$execute if score @s ncmReplayTick matches 69 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw69
$execute if score @s ncmReplayTick matches 69 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch69
$execute if score @s ncmReplayTick matches 70 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX70
$execute if score @s ncmReplayTick matches 70 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY70
$execute if score @s ncmReplayTick matches 70 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ70
$execute if score @s ncmReplayTick matches 70 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw70
$execute if score @s ncmReplayTick matches 70 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch70
$execute if score @s ncmReplayTick matches 71 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX71
$execute if score @s ncmReplayTick matches 71 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY71
$execute if score @s ncmReplayTick matches 71 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ71
$execute if score @s ncmReplayTick matches 71 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw71
$execute if score @s ncmReplayTick matches 71 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch71
$execute if score @s ncmReplayTick matches 72 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX72
$execute if score @s ncmReplayTick matches 72 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY72
$execute if score @s ncmReplayTick matches 72 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ72
$execute if score @s ncmReplayTick matches 72 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw72
$execute if score @s ncmReplayTick matches 72 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch72
$execute if score @s ncmReplayTick matches 73 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX73
$execute if score @s ncmReplayTick matches 73 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY73
$execute if score @s ncmReplayTick matches 73 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ73
$execute if score @s ncmReplayTick matches 73 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw73
$execute if score @s ncmReplayTick matches 73 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch73
$execute if score @s ncmReplayTick matches 74 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX74
$execute if score @s ncmReplayTick matches 74 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY74
$execute if score @s ncmReplayTick matches 74 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ74
$execute if score @s ncmReplayTick matches 74 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw74
$execute if score @s ncmReplayTick matches 74 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch74
$execute if score @s ncmReplayTick matches 75 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX75
$execute if score @s ncmReplayTick matches 75 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY75
$execute if score @s ncmReplayTick matches 75 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ75
$execute if score @s ncmReplayTick matches 75 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw75
$execute if score @s ncmReplayTick matches 75 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch75
$execute if score @s ncmReplayTick matches 76 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX76
$execute if score @s ncmReplayTick matches 76 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY76
$execute if score @s ncmReplayTick matches 76 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ76
$execute if score @s ncmReplayTick matches 76 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw76
$execute if score @s ncmReplayTick matches 76 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch76
$execute if score @s ncmReplayTick matches 77 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX77
$execute if score @s ncmReplayTick matches 77 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY77
$execute if score @s ncmReplayTick matches 77 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ77
$execute if score @s ncmReplayTick matches 77 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw77
$execute if score @s ncmReplayTick matches 77 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch77
$execute if score @s ncmReplayTick matches 78 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX78
$execute if score @s ncmReplayTick matches 78 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY78
$execute if score @s ncmReplayTick matches 78 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ78
$execute if score @s ncmReplayTick matches 78 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw78
$execute if score @s ncmReplayTick matches 78 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch78
$execute if score @s ncmReplayTick matches 79 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX79
$execute if score @s ncmReplayTick matches 79 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY79
$execute if score @s ncmReplayTick matches 79 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ79
$execute if score @s ncmReplayTick matches 79 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw79
$execute if score @s ncmReplayTick matches 79 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch79
$execute if score @s ncmReplayTick matches 80 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX80
$execute if score @s ncmReplayTick matches 80 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY80
$execute if score @s ncmReplayTick matches 80 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ80
$execute if score @s ncmReplayTick matches 80 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw80
$execute if score @s ncmReplayTick matches 80 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch80

$execute if score @s ncmReplayTick matches 81 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX81
$execute if score @s ncmReplayTick matches 81 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY81
$execute if score @s ncmReplayTick matches 81 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ81
$execute if score @s ncmReplayTick matches 81 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw81
$execute if score @s ncmReplayTick matches 81 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch81
$execute if score @s ncmReplayTick matches 82 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX82
$execute if score @s ncmReplayTick matches 82 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY82
$execute if score @s ncmReplayTick matches 82 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ82
$execute if score @s ncmReplayTick matches 82 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw82
$execute if score @s ncmReplayTick matches 82 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch82
$execute if score @s ncmReplayTick matches 83 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX83
$execute if score @s ncmReplayTick matches 83 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY83
$execute if score @s ncmReplayTick matches 83 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ83
$execute if score @s ncmReplayTick matches 83 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw83
$execute if score @s ncmReplayTick matches 83 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch83
$execute if score @s ncmReplayTick matches 84 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX84
$execute if score @s ncmReplayTick matches 84 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY84
$execute if score @s ncmReplayTick matches 84 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ84
$execute if score @s ncmReplayTick matches 84 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw84
$execute if score @s ncmReplayTick matches 84 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch84
$execute if score @s ncmReplayTick matches 85 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX85
$execute if score @s ncmReplayTick matches 85 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY85
$execute if score @s ncmReplayTick matches 85 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ85
$execute if score @s ncmReplayTick matches 85 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw85
$execute if score @s ncmReplayTick matches 85 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch85
$execute if score @s ncmReplayTick matches 86 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX86
$execute if score @s ncmReplayTick matches 86 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY86
$execute if score @s ncmReplayTick matches 86 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ86
$execute if score @s ncmReplayTick matches 86 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw86
$execute if score @s ncmReplayTick matches 86 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch86
$execute if score @s ncmReplayTick matches 87 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX87
$execute if score @s ncmReplayTick matches 87 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY87
$execute if score @s ncmReplayTick matches 87 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ87
$execute if score @s ncmReplayTick matches 87 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw87
$execute if score @s ncmReplayTick matches 87 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch87
$execute if score @s ncmReplayTick matches 88 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX88
$execute if score @s ncmReplayTick matches 88 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY88
$execute if score @s ncmReplayTick matches 88 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ88
$execute if score @s ncmReplayTick matches 88 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw88
$execute if score @s ncmReplayTick matches 88 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch88
$execute if score @s ncmReplayTick matches 89 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX89
$execute if score @s ncmReplayTick matches 89 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY89
$execute if score @s ncmReplayTick matches 89 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ89
$execute if score @s ncmReplayTick matches 89 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw89
$execute if score @s ncmReplayTick matches 89 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch89
$execute if score @s ncmReplayTick matches 90 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX90
$execute if score @s ncmReplayTick matches 90 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY90
$execute if score @s ncmReplayTick matches 90 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ90
$execute if score @s ncmReplayTick matches 90 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw90
$execute if score @s ncmReplayTick matches 90 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch90
$execute if score @s ncmReplayTick matches 91 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX91
$execute if score @s ncmReplayTick matches 91 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY91
$execute if score @s ncmReplayTick matches 91 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ91
$execute if score @s ncmReplayTick matches 91 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw91
$execute if score @s ncmReplayTick matches 91 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch91
$execute if score @s ncmReplayTick matches 92 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX92
$execute if score @s ncmReplayTick matches 92 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY92
$execute if score @s ncmReplayTick matches 92 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ92
$execute if score @s ncmReplayTick matches 92 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw92
$execute if score @s ncmReplayTick matches 92 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch92
$execute if score @s ncmReplayTick matches 93 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX93
$execute if score @s ncmReplayTick matches 93 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY93
$execute if score @s ncmReplayTick matches 93 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ93
$execute if score @s ncmReplayTick matches 93 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw93
$execute if score @s ncmReplayTick matches 93 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch93
$execute if score @s ncmReplayTick matches 94 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX94
$execute if score @s ncmReplayTick matches 94 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY94
$execute if score @s ncmReplayTick matches 94 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ94
$execute if score @s ncmReplayTick matches 94 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw94
$execute if score @s ncmReplayTick matches 94 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch94
$execute if score @s ncmReplayTick matches 95 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX95
$execute if score @s ncmReplayTick matches 95 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY95
$execute if score @s ncmReplayTick matches 95 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ95
$execute if score @s ncmReplayTick matches 95 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw95
$execute if score @s ncmReplayTick matches 95 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch95
$execute if score @s ncmReplayTick matches 96 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX96
$execute if score @s ncmReplayTick matches 96 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY96
$execute if score @s ncmReplayTick matches 96 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ96
$execute if score @s ncmReplayTick matches 96 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw96
$execute if score @s ncmReplayTick matches 96 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch96
$execute if score @s ncmReplayTick matches 97 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX97
$execute if score @s ncmReplayTick matches 97 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY97
$execute if score @s ncmReplayTick matches 97 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ97
$execute if score @s ncmReplayTick matches 97 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw97
$execute if score @s ncmReplayTick matches 97 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch97
$execute if score @s ncmReplayTick matches 98 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX98
$execute if score @s ncmReplayTick matches 98 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY98
$execute if score @s ncmReplayTick matches 98 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ98
$execute if score @s ncmReplayTick matches 98 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw98
$execute if score @s ncmReplayTick matches 98 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch98
$execute if score @s ncmReplayTick matches 99 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX99
$execute if score @s ncmReplayTick matches 99 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY99
$execute if score @s ncmReplayTick matches 99 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ99
$execute if score @s ncmReplayTick matches 99 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw99
$execute if score @s ncmReplayTick matches 99 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch99
$execute if score @s ncmReplayTick matches 100 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayX100
$execute if score @s ncmReplayTick matches 100 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayY100
$execute if score @s ncmReplayTick matches 100 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayZ100
$execute if score @s ncmReplayTick matches 100 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayYaw100
$execute if score @s ncmReplayTick matches 100 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayPitch100





$execute if score @s ncmReplayCounter matches 1 run bossbar add ncm:replay [{"color":"yellow","text":"$(name)"},{"color":"dark_gray","text":" | "},{"color":"gray","text":"00:00/00:10"}]
execute if score @s ncmReplayCounter matches 1 run bossbar set ncm:replay players @s
execute if score @s ncmReplayCounter matches 1 run bossbar set ncm:replay visible true
execute if score @s ncmReplayCounter matches 1 run bossbar set ncm:replay value 0
execute if score @s ncmReplayCounter matches 2 run bossbar set ncm:replay value 1
execute if score @s ncmReplayCounter matches 4 run bossbar set ncm:replay value 2
execute if score @s ncmReplayCounter matches 6 run bossbar set ncm:replay value 3
execute if score @s ncmReplayCounter matches 8 run bossbar set ncm:replay value 4
execute if score @s ncmReplayCounter matches 10 run bossbar set ncm:replay value 5
execute if score @s ncmReplayCounter matches 12 run bossbar set ncm:replay value 6
execute if score @s ncmReplayCounter matches 14 run bossbar set ncm:replay value 7
execute if score @s ncmReplayCounter matches 16 run bossbar set ncm:replay value 8
execute if score @s ncmReplayCounter matches 18 run bossbar set ncm:replay value 9
execute if score @s ncmReplayCounter matches 20 run bossbar set ncm:replay value 10
$execute if score @s ncmReplayCounter matches 20 run bossbar set ncm:replay name [{"color":"yellow","text":"$(name)"},{"color":"dark_gray","text":" | "},{"color":"gray","text":"00:01/00:10"}]
execute if score @s ncmReplayCounter matches 22 run bossbar set ncm:replay value 11
execute if score @s ncmReplayCounter matches 24 run bossbar set ncm:replay value 12
execute if score @s ncmReplayCounter matches 26 run bossbar set ncm:replay value 13
execute if score @s ncmReplayCounter matches 28 run bossbar set ncm:replay value 14
execute if score @s ncmReplayCounter matches 30 run bossbar set ncm:replay value 15
execute if score @s ncmReplayCounter matches 32 run bossbar set ncm:replay value 16
execute if score @s ncmReplayCounter matches 34 run bossbar set ncm:replay value 17
execute if score @s ncmReplayCounter matches 36 run bossbar set ncm:replay value 18
execute if score @s ncmReplayCounter matches 38 run bossbar set ncm:replay value 19
execute if score @s ncmReplayCounter matches 40 run bossbar set ncm:replay value 20
$execute if score @s ncmReplayCounter matches 40 run bossbar set ncm:replay name [{"color":"yellow","text":"$(name)"},{"color":"dark_gray","text":" | "},{"color":"gray","text":"00:02/00:10"}]
execute if score @s ncmReplayCounter matches 42 run bossbar set ncm:replay value 21
execute if score @s ncmReplayCounter matches 44 run bossbar set ncm:replay value 22
execute if score @s ncmReplayCounter matches 46 run bossbar set ncm:replay value 23
execute if score @s ncmReplayCounter matches 48 run bossbar set ncm:replay value 24
execute if score @s ncmReplayCounter matches 50 run bossbar set ncm:replay value 25
execute if score @s ncmReplayCounter matches 52 run bossbar set ncm:replay value 26
execute if score @s ncmReplayCounter matches 54 run bossbar set ncm:replay value 27
execute if score @s ncmReplayCounter matches 56 run bossbar set ncm:replay value 28
execute if score @s ncmReplayCounter matches 58 run bossbar set ncm:replay value 29
execute if score @s ncmReplayCounter matches 60 run bossbar set ncm:replay value 30
$execute if score @s ncmReplayCounter matches 60 run bossbar set ncm:replay name [{"color":"yellow","text":"$(name)"},{"color":"dark_gray","text":" | "},{"color":"gray","text":"00:03/00:10"}]
execute if score @s ncmReplayCounter matches 62 run bossbar set ncm:replay value 31
execute if score @s ncmReplayCounter matches 64 run bossbar set ncm:replay value 32
execute if score @s ncmReplayCounter matches 66 run bossbar set ncm:replay value 33
execute if score @s ncmReplayCounter matches 68 run bossbar set ncm:replay value 34
execute if score @s ncmReplayCounter matches 70 run bossbar set ncm:replay value 35
execute if score @s ncmReplayCounter matches 72 run bossbar set ncm:replay value 36
execute if score @s ncmReplayCounter matches 74 run bossbar set ncm:replay value 37
execute if score @s ncmReplayCounter matches 76 run bossbar set ncm:replay value 38
execute if score @s ncmReplayCounter matches 78 run bossbar set ncm:replay value 39
execute if score @s ncmReplayCounter matches 80 run bossbar set ncm:replay value 40
$execute if score @s ncmReplayCounter matches 80 run bossbar set ncm:replay name [{"color":"yellow","text":"$(name)"},{"color":"dark_gray","text":" | "},{"color":"gray","text":"00:04/00:10"}]
execute if score @s ncmReplayCounter matches 82 run bossbar set ncm:replay value 41
execute if score @s ncmReplayCounter matches 84 run bossbar set ncm:replay value 42
execute if score @s ncmReplayCounter matches 86 run bossbar set ncm:replay value 43
execute if score @s ncmReplayCounter matches 88 run bossbar set ncm:replay value 44
execute if score @s ncmReplayCounter matches 90 run bossbar set ncm:replay value 45
execute if score @s ncmReplayCounter matches 92 run bossbar set ncm:replay value 46
execute if score @s ncmReplayCounter matches 94 run bossbar set ncm:replay value 47
execute if score @s ncmReplayCounter matches 96 run bossbar set ncm:replay value 48
execute if score @s ncmReplayCounter matches 98 run bossbar set ncm:replay value 49
execute if score @s ncmReplayCounter matches 100 run bossbar set ncm:replay value 50
$execute if score @s ncmReplayCounter matches 100 run bossbar set ncm:replay name [{"color":"yellow","text":"$(name)"},{"color":"dark_gray","text":" | "},{"color":"gray","text":"00:05/00:10"}]





execute if score @s ncmReplayCounter matches 101 run scoreboard players set @s ncmReplayCounter 0
execute unless score @s ncmFirstRunFinished matches 1 run scoreboard players set @s ncmFirstRunFinished 1





execute if score @s ncmReplayTick matches 0 run scoreboard players set @s ncmReplayState 0
execute if score @s ncmReplayTick matches 0 run scoreboard players set @s ncmFirstRunFinished 0
execute if score @s ncmReplayTick matches 0 run function ncm:replay/after_flag with storage ncm:replay

execute unless score @s ncmReplayTick matches 0 run function ncm:replay/teleport_npc with storage ncm:tpdata