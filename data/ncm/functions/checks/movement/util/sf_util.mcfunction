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
# Description:   This function is an util for the Movement.SurvivalFly check.
# Author:        n33d4n4m3
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.



# SF.Distance Task (time-critical): Get the players Y-Coordinate
execute as @e[type=minecraft:player] store result score @s ncmPlayerY run data get entity @s Pos[1]

# SF.MonitorMotionY Task: Eleminate JumpBoost-FP
scoreboard players set @e[type=minecraft:player,nbt=!{ActiveEffects:[{Id:8b,Amplifier:0b}]}] ncmJumpBoostOffs 0
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:0b}]}] ncmJumpBoostOffs 1000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:1b}]}] ncmJumpBoostOffs 2000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:2b}]}] ncmJumpBoostOffs 3000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:3b}]}] ncmJumpBoostOffs 4000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:4b}]}] ncmJumpBoostOffs 5000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:5b}]}] ncmJumpBoostOffs 6000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:6b}]}] ncmJumpBoostOffs 7000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:7b}]}] ncmJumpBoostOffs 8000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:8b}]}] ncmJumpBoostOffs 9000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:9b}]}] ncmJumpBoostOffs 1000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:10b}]}] ncmJumpBoostOffs 11000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:11b}]}] ncmJumpBoostOffs 12000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:12b}]}] ncmJumpBoostOffs 13000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:13b}]}] ncmJumpBoostOffs 14000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:14b}]}] ncmJumpBoostOffs 15000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:15b}]}] ncmJumpBoostOffs 16000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:16b}]}] ncmJumpBoostOffs 17000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:17b}]}] ncmJumpBoostOffs 18000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:18b}]}] ncmJumpBoostOffs 19000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:19b}]}] ncmJumpBoostOffs 20000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:20b}]}] ncmJumpBoostOffs 21000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:21b}]}] ncmJumpBoostOffs 22000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:22b}]}] ncmJumpBoostOffs 23000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:23b}]}] ncmJumpBoostOffs 24000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:24b}]}] ncmJumpBoostOffs 25000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:25b}]}] ncmJumpBoostOffs 26000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:26b}]}] ncmJumpBoostOffs 27000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:27b}]}] ncmJumpBoostOffs 28000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:28b}]}] ncmJumpBoostOffs 29000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:29b}]}] ncmJumpBoostOffs 30000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:30b}]}] ncmJumpBoostOffs 31000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:31b}]}] ncmJumpBoostOffs 32000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:32b}]}] ncmJumpBoostOffs 33000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:33b}]}] ncmJumpBoostOffs 34000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:34b}]}] ncmJumpBoostOffs 35000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:35b}]}] ncmJumpBoostOffs 36000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:36b}]}] ncmJumpBoostOffs 37000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:37b}]}] ncmJumpBoostOffs 38000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:38b}]}] ncmJumpBoostOffs 39000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:39b}]}] ncmJumpBoostOffs 40000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:40b}]}] ncmJumpBoostOffs 41000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:41b}]}] ncmJumpBoostOffs 42000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:42b}]}] ncmJumpBoostOffs 43000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:43b}]}] ncmJumpBoostOffs 44000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:44b}]}] ncmJumpBoostOffs 45000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:45b}]}] ncmJumpBoostOffs 46000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:46b}]}] ncmJumpBoostOffs 47000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:47b}]}] ncmJumpBoostOffs 48000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:48b}]}] ncmJumpBoostOffs 49000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:49b}]}] ncmJumpBoostOffs 50000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:50b}]}] ncmJumpBoostOffs 51000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:51b}]}] ncmJumpBoostOffs 52000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:52b}]}] ncmJumpBoostOffs 53000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:53b}]}] ncmJumpBoostOffs 54000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:54b}]}] ncmJumpBoostOffs 55000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:55b}]}] ncmJumpBoostOffs 56000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:56b}]}] ncmJumpBoostOffs 57000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:57b}]}] ncmJumpBoostOffs 58000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:58b}]}] ncmJumpBoostOffs 59000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:59b}]}] ncmJumpBoostOffs 60000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:60b}]}] ncmJumpBoostOffs 61000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:61b}]}] ncmJumpBoostOffs 62000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:62b}]}] ncmJumpBoostOffs 63000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:63b}]}] ncmJumpBoostOffs 64000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:64b}]}] ncmJumpBoostOffs 65000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:65b}]}] ncmJumpBoostOffs 66000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:66b}]}] ncmJumpBoostOffs 67000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:67b}]}] ncmJumpBoostOffs 68000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:68b}]}] ncmJumpBoostOffs 69000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:69b}]}] ncmJumpBoostOffs 70000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:70b}]}] ncmJumpBoostOffs 71000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:71b}]}] ncmJumpBoostOffs 72000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:72b}]}] ncmJumpBoostOffs 73000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:73b}]}] ncmJumpBoostOffs 74000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:74b}]}] ncmJumpBoostOffs 75000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:75b}]}] ncmJumpBoostOffs 76000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:76b}]}] ncmJumpBoostOffs 77000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:77b}]}] ncmJumpBoostOffs 78000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:78b}]}] ncmJumpBoostOffs 79000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:79b}]}] ncmJumpBoostOffs 80000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:80b}]}] ncmJumpBoostOffs 81000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:81b}]}] ncmJumpBoostOffs 82000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:82b}]}] ncmJumpBoostOffs 83000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:83b}]}] ncmJumpBoostOffs 84000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:84b}]}] ncmJumpBoostOffs 85000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:85b}]}] ncmJumpBoostOffs 86000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:86b}]}] ncmJumpBoostOffs 87000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:87b}]}] ncmJumpBoostOffs 88000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:88b}]}] ncmJumpBoostOffs 89000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:89b}]}] ncmJumpBoostOffs 90000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:90b}]}] ncmJumpBoostOffs 91000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:91b}]}] ncmJumpBoostOffs 92000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:92b}]}] ncmJumpBoostOffs 93000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:93b}]}] ncmJumpBoostOffs 94000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:94b}]}] ncmJumpBoostOffs 95000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:95b}]}] ncmJumpBoostOffs 96000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:96b}]}] ncmJumpBoostOffs 97000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:97b}]}] ncmJumpBoostOffs 98000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:98b}]}] ncmJumpBoostOffs 99000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:99b}]}] ncmJumpBoostOffs 100000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:100b}]}] ncmJumpBoostOffs 101000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:101b}]}] ncmJumpBoostOffs 102000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:102b}]}] ncmJumpBoostOffs 103000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:103b}]}] ncmJumpBoostOffs 104000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:104b}]}] ncmJumpBoostOffs 105000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:105b}]}] ncmJumpBoostOffs 106000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:106b}]}] ncmJumpBoostOffs 107000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:107b}]}] ncmJumpBoostOffs 108000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:108b}]}] ncmJumpBoostOffs 109000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:109b}]}] ncmJumpBoostOffs 110000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:110b}]}] ncmJumpBoostOffs 111000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:111b}]}] ncmJumpBoostOffs 112000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:112b}]}] ncmJumpBoostOffs 113000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:113b}]}] ncmJumpBoostOffs 114000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:114b}]}] ncmJumpBoostOffs 115000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:115b}]}] ncmJumpBoostOffs 116000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:116b}]}] ncmJumpBoostOffs 117000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:117b}]}] ncmJumpBoostOffs 118000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:118b}]}] ncmJumpBoostOffs 119000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:119b}]}] ncmJumpBoostOffs 120000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:120b}]}] ncmJumpBoostOffs 121000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:121b}]}] ncmJumpBoostOffs 122000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:122b}]}] ncmJumpBoostOffs 123000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:123b}]}] ncmJumpBoostOffs 124000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:124b}]}] ncmJumpBoostOffs 125000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:125b}]}] ncmJumpBoostOffs 126000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:126b}]}] ncmJumpBoostOffs 127000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:127b}]}] ncmJumpBoostOffs 128000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:128b}]}] ncmJumpBoostOffs 129000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:129b}]}] ncmJumpBoostOffs 130000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:130b}]}] ncmJumpBoostOffs 131000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:131b}]}] ncmJumpBoostOffs 132000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:132b}]}] ncmJumpBoostOffs 133000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:133b}]}] ncmJumpBoostOffs 134000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:134b}]}] ncmJumpBoostOffs 135000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:135b}]}] ncmJumpBoostOffs 136000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:136b}]}] ncmJumpBoostOffs 137000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:137b}]}] ncmJumpBoostOffs 138000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:138b}]}] ncmJumpBoostOffs 139000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:139b}]}] ncmJumpBoostOffs 140000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:140b}]}] ncmJumpBoostOffs 141000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:141b}]}] ncmJumpBoostOffs 142000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:142b}]}] ncmJumpBoostOffs 143000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:143b}]}] ncmJumpBoostOffs 144000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:144b}]}] ncmJumpBoostOffs 145000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:145b}]}] ncmJumpBoostOffs 146000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:146b}]}] ncmJumpBoostOffs 147000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:147b}]}] ncmJumpBoostOffs 148000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:148b}]}] ncmJumpBoostOffs 149000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:149b}]}] ncmJumpBoostOffs 150000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:150b}]}] ncmJumpBoostOffs 151000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:151b}]}] ncmJumpBoostOffs 152000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:152b}]}] ncmJumpBoostOffs 153000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:153b}]}] ncmJumpBoostOffs 154000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:154b}]}] ncmJumpBoostOffs 155000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:155b}]}] ncmJumpBoostOffs 156000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:156b}]}] ncmJumpBoostOffs 157000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:157b}]}] ncmJumpBoostOffs 158000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:158b}]}] ncmJumpBoostOffs 159000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:159b}]}] ncmJumpBoostOffs 160000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:160b}]}] ncmJumpBoostOffs 161000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:161b}]}] ncmJumpBoostOffs 162000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:162b}]}] ncmJumpBoostOffs 163000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:163b}]}] ncmJumpBoostOffs 164000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:164b}]}] ncmJumpBoostOffs 165000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:165b}]}] ncmJumpBoostOffs 166000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:166b}]}] ncmJumpBoostOffs 167000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:167b}]}] ncmJumpBoostOffs 168000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:168b}]}] ncmJumpBoostOffs 169000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:169b}]}] ncmJumpBoostOffs 170000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:170b}]}] ncmJumpBoostOffs 171000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:171b}]}] ncmJumpBoostOffs 172000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:172b}]}] ncmJumpBoostOffs 173000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:173b}]}] ncmJumpBoostOffs 174000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:174b}]}] ncmJumpBoostOffs 175000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:175b}]}] ncmJumpBoostOffs 176000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:176b}]}] ncmJumpBoostOffs 177000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:177b}]}] ncmJumpBoostOffs 178000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:178b}]}] ncmJumpBoostOffs 179000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:179b}]}] ncmJumpBoostOffs 180000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:180b}]}] ncmJumpBoostOffs 181000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:181b}]}] ncmJumpBoostOffs 182000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:182b}]}] ncmJumpBoostOffs 183000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:183b}]}] ncmJumpBoostOffs 184000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:184b}]}] ncmJumpBoostOffs 185000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:185b}]}] ncmJumpBoostOffs 186000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:186b}]}] ncmJumpBoostOffs 187000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:187b}]}] ncmJumpBoostOffs 188000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:188b}]}] ncmJumpBoostOffs 189000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:189b}]}] ncmJumpBoostOffs 190000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:190b}]}] ncmJumpBoostOffs 191000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:191b}]}] ncmJumpBoostOffs 192000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:192b}]}] ncmJumpBoostOffs 193000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:193b}]}] ncmJumpBoostOffs 194000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:194b}]}] ncmJumpBoostOffs 195000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:195b}]}] ncmJumpBoostOffs 196000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:196b}]}] ncmJumpBoostOffs 197000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:197b}]}] ncmJumpBoostOffs 198000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:198b}]}] ncmJumpBoostOffs 199000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:199b}]}] ncmJumpBoostOffs 200000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:200b}]}] ncmJumpBoostOffs 201000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:201b}]}] ncmJumpBoostOffs 202000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:202b}]}] ncmJumpBoostOffs 203000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:203b}]}] ncmJumpBoostOffs 204000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:204b}]}] ncmJumpBoostOffs 205000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:205b}]}] ncmJumpBoostOffs 206000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:206b}]}] ncmJumpBoostOffs 207000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:207b}]}] ncmJumpBoostOffs 208000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:208b}]}] ncmJumpBoostOffs 209000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:209b}]}] ncmJumpBoostOffs 210000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:210b}]}] ncmJumpBoostOffs 211000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:211b}]}] ncmJumpBoostOffs 212000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:212b}]}] ncmJumpBoostOffs 213000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:213b}]}] ncmJumpBoostOffs 214000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:214b}]}] ncmJumpBoostOffs 215000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:215b}]}] ncmJumpBoostOffs 216000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:216b}]}] ncmJumpBoostOffs 217000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:217b}]}] ncmJumpBoostOffs 218000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:218b}]}] ncmJumpBoostOffs 219000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:219b}]}] ncmJumpBoostOffs 220000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:220b}]}] ncmJumpBoostOffs 221000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:221b}]}] ncmJumpBoostOffs 222000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:222b}]}] ncmJumpBoostOffs 223000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:223b}]}] ncmJumpBoostOffs 224000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:224b}]}] ncmJumpBoostOffs 225000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:225b}]}] ncmJumpBoostOffs 226000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:226b}]}] ncmJumpBoostOffs 227000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:227b}]}] ncmJumpBoostOffs 228000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:228b}]}] ncmJumpBoostOffs 229000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:229b}]}] ncmJumpBoostOffs 230000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:230b}]}] ncmJumpBoostOffs 231000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:231b}]}] ncmJumpBoostOffs 232000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:232b}]}] ncmJumpBoostOffs 233000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:233b}]}] ncmJumpBoostOffs 234000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:234b}]}] ncmJumpBoostOffs 235000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:235b}]}] ncmJumpBoostOffs 236000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:236b}]}] ncmJumpBoostOffs 237000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:237b}]}] ncmJumpBoostOffs 238000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:238b}]}] ncmJumpBoostOffs 239000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:239b}]}] ncmJumpBoostOffs 240000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:240b}]}] ncmJumpBoostOffs 241000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:241b}]}] ncmJumpBoostOffs 242000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:242b}]}] ncmJumpBoostOffs 243000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:243b}]}] ncmJumpBoostOffs 244000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:244b}]}] ncmJumpBoostOffs 245000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:245b}]}] ncmJumpBoostOffs 246000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:246b}]}] ncmJumpBoostOffs 247000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:247b}]}] ncmJumpBoostOffs 248000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:248b}]}] ncmJumpBoostOffs 249000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:249b}]}] ncmJumpBoostOffs 250000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:250b}]}] ncmJumpBoostOffs 251000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:251b}]}] ncmJumpBoostOffs 252000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:252b}]}] ncmJumpBoostOffs 253000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:253b}]}] ncmJumpBoostOffs 254000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:254b}]}] ncmJumpBoostOffs 255000
scoreboard players set @e[type=minecraft:player,nbt={ActiveEffects:[{Id:8b,Amplifier:255b}]}] ncmJumpBoostOffs 256000



# SF.Distance Task: Spawn ArmorStand


execute as @e[type=minecraft:player,scores={ncmLeaveGame=1..}] run scoreboard players set @s ncmJoinGame 1
execute as @e[type=minecraft:player,scores={ncmLeaveGame=1..}] run scoreboard players set @s ncmLeaveGame 0



execute as @e[type=minecraft:player,scores={ncmUUID=1}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=1}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=2}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=2}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=3}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=3}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=4}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=4}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=5}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=5}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=6}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=6}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=7}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=7}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=8}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=8}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=9}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=9}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=10}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=10}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=11}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=11}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=12}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=12}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=13}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=13}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=14}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=14}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=15}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=15}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=16}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=16}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=17}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=17}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=18}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=18}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=19}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=19}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=20}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=20}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=21}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=21}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=22}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=22}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=23}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=23}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=24}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=24}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=25}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=25}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=26}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=26}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=27}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=27}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=28}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=28}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=29}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=29}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=30}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=30}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=31}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=31}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=32}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=32}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=33}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=33}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=34}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=34}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=35}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=35}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=36}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=36}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=37}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=37}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=38}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=38}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=39}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=39}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=40}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=40}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=41}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=41}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=42}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=42}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=43}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=43}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=44}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=44}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=45}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=45}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=46}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=46}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=47}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=47}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=48}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=48}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=49}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=49}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=50}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=50}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=51}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=51}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=52}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=52}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=53}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=53}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=54}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=54}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=55}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=55}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=56}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=56}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=57}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=57}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=58}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=58}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=59}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=59}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=60}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=60}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=61}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=61}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=62}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=62}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=63}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=63}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=64}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=64}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=65}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=65}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=66}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=66}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=67}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=67}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=68}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=68}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=69}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=69}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=70}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=70}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=71}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=71}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=72}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=72}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=73}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=73}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=74}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=74}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=75}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=75}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=76}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=76}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=77}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=77}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=78}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=78}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=79}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=79}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=80}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=80}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=81}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=81}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=82}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=82}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=83}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=83}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=84}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=84}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=85}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=85}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=86}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=86}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=87}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=87}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=88}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=88}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=89}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=89}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=90}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=90}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=91}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=91}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=92}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=92}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=93}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=93}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=94}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=94}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=95}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=95}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=96}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=96}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=97}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=97}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=98}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=98}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=99}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=99}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute as @e[type=minecraft:player,scores={ncmUUID=100}] at @s unless entity @e[type=armor_stand,scores={ncmIsSetback=1,ncmUUID=100}] if score @s ncmJoinGame matches 20.. run summon armor_stand ~ ~ ~ {CustomName:"\"SurvivalFlyA\"",CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}

















execute as @e[type=minecraft:player] at @s if score @s ncmJoinGame matches ..20 run scoreboard players set @s ncmAPSSpeedEffI 0
execute as @e[type=minecraft:player] at @s if score @s ncmJoinGame matches ..20 run scoreboard players set @s ncmAPSSpeedEffII 0
execute as @e[type=minecraft:player] at @s if score @s ncmJoinGame matches ..20 run scoreboard players set @s ncmAPSSprJmp 0
execute as @e[type=minecraft:player] at @s if score @s ncmJoinGame matches ..20 run scoreboard players set @s ncmAPSSprJmpII 0
execute as @e[type=minecraft:player] at @s if score @s ncmJoinGame matches ..20 run scoreboard players set @s ncmStOnIceC 0
execute as @e[type=minecraft:player] at @s if score @s ncmJoinGame matches ..20 run scoreboard players set @s ncmInputR 2


execute as @e[type=minecraft:player] at @s if score @s ncmJoinGame matches 20.. run scoreboard players set @s ncmJoinGame 41
execute as @e[type=armor_stand,name=SurvivalFlyA] at @s unless score @s ncmUUID matches 1.. run scoreboard players set @s ncmIsSetback 1
execute as @e[type=armor_stand,name=SurvivalFlyA] at @s unless score @s ncmUUID matches 1.. run scoreboard players operation @s ncmUUID = @p[sort=nearest] ncmUUID


# SF.Distance Task: Check violations


execute as @e[type=minecraft:player] if score @s ncmPlayerY < @s ncmLastPlayerY run scoreboard players set @s ncmDecent 1
execute as @e[type=minecraft:player] if score @s ncmPlayerY = @s ncmLastPlayerY run scoreboard players set @s ncmMaintain 1
execute as @e[type=minecraft:player] if score @s ncmPlayerY > @s ncmLastPlayerY run scoreboard players set @s ncmClimb 1

execute as @e[scores={ncmIsSetback=1,ncmUUID=1}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=1},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=1}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=1}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=2}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=2},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=2}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=2}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=3}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=3},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=3}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=3}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=4}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=4},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=4}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=4}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=5}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=5},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=5}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=5}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=6}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=6},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=6}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=6}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=7}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=7},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=7}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=7}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=8}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=8},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=8}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=8}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=9}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=9},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=9}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=9}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=10}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=10},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=10}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=10}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=11}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=11},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=11}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=11}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=12}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=12},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=12}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=12}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=13}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=13},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=13}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=13}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=14}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=14},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=14}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=14}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=15}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=15},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=15}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=15}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=16}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=16},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=16}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=16}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=17}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=17},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=17}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=17}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=18}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=18},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=18}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=18}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=19}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=19},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=19}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=19}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=20}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=20},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=20}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=20}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=21}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=21},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=21}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=21}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=22}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=22},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=22}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=22}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=23}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=23},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=23}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=23}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=24}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=24},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=24}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=24}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=25}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=25},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=25}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=25}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=26}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=26},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=26}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=26}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=27}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=27},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=27}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=27}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=28}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=28},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=28}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=28}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=29}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=29},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=29}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=29}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=30}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=30},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=30}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=30}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=31}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=31},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=31}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=31}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=32}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=32},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=32}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=32}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=33}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=33},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=33}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=33}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=34}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=34},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=34}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=34}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=35}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=35},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=35}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=35}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=36}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=36},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=36}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=36}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=37}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=37},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=37}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=37}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=38}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=38},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=38}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=38}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=39}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=39},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=39}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=39}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=40}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=40},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=40}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=40}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=41}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=41},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=41}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=41}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=42}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=42},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=42}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=42}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=43}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=43},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=43}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=43}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=44}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=44},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=44}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=44}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=45}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=45},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=45}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=45}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=46}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=46},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=46}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=46}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=47}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=47},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=47}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=47}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=48}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=48},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=48}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=48}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=49}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=49},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=49}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=49}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=50}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=50},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=50}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=50}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=51}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=51},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=51}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=51}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=52}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=52},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=52}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=52}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=53}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=53},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=53}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=53}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=54}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=54},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=54}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=54}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=55}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=55},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=55}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=55}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=56}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=56},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=56}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=56}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=57}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=57},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=57}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=57}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=58}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=58},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=58}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=58}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=59}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=59},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=59}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=59}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=60}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=60},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=60}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=60}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=61}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=61},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=61}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=61}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=62}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=62},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=62}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=62}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=63}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=63},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=63}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=63}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=64}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=64},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=64}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=64}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=65}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=65},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=65}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=65}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=66}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=66},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=66}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=66}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=67}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=67},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=67}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=67}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=68}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=68},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=68}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=68}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=69}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=69},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=69}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=69}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=70}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=70},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=70}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=70}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=71}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=71},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=71}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=71}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=72}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=72},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=72}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=72}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=73}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=73},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=73}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=73}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=74}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=74},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=74}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=74}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=75}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=75},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=75}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=75}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=76}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=76},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=76}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=76}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=77}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=77},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=77}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=77}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=78}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=78},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=78}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=78}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=79}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=79},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=79}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=79}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=80}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=80},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=80}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=80}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=81}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=81},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=81}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=81}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=82}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=82},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=82}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=82}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=83}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=83},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=83}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=83}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=84}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=84},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=84}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=84}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=85}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=85},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=85}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=85}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=86}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=86},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=86}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=86}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=87}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=87},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=87}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=87}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=88}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=88},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=88}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=88}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=89}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=89},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=89}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=89}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=90}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=90},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=90}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=90}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=91}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=91},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=91}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=91}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=92}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=92},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=92}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=92}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=93}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=93},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=93}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=93}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=94}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=94},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=94}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=94}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=95}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=95},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=95}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=95}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=96}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=96},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=96}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=96}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=97}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=97},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=97}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=97}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=98}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=98},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=98}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=98}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=99}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=99},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=99}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=99}] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=100}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,ncmUUID=100},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={ncmIsSetback=1,ncmUUID=100}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,ncmUUID=100}] ncmSFDS_ivl 1

execute as @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator] if score @s ncmSFDS_ivl >= DataHolder ncmc_sf_ds_1 unless score @s ncmAviate matches 1.. run scoreboard players set @s ncmFailedMVMSF 0
execute as @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator] if score @s ncmSFDS_ivl >= DataHolder ncmc_sf_ds_1 unless score @s ncmAviate matches 1.. run tellraw @s[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Distance","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_ds_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_ds_2"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmLastPlayerY"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmPlayerY"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmDecent"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator] if score @s ncmSFDS_ivl >= DataHolder ncmc_sf_ds_1 unless score @s ncmAviate matches 1.. run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Distance","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_ds_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_ds_2"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmLastPlayerY"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmPlayerY"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmDecent"},"color":"gray"},{"text":"}","color":"gray"}]



scoreboard players set @a ncmDecent 0
# SF.Distance Task: Teleport ArmorStand


execute as @e[type=minecraft:player,scores={ncmUUID=1}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=1}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=2}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=2}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=3}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=3}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=4}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=4}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=5}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=5}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=6}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=6}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=7}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=7}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=8}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=8}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=9}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=9}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=10}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=10}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=11}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=11}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=12}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=12}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=13}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=13}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=14}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=14}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=15}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=15}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=16}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=16}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=17}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=17}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=18}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=18}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=19}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=19}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=20}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=20}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=21}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=21}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=22}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=22}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=23}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=23}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=24}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=24}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=25}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=25}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=26}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=26}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=27}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=27}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=28}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=28}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=29}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=29}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=30}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=30}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=31}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=31}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=32}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=32}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=33}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=33}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=34}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=34}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=35}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=35}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=36}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=36}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=37}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=37}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=38}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=38}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=39}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=39}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=40}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=40}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=41}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=41}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=42}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=42}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=43}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=43}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=44}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=44}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=45}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=45}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=46}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=46}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=47}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=47}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=48}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=48}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=49}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=49}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=50}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=50}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=51}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=51}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=52}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=52}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=53}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=53}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=54}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=54}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=55}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=55}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=56}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=56}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=57}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=57}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=58}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=58}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=59}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=59}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=60}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=60}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=61}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=61}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=62}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=62}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=63}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=63}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=64}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=64}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=65}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=65}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=66}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=66}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=67}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=67}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=68}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=68}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=69}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=69}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=70}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=70}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=71}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=71}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=72}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=72}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=73}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=73}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=74}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=74}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=75}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=75}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=76}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=76}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=77}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=77}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=78}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=78}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=79}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=79}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=80}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=80}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=81}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=81}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=82}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=82}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=83}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=83}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=84}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=84}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=85}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=85}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=86}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=86}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=87}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=87}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=88}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=88}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=89}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=89}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=90}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=90}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=91}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=91}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=92}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=92}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=93}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=93}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=94}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=94}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=95}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=95}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=96}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=96}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=97}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=97}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=98}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=98}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=99}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=99}] @s
execute as @e[type=minecraft:player,scores={ncmUUID=100}] at @s run tp @e[scores={ncmIsSetback=1,ncmUUID=100}] @s






# SF.Distance Task (time-critical): Get the players Y-Coordinate
execute as @e[type=minecraft:player] store result score @s ncmLastPlayerY run data get entity @s Pos[1]
