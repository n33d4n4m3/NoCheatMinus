# Credit:       Many thanks to Qscar (https://www.planetminecraft.com/member/qscar/). Thanks to his project "crit-detection" I learned that I can determine if a hit was critical by comparing possible and actual AttackDamage. I didn't know that before, thanks a lot!
# Advancement-triggered event.

tag @s add ncmePlayerAttackEvent
advancement revoke @s only ncm:e_player_hurt_entity



# Determine whether the opponent has survived.
execute if entity @s[advancements={ncm:e_player_killed_entity=true}] run scoreboard players set @s ncmePlayerAttackEvent.opponentSurvived 0
execute if entity @s[advancements={ncm:e_player_killed_entity=false}] run scoreboard players set @s ncmePlayerAttackEvent.opponentSurvived 1
execute if entity @s[advancements={ncm:e_player_killed_entity=true}] run advancement revoke @s only ncm:e_player_killed_entity

# Determine whether the hit was critical or not.
# Determine attack damage, depending on the item the player is holding
execute store result score @s ncmePlayerAttackEvent.attackDamage run attribute @s minecraft:attack_damage get 10
# -> Handle the attack with an item enchanted with sharpness. AtckDmg = AtckDmg + (5 * Level) + 5
execute store result score @s ncmePlayerAttackEvent.sharpnessLevel run data get entity @s SelectedItem.components.minecraft:enchantments.levels.minecraft:sharpness
execute if score @s ncmePlayerAttackEvent.sharpnessLevel matches 1.. run scoreboard players operation @s ncmePlayerAttackEvent.sharpnessLevel *= 5 ncmeNumber
execute if score @s ncmePlayerAttackEvent.sharpnessLevel matches 1.. run scoreboard players operation @s ncmePlayerAttackEvent.sharpnessLevel += 5 ncmeNumber
execute if score @s ncmePlayerAttackEvent.sharpnessLevel matches 1.. run scoreboard players operation @s ncmePlayerAttackEvent.attackDamage += @s ncmePlayerAttackEvent.sharpnessLevel
execute if score @s ncmePlayerAttackEvent.sharpnessLevel matches 1.. run scoreboard players set @s ncmePlayerAttackEvent.sharpnessLevel 0
# -> Handle the attack with an item enchanted with Bane of Arthropods. AtckDmg = AtckDmg + (2.5 * Level). But first check if there are arthropods around at all....
execute at @s if entity @e[type=#ncm:e_arthropods,distance=..9] store result score @s ncmePlayerAttackEvent.baneLevel run data get entity @s SelectedItem.components.minecraft:enchantments.levels.minecraft:bane_of_arthropods


#     -> Did the arthropod possibly die from the attack, preventing us from even detecting its presence? Check.
execute unless score @s ncmePlayerAttackEvent.opponentSurvived matches 1 store result score @s ncmePlayerAttackEvent.baneLevel run data get entity @s SelectedItem.components.minecraft:enchantments.levels.minecraft:bane_of_arthropods
execute if score @s ncmePlayerAttackEvent.baneLevel matches 1.. run scoreboard players operation @s ncmePlayerAttackEvent.baneLevel *= 25 ncmeNumber
execute if score @s ncmePlayerAttackEvent.baneLevel matches 1.. run scoreboard players operation @s ncmePlayerAttackEvent.attackDamage += @s ncmePlayerAttackEvent.baneLevel
execute if score @s ncmePlayerAttackEvent.baneLevel matches 1.. run scoreboard players set @s ncmePlayerAttackEvent.baneLevel 0
# -> Handle the attack with an item enchanted with Smite. AtckDmg = AtckDmg + (2.5 * Level). But first check if there are undeads around at all....
execute at @s if entity @e[type=#ncm:e_undeads,distance=..9] store result score @s ncmePlayerAttackEvent.smiteLevel run data get entity @s SelectedItem.components.minecraft:enchantments.levels.minecraft:smite
 #    -> Did the undead possibly die from the attack, preventing us from even detecting its presence? Check.
execute unless score @s ncmePlayerAttackEvent.opponentSurvived matches 1 store result score @s ncmePlayerAttackEvent.smiteLevel run data get entity @s SelectedItem.components.minecraft:enchantments.levels.minecraft:smite
execute if score @s ncmePlayerAttackEvent.smiteLevel matches 1.. run scoreboard players operation @s ncmePlayerAttackEvent.smiteLevel *= 25 ncmeNumber
execute if score @s ncmePlayerAttackEvent.smiteLevel matches 1.. run scoreboard players operation @s ncmePlayerAttackEvent.attackDamage += @s ncmePlayerAttackEvent.smiteLevel
execute if score @s ncmePlayerAttackEvent.smiteLevel matches 1.. run scoreboard players set @s ncmePlayerAttackEvent.smiteLevel 0

# Determine if the hit was critical (Total damage dealt > Possible attack damage)
execute if score @s ncmePlayerAttackEvent.damageDealt > @s ncmePlayerAttackEvent.attackDamage run scoreboard players set @s ncmePlayerAttackEvent.criticalHit 1
execute unless score @s ncmePlayerAttackEvent.damageDealt > @s ncmePlayerAttackEvent.attackDamage run scoreboard players set @s ncmePlayerAttackEvent.criticalHit 0