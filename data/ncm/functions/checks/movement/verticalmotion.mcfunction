# ...
# Description:  This check monitors the player's vertical motion.
# Fail:         This check fails if the player's vertical motion differs from the expected vertical motion in Subcheck-defined situations.
# Subchecks:    - Gravity
# Author:        n33d4n4m3
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.


# -----------------
# Subcheck: Gravity
# -----------------

execute as @e[type=minecraft:player] store result score @s ncmYMotion run data get entity @s Motion[1] 1000000

execute as @e[type=minecraft:player,nbt={OnGround:1b}] unless score @s ncmYMotion = DataHolder ncmc_vm_gr_1 unless score @s ncmYMotion = DataHolder ncmc_vm_gr_2 unless score @s ncmYMotion = DataHolder ncmc_vm_gr_3 unless score @s ncmYMotion matches 0 run scoreboard players add @s ncmVMGR_ivl 1
execute as @e[type=minecraft:player] if score @s ncmVMGR_ivl matches 1.. run scoreboard players add @s ncmVMGR_irc 1
execute as @e[type=minecraft:player] if score @s ncmVMGR_ivl >= DataHolder ncmc_vm_gr_4 run tellraw @a ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"VerticalMotion: ","color":"white"},{"text":"seemed to be freed from the laws of nature.","color":"white"}]
execute as @e[type=minecraft:player] if score @s ncmVMGR_irc >= DataHolder ncmc_vm_gr_5 run scoreboard players set @s ncmVMGR_ivl 0
execute as @e[type=minecraft:player] if score @s ncmVMGR_irc >= DataHolder ncmc_vm_gr_5 run scoreboard players set @s ncmVMGR_irc 0
execute as @e[type=minecraft:player] if score @s ncmVMGR_ivl >= DataHolder ncmc_vm_gr_4 run scoreboard players set @s ncmVMGR_ivl 0
