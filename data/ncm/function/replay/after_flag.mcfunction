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
# Description:  This function handels the replay playback phase 2/2.
# Author:       n33d4n4m3
# ...

execute if score @s ncmReplayAfterFlagTick matches 0 run scoreboard players set @s ncmReplayAfterFlagTick 1

execute if score @s ncmReplayAfterFlagTick matches 101 run scoreboard players set @s ncmReplayAfterFlagTick 0
execute if score @s ncmReplayAfterFlagTick matches 0 run scoreboard players set @s ncmInReplayMode 0


#$execute if score @s ncmReplayAfterFlagTick matches 0 run scoreboard players set $(name) ncmHasSavedReplay 0
#execute if score @s ncmReplayAfterFlagTick matches 0 run function ncm:replay/reset_with_storage with storage ncm:replay

execute if score @s ncmReplayAfterFlagTick matches 0 run function ncm:replay/reset


execute if score @s ncmReplayAfterFlagTick matches 0 run scoreboard players set @s ncmReplayStarted 0
$execute if score @s ncmReplayAfterFlagTick matches 0 run tellraw @s [{"text":""},{"text":"NCM","color":"red"},{"text":": That was the replay clip of player ","color":"gray"},{"text":"$(name)","color":"yellow"},{"text":".\n Click","color":"gray"},{"text":" here ","color":"red","click_event":{"action":"run_command","command":"/data modify storage ncm:replay delete set value $(name)"},"hover_event":{"action":"show_text","value":[{"text":"/data modify storage ncm:replay delete set value $(name)"}]}},{"text":"to delete the clip.","color":"gray"}]
execute if score @s ncmReplayAfterFlagTick matches 0 run data remove storage ncm:replay name

execute if score @s ncmReplayAfterFlagTick matches 2 run bossbar set ncm:replay value 51
execute if score @s ncmReplayAfterFlagTick matches 4 run bossbar set ncm:replay value 52
execute if score @s ncmReplayAfterFlagTick matches 6 run bossbar set ncm:replay value 53
execute if score @s ncmReplayAfterFlagTick matches 8 run bossbar set ncm:replay value 54
execute if score @s ncmReplayAfterFlagTick matches 10 run bossbar set ncm:replay value 55
execute if score @s ncmReplayAfterFlagTick matches 12 run bossbar set ncm:replay value 56
execute if score @s ncmReplayAfterFlagTick matches 14 run bossbar set ncm:replay value 57
execute if score @s ncmReplayAfterFlagTick matches 16 run bossbar set ncm:replay value 58
execute if score @s ncmReplayAfterFlagTick matches 18 run bossbar set ncm:replay value 59
execute if score @s ncmReplayAfterFlagTick matches 20 run bossbar set ncm:replay value 60
execute if score @s ncmReplayAfterFlagTick matches 22 run bossbar set ncm:replay value 61
execute if score @s ncmReplayAfterFlagTick matches 24 run bossbar set ncm:replay value 62
execute if score @s ncmReplayAfterFlagTick matches 26 run bossbar set ncm:replay value 63
execute if score @s ncmReplayAfterFlagTick matches 28 run bossbar set ncm:replay value 64
execute if score @s ncmReplayAfterFlagTick matches 30 run bossbar set ncm:replay value 65
execute if score @s ncmReplayAfterFlagTick matches 32 run bossbar set ncm:replay value 66
execute if score @s ncmReplayAfterFlagTick matches 34 run bossbar set ncm:replay value 67
execute if score @s ncmReplayAfterFlagTick matches 36 run bossbar set ncm:replay value 68
execute if score @s ncmReplayAfterFlagTick matches 38 run bossbar set ncm:replay value 69
execute if score @s ncmReplayAfterFlagTick matches 40 run bossbar set ncm:replay value 70
execute if score @s ncmReplayAfterFlagTick matches 42 run bossbar set ncm:replay value 71
execute if score @s ncmReplayAfterFlagTick matches 44 run bossbar set ncm:replay value 72
execute if score @s ncmReplayAfterFlagTick matches 46 run bossbar set ncm:replay value 73
execute if score @s ncmReplayAfterFlagTick matches 48 run bossbar set ncm:replay value 74
execute if score @s ncmReplayAfterFlagTick matches 50 run bossbar set ncm:replay value 75
execute if score @s ncmReplayAfterFlagTick matches 52 run bossbar set ncm:replay value 76
execute if score @s ncmReplayAfterFlagTick matches 54 run bossbar set ncm:replay value 77
execute if score @s ncmReplayAfterFlagTick matches 56 run bossbar set ncm:replay value 78
execute if score @s ncmReplayAfterFlagTick matches 58 run bossbar set ncm:replay value 79
execute if score @s ncmReplayAfterFlagTick matches 60 run bossbar set ncm:replay value 80
execute if score @s ncmReplayAfterFlagTick matches 62 run bossbar set ncm:replay value 81
execute if score @s ncmReplayAfterFlagTick matches 64 run bossbar set ncm:replay value 82
execute if score @s ncmReplayAfterFlagTick matches 66 run bossbar set ncm:replay value 83
execute if score @s ncmReplayAfterFlagTick matches 68 run bossbar set ncm:replay value 84
execute if score @s ncmReplayAfterFlagTick matches 70 run bossbar set ncm:replay value 85
execute if score @s ncmReplayAfterFlagTick matches 72 run bossbar set ncm:replay value 86
execute if score @s ncmReplayAfterFlagTick matches 74 run bossbar set ncm:replay value 87
execute if score @s ncmReplayAfterFlagTick matches 76 run bossbar set ncm:replay value 88
execute if score @s ncmReplayAfterFlagTick matches 78 run bossbar set ncm:replay value 89
execute if score @s ncmReplayAfterFlagTick matches 80 run bossbar set ncm:replay value 90
execute if score @s ncmReplayAfterFlagTick matches 82 run bossbar set ncm:replay value 91
execute if score @s ncmReplayAfterFlagTick matches 84 run bossbar set ncm:replay value 92
execute if score @s ncmReplayAfterFlagTick matches 86 run bossbar set ncm:replay value 93
execute if score @s ncmReplayAfterFlagTick matches 88 run bossbar set ncm:replay value 94
execute if score @s ncmReplayAfterFlagTick matches 90 run bossbar set ncm:replay value 95
execute if score @s ncmReplayAfterFlagTick matches 92 run bossbar set ncm:replay value 96
execute if score @s ncmReplayAfterFlagTick matches 94 run bossbar set ncm:replay value 97
execute if score @s ncmReplayAfterFlagTick matches 96 run bossbar set ncm:replay value 98
execute if score @s ncmReplayAfterFlagTick matches 98 run bossbar set ncm:replay value 99
execute if score @s ncmReplayAfterFlagTick matches 100 run bossbar set ncm:replay value 100

execute if score @s ncmReplayAfterFlagTick matches 1 run bossbar set ncm:replay color red
$execute if score @s ncmReplayAfterFlagTick matches 1 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX1
$execute if score @s ncmReplayAfterFlagTick matches 1 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY1
$execute if score @s ncmReplayAfterFlagTick matches 1 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ1
$execute if score @s ncmReplayAfterFlagTick matches 1 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw1
$execute if score @s ncmReplayAfterFlagTick matches 1 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch1
$execute if score @s ncmReplayAfterFlagTick matches 2 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX2
$execute if score @s ncmReplayAfterFlagTick matches 2 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY2
$execute if score @s ncmReplayAfterFlagTick matches 2 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ2
$execute if score @s ncmReplayAfterFlagTick matches 2 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw2
$execute if score @s ncmReplayAfterFlagTick matches 2 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch2
$execute if score @s ncmReplayAfterFlagTick matches 3 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX3
$execute if score @s ncmReplayAfterFlagTick matches 3 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY3
$execute if score @s ncmReplayAfterFlagTick matches 3 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ3
$execute if score @s ncmReplayAfterFlagTick matches 3 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw3
$execute if score @s ncmReplayAfterFlagTick matches 3 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch3
$execute if score @s ncmReplayAfterFlagTick matches 4 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX4
$execute if score @s ncmReplayAfterFlagTick matches 4 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY4
$execute if score @s ncmReplayAfterFlagTick matches 4 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ4
$execute if score @s ncmReplayAfterFlagTick matches 4 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw4
$execute if score @s ncmReplayAfterFlagTick matches 4 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch4
$execute if score @s ncmReplayAfterFlagTick matches 5 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX5
$execute if score @s ncmReplayAfterFlagTick matches 5 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY5
$execute if score @s ncmReplayAfterFlagTick matches 5 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ5
$execute if score @s ncmReplayAfterFlagTick matches 5 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw5
$execute if score @s ncmReplayAfterFlagTick matches 5 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch5
$execute if score @s ncmReplayAfterFlagTick matches 6 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX6
$execute if score @s ncmReplayAfterFlagTick matches 6 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY6
$execute if score @s ncmReplayAfterFlagTick matches 6 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ6
$execute if score @s ncmReplayAfterFlagTick matches 6 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw6
$execute if score @s ncmReplayAfterFlagTick matches 6 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch6
$execute if score @s ncmReplayAfterFlagTick matches 7 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX7
$execute if score @s ncmReplayAfterFlagTick matches 7 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY7
$execute if score @s ncmReplayAfterFlagTick matches 7 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ7
$execute if score @s ncmReplayAfterFlagTick matches 7 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw7
$execute if score @s ncmReplayAfterFlagTick matches 7 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch7
$execute if score @s ncmReplayAfterFlagTick matches 8 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX8
$execute if score @s ncmReplayAfterFlagTick matches 8 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY8
$execute if score @s ncmReplayAfterFlagTick matches 8 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ8
$execute if score @s ncmReplayAfterFlagTick matches 8 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw8
$execute if score @s ncmReplayAfterFlagTick matches 8 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch8
$execute if score @s ncmReplayAfterFlagTick matches 9 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX9
$execute if score @s ncmReplayAfterFlagTick matches 9 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY9
$execute if score @s ncmReplayAfterFlagTick matches 9 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ9
$execute if score @s ncmReplayAfterFlagTick matches 9 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw9
$execute if score @s ncmReplayAfterFlagTick matches 9 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch9
$execute if score @s ncmReplayAfterFlagTick matches 10 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX10
$execute if score @s ncmReplayAfterFlagTick matches 10 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY10
$execute if score @s ncmReplayAfterFlagTick matches 10 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ10
$execute if score @s ncmReplayAfterFlagTick matches 10 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw10
$execute if score @s ncmReplayAfterFlagTick matches 10 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch10
$execute if score @s ncmReplayAfterFlagTick matches 11 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX11
$execute if score @s ncmReplayAfterFlagTick matches 11 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY11
$execute if score @s ncmReplayAfterFlagTick matches 11 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ11
$execute if score @s ncmReplayAfterFlagTick matches 11 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw11
$execute if score @s ncmReplayAfterFlagTick matches 11 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch11
$execute if score @s ncmReplayAfterFlagTick matches 12 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX12
$execute if score @s ncmReplayAfterFlagTick matches 12 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY12
$execute if score @s ncmReplayAfterFlagTick matches 12 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ12
$execute if score @s ncmReplayAfterFlagTick matches 12 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw12
$execute if score @s ncmReplayAfterFlagTick matches 12 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch12
$execute if score @s ncmReplayAfterFlagTick matches 13 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX13
$execute if score @s ncmReplayAfterFlagTick matches 13 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY13
$execute if score @s ncmReplayAfterFlagTick matches 13 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ13
$execute if score @s ncmReplayAfterFlagTick matches 13 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw13
$execute if score @s ncmReplayAfterFlagTick matches 13 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch13
$execute if score @s ncmReplayAfterFlagTick matches 14 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX14
$execute if score @s ncmReplayAfterFlagTick matches 14 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY14
$execute if score @s ncmReplayAfterFlagTick matches 14 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ14
$execute if score @s ncmReplayAfterFlagTick matches 14 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw14
$execute if score @s ncmReplayAfterFlagTick matches 14 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch14
$execute if score @s ncmReplayAfterFlagTick matches 15 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX15
$execute if score @s ncmReplayAfterFlagTick matches 15 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY15
$execute if score @s ncmReplayAfterFlagTick matches 15 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ15
$execute if score @s ncmReplayAfterFlagTick matches 15 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw15
$execute if score @s ncmReplayAfterFlagTick matches 15 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch15
$execute if score @s ncmReplayAfterFlagTick matches 16 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX16
$execute if score @s ncmReplayAfterFlagTick matches 16 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY16
$execute if score @s ncmReplayAfterFlagTick matches 16 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ16
$execute if score @s ncmReplayAfterFlagTick matches 16 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw16
$execute if score @s ncmReplayAfterFlagTick matches 16 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch16
$execute if score @s ncmReplayAfterFlagTick matches 17 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX17
$execute if score @s ncmReplayAfterFlagTick matches 17 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY17
$execute if score @s ncmReplayAfterFlagTick matches 17 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ17
$execute if score @s ncmReplayAfterFlagTick matches 17 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw17
$execute if score @s ncmReplayAfterFlagTick matches 17 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch17
$execute if score @s ncmReplayAfterFlagTick matches 18 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX18
$execute if score @s ncmReplayAfterFlagTick matches 18 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY18
$execute if score @s ncmReplayAfterFlagTick matches 18 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ18
$execute if score @s ncmReplayAfterFlagTick matches 18 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw18
$execute if score @s ncmReplayAfterFlagTick matches 18 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch18
$execute if score @s ncmReplayAfterFlagTick matches 19 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX19
$execute if score @s ncmReplayAfterFlagTick matches 19 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY19
$execute if score @s ncmReplayAfterFlagTick matches 19 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ19
$execute if score @s ncmReplayAfterFlagTick matches 19 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw19
$execute if score @s ncmReplayAfterFlagTick matches 19 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch19
$execute if score @s ncmReplayAfterFlagTick matches 20 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX20
$execute if score @s ncmReplayAfterFlagTick matches 20 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY20
$execute if score @s ncmReplayAfterFlagTick matches 20 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ20
$execute if score @s ncmReplayAfterFlagTick matches 20 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw20
$execute if score @s ncmReplayAfterFlagTick matches 20 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch20


$execute if score @s ncmReplayAfterFlagTick matches 21 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX21
$execute if score @s ncmReplayAfterFlagTick matches 21 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY21
$execute if score @s ncmReplayAfterFlagTick matches 21 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ21
$execute if score @s ncmReplayAfterFlagTick matches 21 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw21
$execute if score @s ncmReplayAfterFlagTick matches 21 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch21
$execute if score @s ncmReplayAfterFlagTick matches 22 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX22
$execute if score @s ncmReplayAfterFlagTick matches 22 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY22
$execute if score @s ncmReplayAfterFlagTick matches 22 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ22
$execute if score @s ncmReplayAfterFlagTick matches 22 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw22
$execute if score @s ncmReplayAfterFlagTick matches 22 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch22
$execute if score @s ncmReplayAfterFlagTick matches 23 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX23
$execute if score @s ncmReplayAfterFlagTick matches 23 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY23
$execute if score @s ncmReplayAfterFlagTick matches 23 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ23
$execute if score @s ncmReplayAfterFlagTick matches 23 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw23
$execute if score @s ncmReplayAfterFlagTick matches 23 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch23
$execute if score @s ncmReplayAfterFlagTick matches 24 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX24
$execute if score @s ncmReplayAfterFlagTick matches 24 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY24
$execute if score @s ncmReplayAfterFlagTick matches 24 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ24
$execute if score @s ncmReplayAfterFlagTick matches 24 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw24
$execute if score @s ncmReplayAfterFlagTick matches 24 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch24
$execute if score @s ncmReplayAfterFlagTick matches 25 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX25
$execute if score @s ncmReplayAfterFlagTick matches 25 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY25
$execute if score @s ncmReplayAfterFlagTick matches 25 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ25
$execute if score @s ncmReplayAfterFlagTick matches 25 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw25
$execute if score @s ncmReplayAfterFlagTick matches 25 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch25
$execute if score @s ncmReplayAfterFlagTick matches 26 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX26
$execute if score @s ncmReplayAfterFlagTick matches 26 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY26
$execute if score @s ncmReplayAfterFlagTick matches 26 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ26
$execute if score @s ncmReplayAfterFlagTick matches 26 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw26
$execute if score @s ncmReplayAfterFlagTick matches 26 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch26
$execute if score @s ncmReplayAfterFlagTick matches 27 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX27
$execute if score @s ncmReplayAfterFlagTick matches 27 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY27
$execute if score @s ncmReplayAfterFlagTick matches 27 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ27
$execute if score @s ncmReplayAfterFlagTick matches 27 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw27
$execute if score @s ncmReplayAfterFlagTick matches 27 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch27
$execute if score @s ncmReplayAfterFlagTick matches 28 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX28
$execute if score @s ncmReplayAfterFlagTick matches 28 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY28
$execute if score @s ncmReplayAfterFlagTick matches 28 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ28
$execute if score @s ncmReplayAfterFlagTick matches 28 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw28
$execute if score @s ncmReplayAfterFlagTick matches 28 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch28
$execute if score @s ncmReplayAfterFlagTick matches 29 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX29
$execute if score @s ncmReplayAfterFlagTick matches 29 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY29
$execute if score @s ncmReplayAfterFlagTick matches 29 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ29
$execute if score @s ncmReplayAfterFlagTick matches 29 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw29
$execute if score @s ncmReplayAfterFlagTick matches 29 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch29
$execute if score @s ncmReplayAfterFlagTick matches 30 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX30
$execute if score @s ncmReplayAfterFlagTick matches 30 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY30
$execute if score @s ncmReplayAfterFlagTick matches 30 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ30
$execute if score @s ncmReplayAfterFlagTick matches 30 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw30
$execute if score @s ncmReplayAfterFlagTick matches 30 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch30
$execute if score @s ncmReplayAfterFlagTick matches 31 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX31
$execute if score @s ncmReplayAfterFlagTick matches 31 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY31
$execute if score @s ncmReplayAfterFlagTick matches 31 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ31
$execute if score @s ncmReplayAfterFlagTick matches 31 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw31
$execute if score @s ncmReplayAfterFlagTick matches 31 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch31
$execute if score @s ncmReplayAfterFlagTick matches 32 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX32
$execute if score @s ncmReplayAfterFlagTick matches 32 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY32
$execute if score @s ncmReplayAfterFlagTick matches 32 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ32
$execute if score @s ncmReplayAfterFlagTick matches 32 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw32
$execute if score @s ncmReplayAfterFlagTick matches 32 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch32
$execute if score @s ncmReplayAfterFlagTick matches 33 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX33
$execute if score @s ncmReplayAfterFlagTick matches 33 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY33
$execute if score @s ncmReplayAfterFlagTick matches 33 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ33
$execute if score @s ncmReplayAfterFlagTick matches 33 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw33
$execute if score @s ncmReplayAfterFlagTick matches 33 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch33
$execute if score @s ncmReplayAfterFlagTick matches 34 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX34
$execute if score @s ncmReplayAfterFlagTick matches 34 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY34
$execute if score @s ncmReplayAfterFlagTick matches 34 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ34
$execute if score @s ncmReplayAfterFlagTick matches 34 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw34
$execute if score @s ncmReplayAfterFlagTick matches 34 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch34
$execute if score @s ncmReplayAfterFlagTick matches 35 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX35
$execute if score @s ncmReplayAfterFlagTick matches 35 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY35
$execute if score @s ncmReplayAfterFlagTick matches 35 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ35
$execute if score @s ncmReplayAfterFlagTick matches 35 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw35
$execute if score @s ncmReplayAfterFlagTick matches 35 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch35
$execute if score @s ncmReplayAfterFlagTick matches 36 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX36
$execute if score @s ncmReplayAfterFlagTick matches 36 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY36
$execute if score @s ncmReplayAfterFlagTick matches 36 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ36
$execute if score @s ncmReplayAfterFlagTick matches 36 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw36
$execute if score @s ncmReplayAfterFlagTick matches 36 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch36
$execute if score @s ncmReplayAfterFlagTick matches 37 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX37
$execute if score @s ncmReplayAfterFlagTick matches 37 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY37
$execute if score @s ncmReplayAfterFlagTick matches 37 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ37
$execute if score @s ncmReplayAfterFlagTick matches 37 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw37
$execute if score @s ncmReplayAfterFlagTick matches 37 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch37
$execute if score @s ncmReplayAfterFlagTick matches 38 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX38
$execute if score @s ncmReplayAfterFlagTick matches 38 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY38
$execute if score @s ncmReplayAfterFlagTick matches 38 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ38
$execute if score @s ncmReplayAfterFlagTick matches 38 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw38
$execute if score @s ncmReplayAfterFlagTick matches 38 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch38
$execute if score @s ncmReplayAfterFlagTick matches 39 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX39
$execute if score @s ncmReplayAfterFlagTick matches 39 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY39
$execute if score @s ncmReplayAfterFlagTick matches 39 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ39
$execute if score @s ncmReplayAfterFlagTick matches 39 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw39
$execute if score @s ncmReplayAfterFlagTick matches 39 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch39
$execute if score @s ncmReplayAfterFlagTick matches 40 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX40
$execute if score @s ncmReplayAfterFlagTick matches 40 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY40
$execute if score @s ncmReplayAfterFlagTick matches 40 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ40
$execute if score @s ncmReplayAfterFlagTick matches 40 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw40
$execute if score @s ncmReplayAfterFlagTick matches 40 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch40

$execute if score @s ncmReplayAfterFlagTick matches 41 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX41
$execute if score @s ncmReplayAfterFlagTick matches 41 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY41
$execute if score @s ncmReplayAfterFlagTick matches 41 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ41
$execute if score @s ncmReplayAfterFlagTick matches 41 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw41
$execute if score @s ncmReplayAfterFlagTick matches 41 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch41
$execute if score @s ncmReplayAfterFlagTick matches 42 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX42
$execute if score @s ncmReplayAfterFlagTick matches 42 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY42
$execute if score @s ncmReplayAfterFlagTick matches 42 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ42
$execute if score @s ncmReplayAfterFlagTick matches 42 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw42
$execute if score @s ncmReplayAfterFlagTick matches 42 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch42
$execute if score @s ncmReplayAfterFlagTick matches 43 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX43
$execute if score @s ncmReplayAfterFlagTick matches 43 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY43
$execute if score @s ncmReplayAfterFlagTick matches 43 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ43
$execute if score @s ncmReplayAfterFlagTick matches 43 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw43
$execute if score @s ncmReplayAfterFlagTick matches 43 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch43
$execute if score @s ncmReplayAfterFlagTick matches 44 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX44
$execute if score @s ncmReplayAfterFlagTick matches 44 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY44
$execute if score @s ncmReplayAfterFlagTick matches 44 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ44
$execute if score @s ncmReplayAfterFlagTick matches 44 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw44
$execute if score @s ncmReplayAfterFlagTick matches 44 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch44
$execute if score @s ncmReplayAfterFlagTick matches 45 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX45
$execute if score @s ncmReplayAfterFlagTick matches 45 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY45
$execute if score @s ncmReplayAfterFlagTick matches 45 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ45
$execute if score @s ncmReplayAfterFlagTick matches 45 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw45
$execute if score @s ncmReplayAfterFlagTick matches 45 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch45
$execute if score @s ncmReplayAfterFlagTick matches 46 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX46
$execute if score @s ncmReplayAfterFlagTick matches 46 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY46
$execute if score @s ncmReplayAfterFlagTick matches 46 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ46
$execute if score @s ncmReplayAfterFlagTick matches 46 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw46
$execute if score @s ncmReplayAfterFlagTick matches 46 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch46
$execute if score @s ncmReplayAfterFlagTick matches 47 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX47
$execute if score @s ncmReplayAfterFlagTick matches 47 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY47
$execute if score @s ncmReplayAfterFlagTick matches 47 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ47
$execute if score @s ncmReplayAfterFlagTick matches 47 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw47
$execute if score @s ncmReplayAfterFlagTick matches 47 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch47
$execute if score @s ncmReplayAfterFlagTick matches 48 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX48
$execute if score @s ncmReplayAfterFlagTick matches 48 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY48
$execute if score @s ncmReplayAfterFlagTick matches 48 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ48
$execute if score @s ncmReplayAfterFlagTick matches 48 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw48
$execute if score @s ncmReplayAfterFlagTick matches 48 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch48
$execute if score @s ncmReplayAfterFlagTick matches 49 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX49
$execute if score @s ncmReplayAfterFlagTick matches 49 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY49
$execute if score @s ncmReplayAfterFlagTick matches 49 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ49
$execute if score @s ncmReplayAfterFlagTick matches 49 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw49
$execute if score @s ncmReplayAfterFlagTick matches 49 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch49
$execute if score @s ncmReplayAfterFlagTick matches 50 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX50
$execute if score @s ncmReplayAfterFlagTick matches 50 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY50
$execute if score @s ncmReplayAfterFlagTick matches 50 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ50
$execute if score @s ncmReplayAfterFlagTick matches 50 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw50
$execute if score @s ncmReplayAfterFlagTick matches 50 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch50
$execute if score @s ncmReplayAfterFlagTick matches 51 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX51
$execute if score @s ncmReplayAfterFlagTick matches 51 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY51
$execute if score @s ncmReplayAfterFlagTick matches 51 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ51
$execute if score @s ncmReplayAfterFlagTick matches 51 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw51
$execute if score @s ncmReplayAfterFlagTick matches 51 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch51
$execute if score @s ncmReplayAfterFlagTick matches 52 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX52
$execute if score @s ncmReplayAfterFlagTick matches 52 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY52
$execute if score @s ncmReplayAfterFlagTick matches 52 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ52
$execute if score @s ncmReplayAfterFlagTick matches 52 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw52
$execute if score @s ncmReplayAfterFlagTick matches 52 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch52
$execute if score @s ncmReplayAfterFlagTick matches 53 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX53
$execute if score @s ncmReplayAfterFlagTick matches 53 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY53
$execute if score @s ncmReplayAfterFlagTick matches 53 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ53
$execute if score @s ncmReplayAfterFlagTick matches 53 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw53
$execute if score @s ncmReplayAfterFlagTick matches 53 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch53
$execute if score @s ncmReplayAfterFlagTick matches 54 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX54
$execute if score @s ncmReplayAfterFlagTick matches 54 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY54
$execute if score @s ncmReplayAfterFlagTick matches 54 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ54
$execute if score @s ncmReplayAfterFlagTick matches 54 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw54
$execute if score @s ncmReplayAfterFlagTick matches 54 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch54
$execute if score @s ncmReplayAfterFlagTick matches 55 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX55
$execute if score @s ncmReplayAfterFlagTick matches 55 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY55
$execute if score @s ncmReplayAfterFlagTick matches 55 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ55
$execute if score @s ncmReplayAfterFlagTick matches 55 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw55
$execute if score @s ncmReplayAfterFlagTick matches 55 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch55
$execute if score @s ncmReplayAfterFlagTick matches 56 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX56
$execute if score @s ncmReplayAfterFlagTick matches 56 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY56
$execute if score @s ncmReplayAfterFlagTick matches 56 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ56
$execute if score @s ncmReplayAfterFlagTick matches 56 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw56
$execute if score @s ncmReplayAfterFlagTick matches 56 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch56
$execute if score @s ncmReplayAfterFlagTick matches 57 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX57
$execute if score @s ncmReplayAfterFlagTick matches 57 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY57
$execute if score @s ncmReplayAfterFlagTick matches 57 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ57
$execute if score @s ncmReplayAfterFlagTick matches 57 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw57
$execute if score @s ncmReplayAfterFlagTick matches 57 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch57
$execute if score @s ncmReplayAfterFlagTick matches 58 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX58
$execute if score @s ncmReplayAfterFlagTick matches 58 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY58
$execute if score @s ncmReplayAfterFlagTick matches 58 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ58
$execute if score @s ncmReplayAfterFlagTick matches 58 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw58
$execute if score @s ncmReplayAfterFlagTick matches 58 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch58
$execute if score @s ncmReplayAfterFlagTick matches 59 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX59
$execute if score @s ncmReplayAfterFlagTick matches 59 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY59
$execute if score @s ncmReplayAfterFlagTick matches 59 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ59
$execute if score @s ncmReplayAfterFlagTick matches 59 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw59
$execute if score @s ncmReplayAfterFlagTick matches 59 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch59
$execute if score @s ncmReplayAfterFlagTick matches 60 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX60
$execute if score @s ncmReplayAfterFlagTick matches 60 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY60
$execute if score @s ncmReplayAfterFlagTick matches 60 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ60
$execute if score @s ncmReplayAfterFlagTick matches 60 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw60
$execute if score @s ncmReplayAfterFlagTick matches 60 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch60

$execute if score @s ncmReplayAfterFlagTick matches 61 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX61
$execute if score @s ncmReplayAfterFlagTick matches 61 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY61
$execute if score @s ncmReplayAfterFlagTick matches 61 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ61
$execute if score @s ncmReplayAfterFlagTick matches 61 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw61
$execute if score @s ncmReplayAfterFlagTick matches 61 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch61
$execute if score @s ncmReplayAfterFlagTick matches 62 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX62
$execute if score @s ncmReplayAfterFlagTick matches 62 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY62
$execute if score @s ncmReplayAfterFlagTick matches 62 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ62
$execute if score @s ncmReplayAfterFlagTick matches 62 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw62
$execute if score @s ncmReplayAfterFlagTick matches 62 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch62
$execute if score @s ncmReplayAfterFlagTick matches 63 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX63
$execute if score @s ncmReplayAfterFlagTick matches 63 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY63
$execute if score @s ncmReplayAfterFlagTick matches 63 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ63
$execute if score @s ncmReplayAfterFlagTick matches 63 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw63
$execute if score @s ncmReplayAfterFlagTick matches 63 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch63
$execute if score @s ncmReplayAfterFlagTick matches 64 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX64
$execute if score @s ncmReplayAfterFlagTick matches 64 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY64
$execute if score @s ncmReplayAfterFlagTick matches 64 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ64
$execute if score @s ncmReplayAfterFlagTick matches 64 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw64
$execute if score @s ncmReplayAfterFlagTick matches 64 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch64
$execute if score @s ncmReplayAfterFlagTick matches 65 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX65
$execute if score @s ncmReplayAfterFlagTick matches 65 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY65
$execute if score @s ncmReplayAfterFlagTick matches 65 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ65
$execute if score @s ncmReplayAfterFlagTick matches 65 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw65
$execute if score @s ncmReplayAfterFlagTick matches 65 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch65
$execute if score @s ncmReplayAfterFlagTick matches 66 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX66
$execute if score @s ncmReplayAfterFlagTick matches 66 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY66
$execute if score @s ncmReplayAfterFlagTick matches 66 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ66
$execute if score @s ncmReplayAfterFlagTick matches 66 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw66
$execute if score @s ncmReplayAfterFlagTick matches 66 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch66
$execute if score @s ncmReplayAfterFlagTick matches 67 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX67
$execute if score @s ncmReplayAfterFlagTick matches 67 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY67
$execute if score @s ncmReplayAfterFlagTick matches 67 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ67
$execute if score @s ncmReplayAfterFlagTick matches 67 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw67
$execute if score @s ncmReplayAfterFlagTick matches 67 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch67
$execute if score @s ncmReplayAfterFlagTick matches 68 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX68
$execute if score @s ncmReplayAfterFlagTick matches 68 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY68
$execute if score @s ncmReplayAfterFlagTick matches 68 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ68
$execute if score @s ncmReplayAfterFlagTick matches 68 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw68
$execute if score @s ncmReplayAfterFlagTick matches 68 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch68
$execute if score @s ncmReplayAfterFlagTick matches 69 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX69
$execute if score @s ncmReplayAfterFlagTick matches 69 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY69
$execute if score @s ncmReplayAfterFlagTick matches 69 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ69
$execute if score @s ncmReplayAfterFlagTick matches 69 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw69
$execute if score @s ncmReplayAfterFlagTick matches 69 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch69
$execute if score @s ncmReplayAfterFlagTick matches 70 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX70
$execute if score @s ncmReplayAfterFlagTick matches 70 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY70
$execute if score @s ncmReplayAfterFlagTick matches 70 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ70
$execute if score @s ncmReplayAfterFlagTick matches 70 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw70
$execute if score @s ncmReplayAfterFlagTick matches 70 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch70
$execute if score @s ncmReplayAfterFlagTick matches 71 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX71
$execute if score @s ncmReplayAfterFlagTick matches 71 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY71
$execute if score @s ncmReplayAfterFlagTick matches 71 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ71
$execute if score @s ncmReplayAfterFlagTick matches 71 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw71
$execute if score @s ncmReplayAfterFlagTick matches 71 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch71
$execute if score @s ncmReplayAfterFlagTick matches 72 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX72
$execute if score @s ncmReplayAfterFlagTick matches 72 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY72
$execute if score @s ncmReplayAfterFlagTick matches 72 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ72
$execute if score @s ncmReplayAfterFlagTick matches 72 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw72
$execute if score @s ncmReplayAfterFlagTick matches 72 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch72
$execute if score @s ncmReplayAfterFlagTick matches 73 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX73
$execute if score @s ncmReplayAfterFlagTick matches 73 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY73
$execute if score @s ncmReplayAfterFlagTick matches 73 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ73
$execute if score @s ncmReplayAfterFlagTick matches 73 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw73
$execute if score @s ncmReplayAfterFlagTick matches 73 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch73
$execute if score @s ncmReplayAfterFlagTick matches 74 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX74
$execute if score @s ncmReplayAfterFlagTick matches 74 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY74
$execute if score @s ncmReplayAfterFlagTick matches 74 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ74
$execute if score @s ncmReplayAfterFlagTick matches 74 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw74
$execute if score @s ncmReplayAfterFlagTick matches 74 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch74
$execute if score @s ncmReplayAfterFlagTick matches 75 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX75
$execute if score @s ncmReplayAfterFlagTick matches 75 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY75
$execute if score @s ncmReplayAfterFlagTick matches 75 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ75
$execute if score @s ncmReplayAfterFlagTick matches 75 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw75
$execute if score @s ncmReplayAfterFlagTick matches 75 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch75
$execute if score @s ncmReplayAfterFlagTick matches 76 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX76
$execute if score @s ncmReplayAfterFlagTick matches 76 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY76
$execute if score @s ncmReplayAfterFlagTick matches 76 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ76
$execute if score @s ncmReplayAfterFlagTick matches 76 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw76
$execute if score @s ncmReplayAfterFlagTick matches 76 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch76
$execute if score @s ncmReplayAfterFlagTick matches 77 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX77
$execute if score @s ncmReplayAfterFlagTick matches 77 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY77
$execute if score @s ncmReplayAfterFlagTick matches 77 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ77
$execute if score @s ncmReplayAfterFlagTick matches 77 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw77
$execute if score @s ncmReplayAfterFlagTick matches 77 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch77
$execute if score @s ncmReplayAfterFlagTick matches 78 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX78
$execute if score @s ncmReplayAfterFlagTick matches 78 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY78
$execute if score @s ncmReplayAfterFlagTick matches 78 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ78
$execute if score @s ncmReplayAfterFlagTick matches 78 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw78
$execute if score @s ncmReplayAfterFlagTick matches 78 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch78
$execute if score @s ncmReplayAfterFlagTick matches 79 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX79
$execute if score @s ncmReplayAfterFlagTick matches 79 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY79
$execute if score @s ncmReplayAfterFlagTick matches 79 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ79
$execute if score @s ncmReplayAfterFlagTick matches 79 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw79
$execute if score @s ncmReplayAfterFlagTick matches 79 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch79
$execute if score @s ncmReplayAfterFlagTick matches 80 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX80
$execute if score @s ncmReplayAfterFlagTick matches 80 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY80
$execute if score @s ncmReplayAfterFlagTick matches 80 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ80
$execute if score @s ncmReplayAfterFlagTick matches 80 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw80
$execute if score @s ncmReplayAfterFlagTick matches 80 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch80

$execute if score @s ncmReplayAfterFlagTick matches 81 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX81
$execute if score @s ncmReplayAfterFlagTick matches 81 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY81
$execute if score @s ncmReplayAfterFlagTick matches 81 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ81
$execute if score @s ncmReplayAfterFlagTick matches 81 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw81
$execute if score @s ncmReplayAfterFlagTick matches 81 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch81
$execute if score @s ncmReplayAfterFlagTick matches 82 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX82
$execute if score @s ncmReplayAfterFlagTick matches 82 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY82
$execute if score @s ncmReplayAfterFlagTick matches 82 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ82
$execute if score @s ncmReplayAfterFlagTick matches 82 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw82
$execute if score @s ncmReplayAfterFlagTick matches 82 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch82
$execute if score @s ncmReplayAfterFlagTick matches 83 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX83
$execute if score @s ncmReplayAfterFlagTick matches 83 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY83
$execute if score @s ncmReplayAfterFlagTick matches 83 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ83
$execute if score @s ncmReplayAfterFlagTick matches 83 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw83
$execute if score @s ncmReplayAfterFlagTick matches 83 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch83
$execute if score @s ncmReplayAfterFlagTick matches 84 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX84
$execute if score @s ncmReplayAfterFlagTick matches 84 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY84
$execute if score @s ncmReplayAfterFlagTick matches 84 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ84
$execute if score @s ncmReplayAfterFlagTick matches 84 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw84
$execute if score @s ncmReplayAfterFlagTick matches 84 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch84
$execute if score @s ncmReplayAfterFlagTick matches 85 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX85
$execute if score @s ncmReplayAfterFlagTick matches 85 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY85
$execute if score @s ncmReplayAfterFlagTick matches 85 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ85
$execute if score @s ncmReplayAfterFlagTick matches 85 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw85
$execute if score @s ncmReplayAfterFlagTick matches 85 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch85
$execute if score @s ncmReplayAfterFlagTick matches 86 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX86
$execute if score @s ncmReplayAfterFlagTick matches 86 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY86
$execute if score @s ncmReplayAfterFlagTick matches 86 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ86
$execute if score @s ncmReplayAfterFlagTick matches 86 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw86
$execute if score @s ncmReplayAfterFlagTick matches 86 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch86
$execute if score @s ncmReplayAfterFlagTick matches 87 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX87
$execute if score @s ncmReplayAfterFlagTick matches 87 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY87
$execute if score @s ncmReplayAfterFlagTick matches 87 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ87
$execute if score @s ncmReplayAfterFlagTick matches 87 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw87
$execute if score @s ncmReplayAfterFlagTick matches 87 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch87
$execute if score @s ncmReplayAfterFlagTick matches 88 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX88
$execute if score @s ncmReplayAfterFlagTick matches 88 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY88
$execute if score @s ncmReplayAfterFlagTick matches 88 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ88
$execute if score @s ncmReplayAfterFlagTick matches 88 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw88
$execute if score @s ncmReplayAfterFlagTick matches 88 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch88
$execute if score @s ncmReplayAfterFlagTick matches 89 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX89
$execute if score @s ncmReplayAfterFlagTick matches 89 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY89
$execute if score @s ncmReplayAfterFlagTick matches 89 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ89
$execute if score @s ncmReplayAfterFlagTick matches 89 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw89
$execute if score @s ncmReplayAfterFlagTick matches 89 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch89
$execute if score @s ncmReplayAfterFlagTick matches 90 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX90
$execute if score @s ncmReplayAfterFlagTick matches 90 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY90
$execute if score @s ncmReplayAfterFlagTick matches 90 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ90
$execute if score @s ncmReplayAfterFlagTick matches 90 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw90
$execute if score @s ncmReplayAfterFlagTick matches 90 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch90
$execute if score @s ncmReplayAfterFlagTick matches 91 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX91
$execute if score @s ncmReplayAfterFlagTick matches 91 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY91
$execute if score @s ncmReplayAfterFlagTick matches 91 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ91
$execute if score @s ncmReplayAfterFlagTick matches 91 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw91
$execute if score @s ncmReplayAfterFlagTick matches 91 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch91
$execute if score @s ncmReplayAfterFlagTick matches 92 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX92
$execute if score @s ncmReplayAfterFlagTick matches 92 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY92
$execute if score @s ncmReplayAfterFlagTick matches 92 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ92
$execute if score @s ncmReplayAfterFlagTick matches 92 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw92
$execute if score @s ncmReplayAfterFlagTick matches 92 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch92
$execute if score @s ncmReplayAfterFlagTick matches 93 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX93
$execute if score @s ncmReplayAfterFlagTick matches 93 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY93
$execute if score @s ncmReplayAfterFlagTick matches 93 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ93
$execute if score @s ncmReplayAfterFlagTick matches 93 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw93
$execute if score @s ncmReplayAfterFlagTick matches 93 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch93
$execute if score @s ncmReplayAfterFlagTick matches 94 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX94
$execute if score @s ncmReplayAfterFlagTick matches 94 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY94
$execute if score @s ncmReplayAfterFlagTick matches 94 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ94
$execute if score @s ncmReplayAfterFlagTick matches 94 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw94
$execute if score @s ncmReplayAfterFlagTick matches 94 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch94
$execute if score @s ncmReplayAfterFlagTick matches 95 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX95
$execute if score @s ncmReplayAfterFlagTick matches 95 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY95
$execute if score @s ncmReplayAfterFlagTick matches 95 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ95
$execute if score @s ncmReplayAfterFlagTick matches 95 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw95
$execute if score @s ncmReplayAfterFlagTick matches 95 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch95

$execute if score @s ncmReplayAfterFlagTick matches 96 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX96
$execute if score @s ncmReplayAfterFlagTick matches 96 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY96
$execute if score @s ncmReplayAfterFlagTick matches 96 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ96
$execute if score @s ncmReplayAfterFlagTick matches 96 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw96
$execute if score @s ncmReplayAfterFlagTick matches 96 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch96
$execute if score @s ncmReplayAfterFlagTick matches 97 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX97
$execute if score @s ncmReplayAfterFlagTick matches 97 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY97
$execute if score @s ncmReplayAfterFlagTick matches 97 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ97
$execute if score @s ncmReplayAfterFlagTick matches 97 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw97
$execute if score @s ncmReplayAfterFlagTick matches 97 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch97
$execute if score @s ncmReplayAfterFlagTick matches 98 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX98
$execute if score @s ncmReplayAfterFlagTick matches 98 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY98
$execute if score @s ncmReplayAfterFlagTick matches 98 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ98
$execute if score @s ncmReplayAfterFlagTick matches 98 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw98
$execute if score @s ncmReplayAfterFlagTick matches 98 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch98
$execute if score @s ncmReplayAfterFlagTick matches 99 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX99
$execute if score @s ncmReplayAfterFlagTick matches 99 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY99
$execute if score @s ncmReplayAfterFlagTick matches 99 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ99
$execute if score @s ncmReplayAfterFlagTick matches 99 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw99
$execute if score @s ncmReplayAfterFlagTick matches 99 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch99
$execute if score @s ncmReplayAfterFlagTick matches 100 run execute store result storage ncm:tpdata x double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagX100
$execute if score @s ncmReplayAfterFlagTick matches 100 run execute store result storage ncm:tpdata y double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagY100
$execute if score @s ncmReplayAfterFlagTick matches 100 run execute store result storage ncm:tpdata z double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagZ100
$execute if score @s ncmReplayAfterFlagTick matches 100 run execute store result storage ncm:tpdata yaw double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagYaw100
$execute if score @s ncmReplayAfterFlagTick matches 100 run execute store result storage ncm:tpdata pitch double 0.001 run scoreboard players get $(name) ncmReplayAfterFlagPitch100
execute if score @s ncmReplayAfterFlagTick matches 100 run bossbar remove ncm:replay

execute unless score @s ncmReplayAfterFlagTick matches 0 run function ncm:replay/teleport with storage ncm:tpdata

execute unless score @s ncmReplayAfterFlagTick matches 0 run scoreboard players add @s ncmReplayAfterFlagTick 1
