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
# Trigger:      This event gets triggered when the player attacks an entity.
# Credit:       Many thanks to Qscar (https://www.planetminecraft.com/member/qscar/). Thanks to his project "crit-detection" I learned that I can determine if a hit was critical by comparing possible and actual AttackDamage. I didn't know that before, thanks a lot!
# Author:       n33d4n4m3
# ...


tag @s add ncmPlayerAttacksEntityEvent

# Check if the attacked entity has survived
execute unless entity @s[advancements={ncm:player_killed_entity=true}] run tag @s add ncmPlayerAttacksEntityEvent.opponentSurvived
execute if entity @s[advancements={ncm:player_killed_entity=true}] run advancement revoke @s only ncm:player_killed_entity

# Determine attack damage, depending on the item the player is holding
execute store result score @s ncmePAEE.AtckDmg run attribute @s generic.attack_damage get 10
# -> Handle the attack with an item enchanted with sharpness. AtckDmg = AtckDmg + (5 * Level) + 5
execute store result score @s ncmeTmp.SharpLvl run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:sharpness"}].lvl 1
execute if score @s ncmeTmp.SharpLvl matches 1.. run scoreboard players operation @s ncmeTmp.SharpLvl *= DataHolder ncm.5
execute if score @s ncmeTmp.SharpLvl matches 1.. run scoreboard players operation @s ncmeTmp.SharpLvl += DataHolder ncm.5
execute if score @s ncmeTmp.SharpLvl matches 1.. run scoreboard players operation @s ncmePAEE.AtckDmg += @s ncmeTmp.SharpLvl
execute if score @s ncmeTmp.SharpLvl matches 1.. run scoreboard players set @s ncmeTmp.SharpLvl 0
# -> Handle the attack with an item enchanted with Bane of Arthropods. AtckDmg = AtckDmg + (2.5 * Level). But first check if there are arthropods around at all....
execute at @s if entity @e[type=#ncm:arthropods,distance=..9] store result score @s ncmeTmp.BaneLvl run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:bane_of_arthropods"}].lvl 1
#    -> Did the arthropod possibly die from the attack, preventing us from even detecting its presence? Check.
execute unless entity @s[tag=ncmPlayerAttacksEntityEvent.opponentSurvived] store result score @s ncmeTmp.BaneLvl run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:bane_of_arthropods"}].lvl 1
execute if score @s ncmeTmp.BaneLvl matches 1.. run scoreboard players operation @s ncmeTmp.BaneLvl *= DataHolder ncm.25
execute if score @s ncmeTmp.BaneLvl matches 1.. run scoreboard players operation @s ncmePAEE.AtckDmg += @s ncmeTmp.BaneLvl
execute if score @s ncmeTmp.BaneLvl matches 1.. run scoreboard players set @s ncmeTmp.BaneLvl 0
# -> Handle the attack with an item enchanted with Smite. AtckDmg = AtckDmg + (2.5 * Level). But first check if there are undeads around at all....
execute at @s if entity @e[type=#ncm:undeads,distance=..9] store result score @s ncmeTmp.SmiteLvl run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:smite"}].lvl 1
#    -> Did the undead possibly die from the attack, preventing us from even detecting its presence? Check.
execute unless entity @s[tag=ncmPlayerAttacksEntityEvent.opponentSurvived] store result score @s ncmeTmp.SmiteLvl run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:smite"}].lvl 1
execute if score @s ncmeTmp.SmiteLvl matches 1.. run scoreboard players operation @s ncmeTmp.SmiteLvl *= DataHolder ncm.25
execute if score @s ncmeTmp.SmiteLvl matches 1.. run scoreboard players operation @s ncmePAEE.AtckDmg += @s ncmeTmp.SmiteLvl
execute if score @s ncmeTmp.SmiteLvl matches 1.. run scoreboard players set @s ncmeTmp.SmiteLvl 0

# Determine if the hit was critical (Total damage dealt > Possible attack damage)
execute if score @s ncmePAEE.RealDmg > @s ncmePAEE.AtckDmg run tag @s add ncmPlayerAttacksEntityEvent.criticalHit
