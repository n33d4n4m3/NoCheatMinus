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
# Description:  When a player makes a critical hit, this check verifies that the hit was made under legitimate conditions.
# Fail:         This check fails if the player made a critical hit without the conditions being met.
# Sub checks:    /
# Author:       n33d4n4m3
# ...

# Info: If the player makes a critical hit, this check is called. (See tick.mcfunction <- PlayerAttacksEntityEvent).

# The most influential false negative source of this check: The damage taken by the attacked entity is less than or equal to the generic attack damage.
#  -> The reason for this can be, for example, that the attack cooldown of the weapon is still running, that the attack was blocked with a shield, that the attacked entity has a resistance status effect/armor, or that it died from the attack.



# Check the circumstances under which the critical hit was made. Store the number of missing requirements for a critical hit in ncmFCCMissingReq.

# Abort check when player is holding a mace.
execute if items entity @s weapon mace run return fail

# Did the player fall while making the critical hit? ncmFCCFall > 1 = True.
execute store result score @s ncmFCCFall run data get entity @s fall_distance 10
execute unless score @s ncmFCCFall matches 1.. run scoreboard players add @s ncmFCCMissingReq 1

# Did the player sprint while making the critical hit?
execute if predicate ncm:is_sprinting run scoreboard players add @s ncmFCCMissingReq 1

# Did the player have a blindness status effect when he made a critical hit?
execute if predicate ncm:has_blindness_effect run scoreboard players add @s ncmFCCMissingReq 1

# Was the player onground when he made the critical hit?
execute if predicate ncm:is_on_ground run scoreboard players add @s ncmFCCMissingReq 1

# If the player has made a critical hit, even though at least one requirement has not been met: Violation.
execute if score @s ncmFCCMissingReq matches 1.. run scoreboard players set @s ncmFailedFCC 5
execute if score @s ncmFCCMissingReq matches 1.. if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Criticals","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"@s","objective":"VE.PlayerAttackEvent.damageDealt"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmFCCMissingReq"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmFCCFall"},"color":"gray"},{"text":"}","color":"gray"}]
execute if score @s ncmFCCMissingReq matches 1.. run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"Fight","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"Criticals","color":"light_purple"},{"text":" {","color":"gray"},{"score":{"name":"@s","objective":"VE.PlayerAttackEvent.damageDealt"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmFCCMissingReq"},"color":"gray"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"ncmFCCFall"},"color":"gray"},{"text":"}","color":"gray"}]
# Reset the required values.
scoreboard players set @s ncmFCCFall 0
scoreboard players set @s ncmFCCMissingReq 0
