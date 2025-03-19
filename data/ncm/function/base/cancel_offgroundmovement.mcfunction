scoreboard players set DataHolder ncmOffGrCnclBusy 1
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["ncmMvmCancel"],Invulnerable:1b,Invisible:1b}
execute store result entity @e[tag=ncmMvmCancel,limit=1] Pos[0] double 1 run scoreboard players get @s ncmLastXOnGrd
execute store result entity @e[tag=ncmMvmCancel,limit=1] Pos[1] double 1 run scoreboard players get @s ncmLastYOnGrd
execute store result entity @e[tag=ncmMvmCancel,limit=1] Pos[2] double 1 run scoreboard players get @s ncmLastZOnGrd
execute store result entity @e[tag=ncmMvmCancel,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute store result entity @e[tag=ncmMvmCancel,limit=1] Rotation[1] float 1 run data get entity @s Rotation[1] 1
teleport @s @e[tag=ncmMvmCancel,limit=1]
kill @e[tag=ncmMvmCancel]
scoreboard players set DataHolder ncmOffGrCnclBusy 0
