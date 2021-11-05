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
# Description:  This check applies raytracing mechanics to determine if an attacked entity was attackable in the player's situation (Field of View, Range)
# Fail:         This check fails if the player hits an entity that is too far away or not in the line of sight (ray).
# Sub checks:    /
# Author:       n33d4n4m3
# Credits:      Cloud_Wolf taught me a lot about raytracing, so I used one of his example commands as the main mechanic in this check and adapted it to the needs of NoCheatMinus. Credits to asdru#0001 (Cloud_Wolf's Discord-Server) for suggesting another way to track entity damage events. Tysm for your efforts.
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.


execute as @a[advancements={ncm:player_hurt_entity=true}] if score @s ncmKillCount matches 0 run tag @s add ncmHit
execute as @e[nbt={HurtTime:10s}] run tag @s add ncmGotHit
advancement revoke @a only ncm:player_hurt_entity
# Survival/Adventure gamemode maximum range= 4.4
execute as @a[tag=ncmHit,gamemode=survival] at @s anchored eyes as @e[distance=..4.40,tag=ncmGotHit] facing entity @s eyes anchored feet positioned ^ ^ ^1 rotated as @p[tag=ncmHit,tag=!ncmGotHit,sort=nearest] positioned ^ ^ ^-1 if entity @p[distance=..1,tag=ncmHit,tag=!ncmGotHit,sort=nearest] positioned ^ ^ ^1 run scoreboard players operation @p[tag=ncmHit,tag=!ncmGotHit,sort=nearest] ncmAttackedFID = @s fightID
execute as @a[tag=ncmHit,gamemode=survival] at @s anchored eyes as @e[distance=..4.40,tag=ncmGotHit] facing entity @s eyes anchored feet positioned ^ ^ ^1 rotated as @p[tag=ncmHit,tag=!ncmGotHit,sort=nearest] positioned ^ ^ ^-1 if entity @p[distance=..1,tag=ncmHit,tag=!ncmGotHit,sort=nearest] positioned ^ ^ ^1 run scoreboard players operation @s ncmAttackerFID = @p[tag=ncmHit,tag=!ncmGotHit,sort=nearest] fightID

execute as @a[tag=ncmHit,gamemode=adventure] at @s anchored eyes as @e[distance=..4.40,tag=ncmGotHit] facing entity @s eyes anchored feet positioned ^ ^ ^1 rotated as @p[tag=ncmHit,tag=!ncmGotHit,sort=nearest] positioned ^ ^ ^-1 if entity @p[distance=..1,tag=ncmHit,tag=!ncmGotHit,sort=nearest] positioned ^ ^ ^1 run scoreboard players operation @p[tag=ncmHit,tag=!ncmGotHit,sort=nearest] ncmAttackedFID = @s fightID
execute as @a[tag=ncmHit,gamemode=adventure] at @s anchored eyes as @e[distance=..4.40,tag=ncmGotHit] facing entity @s eyes anchored feet positioned ^ ^ ^1 rotated as @p[tag=ncmHit,tag=!ncmGotHit,sort=nearest] positioned ^ ^ ^-1 if entity @p[distance=..1,tag=ncmHit,tag=!ncmGotHit,sort=nearest] positioned ^ ^ ^1 run scoreboard players operation @s ncmAttackerFID = @p[tag=ncmHit,tag=!ncmGotHit,sort=nearest] fightID

# Creative gamemode maximum range= 6.0
execute as @a[tag=ncmHit,gamemode=creative] at @s anchored eyes as @e[distance=..6,tag=ncmGotHit] facing entity @s eyes anchored feet positioned ^ ^ ^1 rotated as @p[tag=ncmHit,tag=!ncmGotHit,sort=nearest] positioned ^ ^ ^-1 if entity @p[distance=..1,tag=ncmHit,tag=!ncmGotHit,sort=nearest] positioned ^ ^ ^1 run scoreboard players operation @p[tag=ncmHit,tag=!ncmGotHit,sort=nearest] ncmAttackedFID = @s fightID
execute as @a[tag=ncmHit,gamemode=creative] at @s anchored eyes as @e[distance=..6,tag=ncmGotHit] facing entity @s eyes anchored feet positioned ^ ^ ^1 rotated as @p[tag=ncmHit,tag=!ncmGotHit,sort=nearest] positioned ^ ^ ^-1 if entity @p[distance=..1,tag=ncmHit,tag=!ncmGotHit,sort=nearest] positioned ^ ^ ^1 run scoreboard players operation @s ncmAttackerFID = @p[tag=ncmHit,tag=!ncmGotHit,sort=nearest] fightID
# Bypassable: execute as @a if entity @s[nbt={SelectedItem:{"id":"minecraft:bow"}}] run scoreboard players set @s ncmAttackedFID 1
# Bypassable: execute as @a if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow"}]}] run scoreboard players set @s ncmAttackedFID 1
execute as @a[scores={ncmAttackedFID=0},tag=ncmHit] run tellraw @s[scores={inputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"MissingEntity","color":"light_purple"},{"text":" {...}","color":"gray"}]
execute as @a[scores={ncmAttackedFID=0},tag=ncmHit] run tellraw @a[scores={inputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"MissingEntity","color":"light_purple"},{"text":" {...}","color":"gray"}]


execute as @a[tag=ncmHit] run tag @s remove ncmHit
execute as @e[tag=ncmGotHit] run tag @s remove ncmGotHit
scoreboard players set @a ncmAttackedFID 0
scoreboard players set @e ncmAttackerFID 0
scoreboard players set @a ncmKillCount 0
