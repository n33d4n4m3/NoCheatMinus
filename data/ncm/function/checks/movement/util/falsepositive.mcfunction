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
# Description:   This is a util function to handle false positve sources.
# Author:        n33d4n4m3
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.

# ------------------
# FP elemination
# ------------------



# Reset 
execute as @a if score @s ncmOGJump >= DataHolder ncmc_sf_og_3 run scoreboard players set @s ncmOGJump 0
execute as @e[type=minecraft:player] if score @s ncmAviateRC >= DataHolder ncmc_sf_fp_1 run scoreboard players set @s ncmAviate 0
execute as @e[type=minecraft:player] if score @s ncmAviateRC >= DataHolder ncmc_sf_fp_1 run scoreboard players set @s ncmAviateRC 0
execute as @e[type=minecraft:player] if score @s ncmCobwebNearby matches 10.. run scoreboard players set @s ncmCobwebNearby 0
execute as @e[type=minecraft:player] if score @s ncmLiquidNearby matches 10.. run scoreboard players set @s ncmLiquidNearby 0
execute as @e[type=minecraft:player] if score @s ncmLadderNearby matches 30.. run scoreboard players set @s ncmLadderNearby 0
execute as @a if score @s ncmFPDecent matches 10.. run scoreboard players set @s ncmFPDecent 0
execute as @e[type=minecraft:player] if score @s ncmBoat matches 1.. run scoreboard players set @s ncmBoat 0
execute as @a if predicate ncm:is_on_ground if score @s ncmFPBurst matches 1.. run scoreboard players remove @s ncmFPBurst 1


# Reset GameOverGUI-Screentime
scoreboard players operation @a[scores={ncmLeaveGame=1..}] ncmGameOverScr = DataHolder ncmc_ap_go_1

# Burst Fix

# Bowshot
execute as @a[advancements={ncm:player_shot=true}] run scoreboard players set @s ncmFPBurst 5
execute as @a[advancements={ncm:player_shot=true}] run scoreboard players operation @s ncmFPBurst += @s ncmLastLatencyLevel
execute as @a[advancements={ncm:player_shot=true}] run scoreboard players set @s ncmMVMTSKnockbackExempt 10
execute as @a[advancements={ncm:player_shot=true}] run scoreboard players operation @s ncmMVMTSKnockbackExempt += @s ncmLastLatencyLevel
advancement revoke @a[advancements={ncm:player_shot=true}] only ncm:player_shot

# Camel Boost
execute as @a at @s if entity @e[type=camel,distance=..2] run scoreboard players set @s ncmMVMTSKnockbackExempt 10
execute as @a at @s if entity @e[type=camel,distance=..2] run scoreboard players operation @s ncmMVMTSKnockbackExempt += @s ncmLastLatencyLevel

# Shulker
execute as @a at @s if entity @e[type=shulker,distance=..6] run scoreboard players set @s ncmFPBurst 5
execute as @a at @s if entity @e[type=shulker,distance=..6] run scoreboard players operation @s ncmFPBurst += @s ncmLastLatencyLevel
execute as @a at @s if entity @e[type=shulker,distance=..6] run scoreboard players set @s ncmMVMTSKnockbackExempt 10
execute as @a at @s if entity @e[type=shulker,distance=..6] run scoreboard players operation @s ncmMVMTSKnockbackExempt += @s ncmLastLatencyLevel

# EnderPearl

execute as @a if score @s ncmUsedEnderPearl matches 1.. run scoreboard players set @s ncmFPBurst 5
execute as @a if score @s ncmUsedEnderPearl matches 1.. run scoreboard players operation @s ncmFPBurst += @s ncmLastLatencyLevel
execute as @a if score @s ncmUsedEnderPearl matches 1.. run scoreboard players set @s ncmMVMTSKnockbackExempt 10
execute as @a if score @s ncmUsedEnderPearl matches 1.. run scoreboard players operation @s ncmMVMTSKnockbackExempt += @s ncmLastLatencyLevel

# Ravager
execute as @a at @s if entity @e[type=ravager,distance=..15] run scoreboard players set @s ncmFPBurst 5
execute as @a at @s if entity @e[type=ravager,distance=..15] run scoreboard players operation @s ncmFPBurst += @s ncmLastLatencyLevel
execute as @a at @s if entity @e[type=ravager,distance=..15] run scoreboard players set @s ncmMVMTSKnockbackExempt 10
execute as @a at @s if entity @e[type=ravager,distance=..15] run scoreboard players operation @s ncmMVMTSKnockbackExempt += @s ncmLastLatencyLevel


# Fireball
execute as @a at @s if entity @e[type=fireball,distance=..20] run scoreboard players set @s ncmFPBurst 5
execute as @a at @s if entity @e[type=fireball,distance=..20] run scoreboard players operation @s ncmFPBurst += @s ncmLastLatencyLevel
execute as @a at @s if entity @e[type=fireball,distance=..20] run scoreboard players set @s ncmMVMTSKnockbackExempt 10
execute as @a at @s if entity @e[type=fireball,distance=..20] run scoreboard players operation @s ncmMVMTSKnockbackExempt += @s ncmLastLatencyLevel

# Firework Rocket (Crossbow...)
execute as @a at @s if entity @e[type=firework_rocket,distance=..5] run scoreboard players set @s ncmFPBurst 5
execute as @a at @s if entity @e[type=firework_rocket,distance=..5] run scoreboard players operation @s ncmFPBurst += @s ncmLastLatencyLevel



# Goat Ram
execute as @e[type=goat] at @s store success score @s ncmGoatHasRamCooldown run data get entity @s Brain.memories.minecraft:ram_cooldown_ticks.value
execute as @e[type=goat] at @s if score @s ncmGoatHasRamCooldown matches 0 as @a[distance=..20] at @s run scoreboard players set @s ncmFPBurst 5
execute as @e[type=goat] at @s if score @s ncmGoatHasRamCooldown matches 0 as @a[distance=..20] at @s run scoreboard players operation @s ncmFPBurst += @s ncmLastLatencyLevel


# Fishing Rod Player Pulling
execute as @a[advancements={ncm:player_fished_something=true}] at @s as @a[distance=1..50] run scoreboard players set @s ncmFPBurst 5
execute as @a[advancements={ncm:player_fished_something=true}] at @s as @a[distance=1..50] run scoreboard players operation @s ncmFPBurst += @s ncmLastLatencyLevel
execute as @a[advancements={ncm:player_fished_something=true}] at @s as @a[distance=1..50] run scoreboard players set @s ncmMVMTSKnockbackExempt 10
execute as @a[advancements={ncm:player_fished_something=true}] at @s as @a[distance=1..50] run scoreboard players operation @s ncmMVMTSKnockbackExempt += @s ncmLastLatencyLevel
execute as @a[advancements={ncm:player_fished_something=true}] run advancement revoke @s only ncm:player_fished_something

# Wind Burst
execute as @a if items entity @s weapon *[enchantments~[{enchantments:"minecraft:wind_burst",levels:{min:0,max:255}}]] run scoreboard players set @s ncmFPBurst 5
execute as @a if items entity @s weapon *[enchantments~[{enchantments:"minecraft:wind_burst",levels:{min:0,max:255}}]] run scoreboard players operation @s ncmFPBurst += @s ncmLastLatencyLevel

# End Crystal
execute as @a at @s if entity @e[type=end_crystal,distance=..10] run scoreboard players set @s ncmFPBurst 5
execute as @a at @s if entity @e[type=end_crystal,distance=..10] run scoreboard players operation @s ncmFPBurst += @s ncmLastLatencyLevel

# Warden
execute as @e[type=minecraft:warden] store success score @s ncmAngryWarden run data get entity @e[type=warden,limit=1] anger.suspects[0]
execute as @e[type=minecraft:warden] at @s if score @s ncmAngryWarden matches 1 as @a[distance=..25] at @s run scoreboard players set @s ncmFPBurst 5
execute as @e[type=minecraft:warden] at @s if score @s ncmAngryWarden matches 1 as @a[distance=..25] at @s run scoreboard players operation @s ncmFPBurst += @s ncmLastLatencyLevel
execute as @e[type=minecraft:warden] at @s if score @s ncmAngryWarden matches 1 as @a[distance=..25] at @s run scoreboard players set @s ncmMVMTSKnockbackExempt 10
execute as @e[type=minecraft:warden] at @s if score @s ncmAngryWarden matches 1 as @a[distance=..25] at @s run scoreboard players operation @s ncmMVMTSKnockbackExempt += @s ncmLastLatencyLevel

# Powder Snow
execute as @a at @s if block ~ ~ ~ powder_snow run scoreboard players set @s ncmFPBurst 15
execute as @a at @s if block ~ ~ ~ powder_snow run scoreboard players operation @s ncmFPBurst += @s ncmLastLatencyLevel
execute as @a at @s if block ~ ~ ~ powder_snow run scoreboard players set @s ncmMVMTSKnockbackExempt 10
execute as @a at @s if block ~ ~ ~ powder_snow run scoreboard players operation @s ncmMVMTSKnockbackExempt += @s ncmLastLatencyLevel


# Wind Charge -> Movementstate Climbing
execute as @a at @s if entity @e[type=wind_charge,distance=..6] run scoreboard players set @s ncmMVMTSKnockbackExempt 30
execute as @a at @s if entity @e[type=wind_charge,distance=..6] run scoreboard players operation @s ncmMVMTSKnockbackExempt += @s ncmLastLatencyLevel

# Soul Speed + Soul Sand
execute as @a at @s anchored feet if block ~ ~ ~ minecraft:soul_sand if predicate ncm:has_soulspeed_armor run scoreboard players set @s ncmMVMTSKnockbackExempt 30
execute as @a at @s anchored feet if block ~ ~ ~ minecraft:soul_sand if predicate ncm:has_soulspeed_armor run scoreboard players operation @s ncmMVMTSKnockbackExempt += @s ncmLastLatencyLevel





# Dismount
execute as @a if score @s ncmFPDismountExempt matches 1.. run scoreboard players set @s ncmFPDismountExempt 2
execute as @a on vehicle on passengers run scoreboard players set @s ncmFPDismountExempt 1
execute as @a if score @s ncmFPDismountExempt matches 2.. run scoreboard players set @s ncmFPBurst 30
execute as @a if score @s ncmFPDismountExempt matches 2.. run scoreboard players operation @s ncmFPBurst += @s ncmLastLatencyLevel
execute as @a if score @s ncmFPDismountExempt matches 2.. run scoreboard players set @s ncmMVMTSKnockbackExempt 50
execute as @a if score @s ncmFPDismountExempt matches 2.. run scoreboard players operation @s ncmMVMTSKnockbackExempt += @s ncmLastLatencyLevel
execute as @a if score @s ncmFPDismountExempt matches 2.. run scoreboard players set @s ncmFPDismountExempt 0


# Wind Charged
execute as @e[predicate=ncm:has_wind_charged_effect] at @s as @a[distance=..15] at @s run scoreboard players set @s ncmFPBurst 30
execute as @e[predicate=ncm:has_wind_charged_effect] at @s as @a[distance=..15] at @s run scoreboard players operation @s ncmFPBurst += @s ncmLastLatencyLevel
execute as @e[predicate=ncm:has_wind_charged_effect] at @s as @a[distance=..15] at @s run scoreboard players set @s ncmMVMTSKnockbackExempt 70
execute as @e[predicate=ncm:has_wind_charged_effect] at @s as @a[distance=..15] at @s run scoreboard players operation @s ncmMVMTSKnockbackExempt += @s ncmLastLatencyLevel

# Dispenser
execute as @a at @s if predicate ncm:nearby/dispenser run scoreboard players set @s ncmFPBurst 30
execute as @a at @s if predicate ncm:nearby/dispenser run scoreboard players operation @s ncmFPBurst += @s ncmLastLatencyLevel
execute as @a at @s if predicate ncm:nearby/dispenser run scoreboard players set @s ncmMVMTSKnockbackExempt 80
execute as @a at @s if predicate ncm:nearby/dispenser run scoreboard players operation @s ncmMVMTSKnockbackExempt += @s ncmLastLatencyLevel


# Iron Golem FP fix

execute as @e[type=minecraft:player] at @s store result score @s ncmAngryIGNearby run data get entity @e[type=minecraft:iron_golem,limit=1,distance=..5] AngerTime 1

# Aviate / Levitate FP fix


execute as @e[type=minecraft:player] if predicate ncm:has_levitation_effect run scoreboard players operation @s ncmLevitate = DataHolder ncmc_sf_fp_1
execute as @e[type=minecraft:player] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:jump_boost":{}}}} run scoreboard players operation @s ncmLevitate = DataHolder ncmc_sf_fp_1
execute as @e[type=minecraft:player] at @s if entity @e[type=wind_charge,distance=..9] run scoreboard players set @s ncmLevitate 40
execute as @e[type=minecraft:player] at @s if entity @e[type=creeper,distance=..9] run scoreboard players set @s ncmLevitate 40
execute as @e[type=minecraft:player] at @s if entity @e[type=tnt,distance=..9] run scoreboard players set @s ncmLevitate 40
execute as @e[type=minecraft:player] if predicate ncm:raining if items entity @s weapon trident run scoreboard players set @s ncmLevitate 60
execute as @e[type=minecraft:player] if score @s ncmLiquidNearby matches 1.. if items entity @s weapon minecraft:trident run scoreboard players set @s ncmLevitate 60
execute as @e[type=minecraft:player] if score @s ncmLevitate matches 1.. run scoreboard players remove @s ncmLevitate 1

execute as @e[type=minecraft:player] if score @s ncmAviate matches 1.. run scoreboard players add @s ncmAviateRC 1


# Fixed Jump Counter (edge block)



execute as @a[tag=VE.PlayerMoveEvent] unless predicate ncm:is_on_ground if score @s VE.PlayerMoveEvent.hasClimbed matches 1 if score @s ncmWasOnGround matches 1 run scoreboard players add @s ncmOGJumpR 3
execute as @a if predicate ncm:is_on_ground run scoreboard players set @s ncmWasOnGround 1
execute as @a unless predicate ncm:is_on_ground run scoreboard players set @s ncmWasOnGround 0
execute as @a if score @s ncmOGJumpR matches 1.. run scoreboard players set @s ncmOGJump 1
execute as @a if score @s ncmOGJumpR matches 1.. run scoreboard players set @s ncmOGJumpR 0
execute as @a if score @s ncmOGJump matches 1.. run scoreboard players add @s ncmOGJump 1


# Stepable Fix


execute as @e[type=minecraft:player] at @s if entity @e[type=#minecraft:boat,distance=..2] run scoreboard players set @s ncmStepableNearby 10
execute as @e[type=minecraft:player] at @s if entity @e[type=oak_chest_boat,distance=..2] run scoreboard players set @s ncmStepableNearby 10
execute as @e[type=minecraft:player] at @s if entity @e[type=spruce_chest_boat,distance=..2] run scoreboard players set @s ncmStepableNearby 10
execute as @e[type=minecraft:player] at @s if entity @e[type=cherry_chest_boat,distance=..2] run scoreboard players set @s ncmStepableNearby 10
execute as @e[type=minecraft:player] at @s if entity @e[type=bamboo_chest_raft,distance=..2] run scoreboard players set @s ncmStepableNearby 10
execute as @e[type=minecraft:player] at @s if entity @e[type=mangrove_chest_boat,distance=..2] run scoreboard players set @s ncmStepableNearby 10
execute as @e[type=minecraft:player] at @s if entity @e[type=dark_oak_chest_boat,distance=..2] run scoreboard players set @s ncmStepableNearby 10
execute as @e[type=minecraft:player] at @s if entity @e[type=acacia_chest_boat,distance=..2] run scoreboard players set @s ncmStepableNearby 10
execute as @e[type=minecraft:player] at @s if entity @e[type=jungle_chest_boat,distance=..2] run scoreboard players set @s ncmStepableNearby 10
execute as @e[type=minecraft:player] at @s if entity @e[type=birch_chest_boat,distance=..2] run scoreboard players set @s ncmStepableNearby 10
execute as @e[type=minecraft:player] at @s if entity @e[type=#ncm:minecarts,distance=..4] run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~-2 ~-2 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~-2 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~-2 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~-2 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~-2 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~-2 ~-1 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~-1 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~-1 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~-1 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~-1 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~-2 ~ ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~ ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~ ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~ ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~ ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~-2 ~1 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~1 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~1 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~1 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~1 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~-2 ~2 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~2 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~2 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~2 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-2 ~2 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~-1 ~-2 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~-2 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~-2 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~-2 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~-2 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~-1 ~-1 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~-1 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~-1 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~-1 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~-1 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~-1 ~ ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~ ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~ ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~ ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~ ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~-1 ~1 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~1 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~1 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~1 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~1 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~-1 ~2 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~2 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~2 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~2 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~-1 ~2 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~ ~-2 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~-2 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~-2 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~-2 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~-2 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~ ~-1 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~-1 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~-1 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~-1 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~-1 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~ ~ ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~ ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~ ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~ ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~ ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~ ~1 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~1 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~1 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~1 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~1 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~ ~2 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~2 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~2 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~2 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~ ~2 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~1 ~-2 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~-2 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~-2 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~-2 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~-2 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~1 ~-1 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~-1 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~-1 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~-1 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~-1 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~1 ~ ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~ ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~ ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~ ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~ ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~1 ~1 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~1 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~1 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~1 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~1 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~1 ~2 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~2 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~2 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~2 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~1 ~2 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~2 ~-2 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~-2 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~-2 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~-2 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~-2 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~2 ~-1 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~-1 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~-1 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~-1 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~-1 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~2 ~ ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~ ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~ ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~ ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~ ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~2 ~1 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~1 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~1 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~1 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~1 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a at @s if block ~2 ~2 ~-2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~2 ~-1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~2 ~ #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~2 ~1 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10
execute as @a at @s if block ~2 ~2 ~2 #ncm:stepable run scoreboard players set @s ncmStepableNearby 10

execute as @a if score @s ncmStepableNearby matches 1.. run scoreboard players remove @s ncmStepableNearby 1


# Ice Boat fix
execute as @a at @s if predicate ncm:nearby/ice run scoreboard players set @s ncmIceNearby 100
execute as @a at @s if predicate ncm:nearby/blue_ice run scoreboard players set @s ncmIceNearby 100
execute as @a at @s if predicate ncm:nearby/packed_ice run scoreboard players set @s ncmIceNearby 100
execute as @a at @s if predicate ncm:nearby/frosted_ice run scoreboard players set @s ncmIceNearby 100

execute as @a if score @s ncmIceNearby matches 1.. run scoreboard players remove @s ncmIceNearby 1


# Cobweb & Sweet Berry Bush fix
execute as @a at @s if predicate ncm:nearby/cobweb run scoreboard players set @s ncmCobwebNearby 100
execute as @a at @s if predicate ncm:nearby/berry_bush run scoreboard players set @s ncmCobwebNearby 100

execute as @e[type=minecraft:player] if score @s ncmCobwebNearby matches 1.. run scoreboard players add @s ncmCobwebNearby 1


# Piston fix
scoreboard players set @a ncmPistonNearby 0
execute as @a at @s if predicate ncm:nearby/piston run scoreboard players set @s ncmPistonNearby 100
execute as @a at @s if predicate ncm:nearby/sticky_piston run scoreboard players set @s ncmPistonNearby 100

# Liquid fix
execute as @a at @s if predicate ncm:nearby/lava_fluid run scoreboard players set @s ncmLiquidNearby 1
execute as @a at @s if predicate ncm:nearby/water_fluid run scoreboard players set @s ncmLiquidNearby 1
execute as @e[type=minecraft:player] if score @s ncmLiquidNearby matches 1.. run scoreboard players add @s ncmLiquidNearby 1


execute as @e[type=minecraft:player] at @s if block ~ ~ ~ #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~ #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~ ~1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~ #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~ ~-1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~-1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~ ~1 ~-1 #climbable run scoreboard players set @s ncmLadderNearby 1

execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~ #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~ ~1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~ #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~ ~-1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~-1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~-1 ~1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~1 ~1 ~-1 #climbable run scoreboard players set @s ncmLadderNearby 1

execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~ #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~ ~1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~ #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~ ~-1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~-1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~-1 ~1 #climbable run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player] at @s if block ~-1 ~1 ~-1 #climbable run scoreboard players set @s ncmLadderNearby 1



# Slime & Honey block
execute as @e[type=minecraft:player,predicate=ncm:nearby/slime_block] run scoreboard players set @s ncmLadderNearby 1
execute as @e[type=minecraft:player,predicate=ncm:nearby/honey_block] run scoreboard players set @s ncmLadderNearby 1

execute as @e[type=minecraft:player] if score @s ncmLadderNearby matches 1.. run scoreboard players add @s ncmLadderNearby 1


# Player Jump Latency Check
execute as @a if score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players set @s ncmSFJC 0
execute as @a if score @s ncmSFPlayerLatencyFP matches 1.. run scoreboard players remove @s ncmSFPlayerLatencyFP 1
execute as @a if score @s ncmSFJC matches 2.. run scoreboard players operation @s ncmSFPlayerLatencyFP = DataHolder ncmc_sf_fp_2

# Damage

execute as @a if score @s ncmFPDamageReset matches 1.. run scoreboard players set @s ncmFPDamage -50
execute as @a if score @s ncmFPDamageReset matches 1.. run scoreboard players set @s ncmFPDamageReset 0
execute as @a if score @s ncmFPDamage matches 1.. run scoreboard players set @s ncmFPDamage -50
execute as @a if score @s ncmFPDamage matches -50..-1 run scoreboard players add @s ncmFPDamage 1

execute as @a if score @s ncmFPDecent matches 1.. run scoreboard players add @s ncmFPDecent 1