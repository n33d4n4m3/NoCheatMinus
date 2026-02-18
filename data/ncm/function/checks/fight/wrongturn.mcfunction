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

scoreboard objectives add ncmFWTRotDiff dummy
scoreboard objectives add ncmFWTRotDiffSave dummy
scoreboard objectives add ncmFWTRotDiffTooHigh dummy

#execute as @a[tag=ncmePlayerMoveEvent,tag=ncmePlayerAttackEvent] if score @s ncmePlayerMoveEvent.hasRotationChanged matches 1 run scoreboard players operation @s ncmFWTRotDiff = @s ncmePlayerMoveEvent.yawDiff
#execute as @a[tag=ncmePlayerMoveEvent,tag=ncmePlayerAttackEvent] if score @s ncmePlayerMoveEvent.hasRotationChanged matches 1 run scoreboard players operation @s ncmFWTRotDiffSave = @s ncmePlayerMoveEvent.pitchDiff
#execute as @a[tag=ncmePlayerMoveEvent,tag=ncmePlayerAttackEvent] if score @s ncmePlayerMoveEvent.hasRotationChanged matches 1 if score @s ncmFWTRotDiff matches ..0 run scoreboard players operation @s ncmFWTRotDiff *= DataHolder ncm.-1
#execute as @a[tag=ncmePlayerMoveEvent,tag=ncmePlayerAttackEvent] if score @s ncmePlayerMoveEvent.hasRotationChanged matches 1 if score @s ncmFWTRotDiffSave matches ..0 run scoreboard players operation @s ncmFWTRotDiffSave *= DataHolder ncm.-1
#execute as @a[tag=ncmePlayerMoveEvent,tag=ncmePlayerAttackEvent] if score @s ncmePlayerMoveEvent.hasRotationChanged matches 1 run scoreboard players operation @s ncmFWTRotDiff += @s ncmFWTRotDiffSave
#execute as @a[tag=ncmePlayerMoveEvent,tag=ncmePlayerAttackEvent] if score @s ncmePlayerMoveEvent.hasRotationChanged matches 1 if score @s ncmFWTRotDiff matches 1000.. run scoreboard players add @s ncmFWTRotDiffTooHigh 1
#execute as @a[tag=ncmePlayerMoveEvent,tag=ncmePlayerAttackEvent] unless score @s ncmFWTRotDiff matches 1000.. run scoreboard players set @s ncmFWTRotDiffTooHigh 0
#execute as @a[tag=ncmePlayerMoveEvent,tag=ncmePlayerAttackEvent] if score @s ncmePlayerMoveEvent.hasRotationChanged matches 1 run tellraw @s ["",{text:"Rotation difference on hit: "},{score:{name:"@s",objective:"ncmFWTRotDiff"}}]
#execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmFWTRotDiffTooHigh matches 3.. if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"WrongTurn","color":"light_purple"},{"text":" {...}","color":"gray"}]
#execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmFWTRotDiffTooHigh matches 3.. run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"WrongTurn","color":"light_purple"},{"text":" {...}","color":"gray"}]
#execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmFWTRotDiffTooHigh matches 3.. run scoreboard players set @s ncmFWTRotDiffTooHigh 0


#scoreboard players set @a ncmFWTRotDiff 0
#scoreboard players set @a ncmFWTRotDiffSave 0


execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.toPitch matches 9001.. run scoreboard players set @s ncmFailedFWT 1
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.toPitch matches ..-9001 run scoreboard players set @s ncmFailedFWT 1

execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.toPitch matches 9001.. if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"WrongTurn","color":"light_purple"},{"text":" {","color":"gray"},{"text":"","color":"gray"},{"score":{"name":"@s","objective":"ncmePlayerMoveEvent.fromPitch"},"color":"gray"},{"text":" -> ","color":"gray"},{"score":{"name":"@s","objective":"ncmePlayerMoveEvent.toPitch"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.toPitch matches 9001.. run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"WrongTurn","color":"light_purple"},{"text":" {","color":"gray"},{"text":"","color":"gray"},{"score":{"name":"@s","objective":"ncmePlayerMoveEvent.fromPitch"},"color":"gray"},{"text":" -> ","color":"gray"},{"score":{"name":"@s","objective":"ncmePlayerMoveEvent.toPitch"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.toPitch matches ..-9001 if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"WrongTurn","color":"light_purple"},{"text":" {","color":"gray"},{"text":"","color":"gray"},{"score":{"name":"@s","objective":"ncmePlayerMoveEvent.fromPitch"},"color":"gray"},{"text":" -> ","color":"gray"},{"score":{"name":"@s","objective":"ncmePlayerMoveEvent.toPitch"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.toPitch matches ..-9001 run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"WrongTurn","color":"light_purple"},{"text":" {","color":"gray"},{"text":"","color":"gray"},{"score":{"name":"@s","objective":"ncmePlayerMoveEvent.fromPitch"},"color":"gray"},{"text":" -> ","color":"gray"},{"score":{"name":"@s","objective":"ncmePlayerMoveEvent.toPitch"},"color":"gray"},{"text":"}","color":"gray"}]


execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.toPitch matches 9001.. if score DataHolder ncmBlockMode matches 1 run scoreboard players set @s ncmePlayerMoveEvent.willModify 1
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.toPitch matches ..-9001 if score DataHolder ncmBlockMode matches 1 run scoreboard players set @s ncmePlayerMoveEvent.willModify 1
