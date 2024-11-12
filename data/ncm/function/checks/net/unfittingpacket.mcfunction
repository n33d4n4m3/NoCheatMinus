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
# Description:  Unfortunately, it isn't possible to determine which packets are sent by/to the player. There are some workarounds to track behaviors, which are untypical in certain movement/network states. Due to network latency issues, those workarounds aren't suitable for evaluating whether the player is using client modifications or not.  For this reason, UnfittingPacket violations won't increase the global violation level (= there won't be a punishment for failing this check). Nevertheless, all workarounds for packet/network tracking can be found here.
# Fail:         This check fails if the player sents a unfitting packet in a certain movement/network state.
# Subchecks:    - PlayerMoveC2SPacket whilst OffGround
#               - PlayerRespawnS2CPacket whilst Alive
# Author:        n33d4n4m3
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.



# ---------------------------------------
# Subcheck: PlayerMoveC2SPacket/OffGround
# ---------------------------------------

execute as @e[type=minecraft:player] at @s if score @s ncmFallPackets matches 1.. if block ~ ~-1 ~ air if block ~ ~-2 ~ air run scoreboard players set @s ncmFailedNETUP 5
execute as @e[type=minecraft:player] at @s if score @s ncmFallPackets matches 1.. if block ~ ~-1 ~ air if block ~ ~-2 ~ air if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"UnfittingPacket: ","color":"white"},{"text":"sent a packet (PlayerMoveC2SPacket), which doesn't fit the player's current state (OffGround)","color":"white"}]
execute as @e[type=minecraft:player] at @s if score @s ncmFallPackets matches 1.. if block ~ ~-1 ~ air if block ~ ~-2 ~ air run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"UnfittingPacket: ","color":"white"},{"text":"sent a packet (PlayerMoveC2SPacket), which doesn't fit the player's current state (OffGround)","color":"white"}]

execute as @e[type=minecraft:player] if score @s ncmFallPackets matches 1.. run scoreboard players set @s ncmFallPackets 0

# ---------------------------------------
# Subcheck: PlayerRespawnS2CPacket/Alive
# ---------------------------------------
scoreboard players add @a ncmUPIRRspwnScr 1
execute as @e[type=minecraft:player] at @s run scoreboard players set @s ncmUPIRRspwnScr 0
scoreboard players add @a[scores={ncmUPIRRspwnScr=1..,ncmPlayerDeath=0}] ncmUPIR_ivl 1
execute as @e[type=minecraft:player] if score @s ncmPlayerDeath matches 1.. run scoreboard players set @s ncmPlayerDeath 0
execute as @e[type=minecraft:player] if score @s ncmUPIR_ivl matches 1.. run scoreboard players set @s ncmFailedNETUP 10
execute as @e[type=minecraft:player] if score @s ncmUPIR_ivl matches 1.. if score @s ncmVerbose matches 2 run tellraw @a[scores={ncmInputR=1}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"UnfittingPacket: ","color":"white"},{"text":"received a packet (PlayerRespawnS2CPacket), which doesn't fit the player's current state (Alive)","color":"white"}]
execute as @e[type=minecraft:player] if score @s ncmUPIR_ivl matches 1.. run tellraw @a[scores={ncmInputR=2}] ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"},{"text":" failed ","color":"white"},{"text":"UnfittingPacket: ","color":"white"},{"text":"received a packet (PlayerRespawnS2CPacket), which doesn't fit the player's current state (Alive)","color":"white"}]

execute as @e[type=minecraft:player] if score @s ncmUPIRRspwnScr matches 0 run scoreboard players set @s ncmUPIR_ivl 0
