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
execute as @e[type=minecraft:player] at @s if score @s ncmJoinGame matches ..40 run scoreboard players set @s ncmJoinGame 41
execute as @e[type=armor_stand,name=SurvivalFlyA] at @s unless score @s UUID matches 1.. run scoreboard players set @s isSetback 1
execute as @e[type=armor_stand,name=SurvivalFlyA] at @s unless score @s UUID matches 1.. run scoreboard players operation @s UUID = @p[sort=nearest] UUID


execute as @e[type=minecraft:player] store result score @s ncmPlayerY run data get entity @s Pos[1]
execute as @e[type=minecraft:player] if score @s ncmPlayerY < @s ncmLastPlayerY run scoreboard players set @s ncmDecent 1


execute as @e[scores={isSetback=1,UUID=1}] at @s run scoreboard players add @a[distance=1.01..1.99,scores={ncmDecent=0,UUID=1},predicate=!ncm:is_sprinting] ncmSFDS_ivl 1
execute as @e[scores={isSetback=1,UUID=1}] at @s run scoreboard players add @a[distance=2..,scores={ncmDecent=0,UUID=1}] ncmSFDS_ivl 1

execute as @e[type=minecraft:player] if score @s ncmSFDS_ivl >= DataHolder ncmc_sf_ds_1 run scoreboard players add @s ncmSFDS_ivlrc 1
execute as @e[type=minecraft:player] if score @s ncmSFDS_ivl >= DataHolder ncmc_sf_ds_1 run tellraw @a ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Distance","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_ds_1"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"DataHolder","objective":"ncmc_sf_ds_2"},"color":"dark_gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmLastPlayerY"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmPlayerY"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmDecent"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @e[type=minecraft:player] store result score @s ncmLastPlayerY run data get entity @s Pos[1]

execute as @e[type=minecraft:player] if score @s ncmSFDS_ivlrc >= DataHolder ncmc_sf_ds_2 run scoreboard players set @s ncmSFDS_ivl 0
execute as @e[type=minecraft:player] if score @s ncmSFDS_ivlrc >= DataHolder ncmc_sf_ds_2 run scoreboard players set @s ncmSFDS_ivlrc 0

scoreboard players set @a ncmDecent 0
execute as @e[type=minecraft:player,scores={UUID=1}] at @s run tp @e[scores={isSetback=1,UUID=1}] @s



# Remove ArmorStand
execute if score @e[type=minecraft:player,scores={UUID=1},limit=1] ncmLeaveGame matches 1 run kill @e[scores={isSetback=1,UUID=1}]
execute as @e[type=minecraft:player,scores={ncmLeaveGame=1}] run scoreboard players set @s ncmJoinGame 1
execute as @e[type=minecraft:player,scores={ncmLeaveGame=1}] run scoreboard players set @s ncmLeaveGame 0



# --------------------
# Subcheck: LostGround
# --------------------

execute as @e[type=minecraft:player] store result score @s ncmYMotion run data get entity @s Motion[1] 1

execute as @e[type=minecraft:player,nbt={OnGround:0b}] if score @s ncmYMotion matches -1 run scoreboard players add @s ncmSFLG_ivl 1
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivl matches 1.. run scoreboard players add @s ncmSFLG_ivlrc 1
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivl >= DataHolder ncmc_sf_lg_1 run tellraw @a ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Movement","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"SurvivalFly","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"LostGround","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"@s","objective":"ncmYMotion"},"color":"gray"},{"text":"}","color":"gray"}]
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivlrc >= DataHolder ncmc_sf_lg_2 run scoreboard players set @s ncmSFLG_ivl 0
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivlrc >= DataHolder ncmc_sf_lg_2 run scoreboard players set @s ncmSFLG_ivlrc 0
execute as @e[type=minecraft:player] if score @s ncmSFLG_ivl >= DataHolder ncmc_sf_lg_1 run scoreboard players set @s ncmSFLG_ivl 0
