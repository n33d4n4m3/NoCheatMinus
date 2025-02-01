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
# Description:  This check monitors the player's pitch.
# Fail:         This check fails if the player's pitch differs from legitimate values.
# Author:       xNelly
# ...




execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.toPitch matches 9001.. run scoreboard players set @s ncmFailedFWT 1
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.toPitch matches ..-9001 run scoreboard players set @s ncmFailedFWT 1

execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.toPitch matches 9001.. if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"WrongTurn","color":"light_purple"},{"text":" {","color":"gray"},{"text":"","color":"gray"},{"score":{"name":"@s","objective":"VE.PlayerMoveEvent.fromPitch"},"color":"gray"},{"text":" -> ","color":"gray"},{"score":{"name":"@s","objective":"VE.PlayerMoveEvent.toPitch"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.toPitch matches 9001.. run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"WrongTurn","color":"light_purple"},{"text":" {","color":"gray"},{"text":"","color":"gray"},{"score":{"name":"@s","objective":"VE.PlayerMoveEvent.fromPitch"},"color":"gray"},{"text":" -> ","color":"gray"},{"score":{"name":"@s","objective":"VE.PlayerMoveEvent.toPitch"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.toPitch matches ..-9001 if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"WrongTurn","color":"light_purple"},{"text":" {","color":"gray"},{"text":"","color":"gray"},{"score":{"name":"@s","objective":"VE.PlayerMoveEvent.fromPitch"},"color":"gray"},{"text":" -> ","color":"gray"},{"score":{"name":"@s","objective":"VE.PlayerMoveEvent.toPitch"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.toPitch matches ..-9001 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"WrongTurn","color":"light_purple"},{"text":" {","color":"gray"},{"text":"","color":"gray"},{"score":{"name":"@s","objective":"VE.PlayerMoveEvent.fromPitch"},"color":"gray"},{"text":" -> ","color":"gray"},{"score":{"name":"@s","objective":"VE.PlayerMoveEvent.toPitch"},"color":"gray"},{"text":"}","color":"gray"}]


execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.toPitch matches 9001.. if score DataHolder ncmBlockMode matches 1 run scoreboard players set @s VE.PlayerMoveEvent.willModify 1
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.toPitch matches ..-9001 if score DataHolder ncmBlockMode matches 1 run scoreboard players set @s VE.PlayerMoveEvent.willModify 1
