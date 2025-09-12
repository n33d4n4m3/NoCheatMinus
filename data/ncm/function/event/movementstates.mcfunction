# 0 -> none
# 1 -> walking
# 2 -> sprinting
# 3 -> sneaking
# 4 -> swimming
# 5 -> climbing
# 6 -> flying
# 7 -> minecart
# 8 -> boat
# 9 -> pig
# 10 -> aviating
# 11 -> horse
# 12 -> strider
# 13 -> walking on water
# 14 -> walking under water

# Reset the players movement state global.
scoreboard players set @a ncmeCurrentMovementState 0

# Determine the players current movement state.
execute as @a if score @s ncme.walkOneCm matches 1.. run scoreboard players set @s ncmeCurrentMovementState 1
execute as @a if predicate ncm:e_is_sprinting run scoreboard players set @s ncmeCurrentMovementState 2
execute as @a if predicate ncm:e_is_sneaking run scoreboard players set @s ncmeCurrentMovementState 3
execute as @a if score @s ncme.swimOneCm matches 1.. run scoreboard players set @s ncmeCurrentMovementState 4
execute as @a if score @s ncme.climbOneCm matches 1.. run scoreboard players set @s ncmeCurrentMovementState 5
execute as @a if score @s ncme.flyOneCm matches 1.. run scoreboard players set @s ncmeCurrentMovementState 6
execute as @a if score @s ncme.minecartOneCm matches 1.. run scoreboard players set @s ncmeCurrentMovementState 7
execute as @a if score @s ncme.boatOneCm matches 1.. run scoreboard players set @s ncmeCurrentMovementState 8
execute as @a if score @s ncme.pigOneCm matches 1.. run scoreboard players set @s ncmeCurrentMovementState 9
execute as @a if score @s ncme.aviateOneCm matches 1.. run scoreboard players set @s ncmeCurrentMovementState 10
execute as @a if score @s ncme.horseOneCm matches 1.. run scoreboard players set @s ncmeCurrentMovementState 11
execute as @a if score @s ncme.striderOneCm matches 1.. run scoreboard players set @s ncmeCurrentMovementState 12
execute as @a if score @s ncme.walkOnWaterOneCm matches 1.. run scoreboard players set @s ncmeCurrentMovementState 13
execute as @a if score @s ncme.walkUnderWaterOneCm matches 1.. run scoreboard players set @s ncmeCurrentMovementState 14

# Reset values.
scoreboard players reset @a ncme.aviateOneCm
scoreboard players reset @a ncme.boatOneCm
scoreboard players reset @a ncme.climbOneCm
scoreboard players reset @a ncme.flyOneCm
scoreboard players reset @a ncme.horseOneCm
scoreboard players reset @a ncme.minecartOneCm
scoreboard players reset @a ncme.pigOneCm
scoreboard players reset @a ncme.striderOneCm
scoreboard players reset @a ncme.swimOneCm
scoreboard players reset @a ncme.walkOneCm
scoreboard players reset @a ncme.walkOnWaterOneCm
scoreboard players reset @a ncme.walkUnderWaterOneCm