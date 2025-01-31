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
# Description:  This function ensures that bad behavior affects the player's reputation.
# Author:       n33d4n4m3
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.

# BlockInteract.MissingBlock
execute as @e[type=minecraft:player] if score @s ncmFailedBIMB matches 1..4 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_1
execute as @e[type=minecraft:player] if score @s ncmFailedBIMB matches 5..8 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_2
execute as @e[type=minecraft:player] if score @s ncmFailedBIMB matches 9..10 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_3
#execute as @e[type=minecraft:player] if score @s ncmFailedBIMB matches 1.. run kick @s[name=Yorb] NoCheatMinus: You clicked another block than interacted with last.
execute as @e[type=minecraft:player] if score @s ncmFailedBIMB matches 1.. run scoreboard players set @s ncmFailedBIMB 0


# BlockPlace.Appropriate
execute as @e[type=minecraft:player] if score @s ncmFailedBPAP matches 1..4 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_4
execute as @e[type=minecraft:player] if score @s ncmFailedBPAP matches 5..8 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_5
execute as @e[type=minecraft:player] if score @s ncmFailedBPAP matches 9..10 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_6
#execute as @e[type=minecraft:player] if score @s ncmFailedBPAP matches 1.. run kick @s[name=Yorb] NoCheatMinus: You placed too many blocks.
execute as @e[type=minecraft:player] if score @s ncmFailedBPAP matches 1.. run scoreboard players set @s ncmFailedBPAP 0

# Fight.Criticals
execute as @e[type=minecraft:player] if score @s ncmFailedFCC matches 1..4 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_28
execute as @e[type=minecraft:player] if score @s ncmFailedFCC matches 5..8 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_29
execute as @e[type=minecraft:player] if score @s ncmFailedFCC matches 9..10 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_30
#execute as @e[type=minecraft:player] if score @s ncmFailedFCC matches 1.. run kick @s[name=Yorb] NoCheatMinus: You made a critical hit under unlegitimate conditions.
execute as @e[type=minecraft:player] if score @s ncmFailedFCC matches 1.. run scoreboard players set @s ncmFailedFCC 0

# Fight.Reach
execute as @e[type=minecraft:player] if score @s ncmFailedFRNG matches 1..4 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_31
execute as @e[type=minecraft:player] if score @s ncmFailedFRNG matches 5..8 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_32
execute as @e[type=minecraft:player] if score @s ncmFailedFRNG matches 9..10 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_33
#execute as @e[type=minecraft:player] if score @s ncmFailedFRNG matches 1.. run kick @s[name=Yorb] NoCheatMinus: You attacked an entity out of your legitimate range.
execute as @e[type=minecraft:player] if score @s ncmFailedFRNG matches 1.. run scoreboard players set @s ncmFailedFRNG 0

# Fight.Direction
execute as @e[type=minecraft:player] if score @s ncmFailedFD matches 1..4 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_56
execute as @e[type=minecraft:player] if score @s ncmFailedFD matches 5..8 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_57
execute as @e[type=minecraft:player] if score @s ncmFailedFD matches 9..10 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_58
#execute as @e[type=minecraft:player] if score @s ncmFailedFD matches 1.. run kick @s[name=Yorb] NoCheatMinus: Insufficent hit matching.
execute as @e[type=minecraft:player] if score @s ncmFailedFD matches 1.. run scoreboard players set @s ncmFailedFD 0

# Inventory.Appropriate
execute as @e[type=minecraft:player] if score @s ncmFailedINVAP matches 1..4 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_13
execute as @e[type=minecraft:player] if score @s ncmFailedINVAP matches 5..8 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_14
execute as @e[type=minecraft:player] if score @s ncmFailedINVAP matches 9..10 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_15
#execute as @e[type=minecraft:player] if score @s ncmFailedINVAP matches 1.. run kick @s[name=Yorb] NoCheatMinus: You consumed too many goods.
execute as @e[type=minecraft:player] if score @s ncmFailedINVAP matches 1.. run scoreboard players set @s ncmFailedINVAP 0

# Movement.SurvivalFly
execute as @e[type=minecraft:player] if score @s ncmFailedMVMSF matches 1..4 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_19
execute as @e[type=minecraft:player] if score @s ncmFailedMVMSF matches 5..8 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_20
execute as @e[type=minecraft:player] if score @s ncmFailedMVMSF matches 9..10 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_21
execute as @e[type=minecraft:player] at @s if score @s ncmFailedMVMSF matches 5.. unless score DataHolder ncmOffGrCnclBusy matches 1 if score DataHolder ncmc_bs_fl_34 matches 1 run function ncm:base/cancel_offgroundmovement
#execute as @e[type=minecraft:player] if score @s ncmFailedMVMSF matches 1.. run kick @s[name=Yorb] NoCheatMinus: Invalid movement.
execute as @e[type=minecraft:player] if score @s ncmFailedMVMSF matches 1.. run scoreboard players set @s ncmFailedMVMSF 0

# Movement.TickStride
execute as @e[type=minecraft:player] if score @s ncmFailedMVMTS matches 1..4 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_41
execute as @e[type=minecraft:player] if score @s ncmFailedMVMTS matches 5..8 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_42
execute as @e[type=minecraft:player] if score @s ncmFailedMVMTS matches 9..10 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_43
#execute as @e[type=minecraft:player] if score @s ncmFailedMVMTS matches 1.. run kick @s[name=Yorb] NoCheatMinus: Severe fast moving.
execute as @e[type=minecraft:player] if score @s ncmFailedMVMTS matches 1.. run scoreboard players set @s ncmFailedMVMTS 0


# Network.Appropriate
execute as @e[type=minecraft:player] if score @s ncmFailedNETAP matches 1..4 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_22
execute as @e[type=minecraft:player] if score @s ncmFailedNETAP matches 5..8 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_23
execute as @e[type=minecraft:player] if score @s ncmFailedNETAP matches 9..10 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_24
#execute as @e[type=minecraft:player] if score @s ncmFailedNETAP matches 1.. run kick @s[name=Yorb] NoCheatMinus: Malicious network behavior. (NETAP)
execute as @e[type=minecraft:player] if score @s ncmFailedNETAP matches 1.. run scoreboard players set @s ncmFailedNETAP 0

# Network.UnfittingPacket
execute as @e[type=minecraft:player] if score @s ncmFailedNETUP matches 1..4 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_25
execute as @e[type=minecraft:player] if score @s ncmFailedNETUP matches 5..8 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_26
execute as @e[type=minecraft:player] if score @s ncmFailedNETUP matches 9..10 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_27
#execute as @e[type=minecraft:player] if score @s ncmFailedNETUP matches 1.. run kick @s[name=Yorb] NoCheatMinus: Malicious network behavior. (NETUP)
execute as @e[type=minecraft:player] if score @s ncmFailedNETUP matches 1.. run scoreboard players set @s ncmFailedNETUP 0

# Combined.Munchhausen
execute as @e[type=minecraft:player] if score @s ncmFailedCMnchsn matches 1..4 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_35
execute as @e[type=minecraft:player] if score @s ncmFailedCMnchsn matches 5..8 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_36
execute as @e[type=minecraft:player] if score @s ncmFailedCMnchsn matches 9..10 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_37
#execute as @e[type=minecraft:player] if score @s ncmFailedCMnchsn matches 1.. run kick @s[name=Yorb] NoCheatMinus: Munchhausen bug-using. (Or maybe not, please do not try again)
execute as @e[type=minecraft:player] if score @s ncmFailedCMnchsn matches 1.. run scoreboard players set @s ncmFailedCMnchsn 0

# Combined.BedLeave
execute as @e[type=minecraft:player] if score @s ncmFailedCBedLv matches 1..4 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_38
execute as @e[type=minecraft:player] if score @s ncmFailedCBedLv matches 5..8 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_39
execute as @e[type=minecraft:player] if score @s ncmFailedCBedLv matches 9..10 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_40
#execute as @e[type=minecraft:player] if score @s ncmFailedCBedLv matches 1.. run kick @s[name=Yorb] NoCheatMinus: Malicious network behavior. (BedLeave)
execute as @e[type=minecraft:player] if score @s ncmFailedCBedLv matches 1.. run scoreboard players set @s ncmFailedCBedLv 0

# Movement.NoFall
execute as @e[type=minecraft:player] if score @s ncmFailedMVMNF matches 1..4 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_44
execute as @e[type=minecraft:player] if score @s ncmFailedMVMNF matches 5..8 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_45
execute as @e[type=minecraft:player] if score @s ncmFailedMVMNF matches 9..10 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_46
#execute as @e[type=minecraft:player] if score @s ncmFailedMVMNF matches 1.. run kick @s[name=Yorb] NoCheatMinus: You tried to reduce or avoid fall damage.
execute as @e[type=minecraft:player] if score @s ncmFailedMVMNF matches 1.. run scoreboard players set @s ncmFailedMVMNF 0

# Fight.WrongTurn
execute as @e[type=minecraft:player] if score @s ncmFailedFWT matches 1..4 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_47
execute as @e[type=minecraft:player] if score @s ncmFailedFWT matches 5..8 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_48
execute as @e[type=minecraft:player] if score @s ncmFailedFWT matches 9..10 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_49
#execute as @e[type=minecraft:player] if score @s ncmFailedFWT matches 1.. run kick @s[name=Yorb] NoCheatMinus: You turned wrongly.
execute as @e[type=minecraft:player] if score @s ncmFailedFWT matches 1.. run scoreboard players set @s ncmFailedFWT 0

# Fight.CompliantVelocity
execute as @e[type=minecraft:player] if score @s ncmFailedFCV matches 1..4 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_50
execute as @e[type=minecraft:player] if score @s ncmFailedFCV matches 5..8 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_51
execute as @e[type=minecraft:player] if score @s ncmFailedFCV matches 9..10 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_52
#execute as @e[type=minecraft:player] if score @s ncmFailedFCV matches 1.. run kick @s[name=Yorb] NoCheatMinus: Your velocity is not compliant.
execute as @e[type=minecraft:player] if score @s ncmFailedFCV matches 1.. run scoreboard players set @s ncmFailedFCV 0

# Inventory.InstantBow
execute as @e[type=minecraft:player] if score @s ncmFailedIIB matches 1..4 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_53
execute as @e[type=minecraft:player] if score @s ncmFailedIIB matches 5..8 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_54
execute as @e[type=minecraft:player] if score @s ncmFailedIIB matches 9..10 run scoreboard players operation @s ncmLowerRep = DataHolder ncmc_bs_fl_55
#execute as @e[type=minecraft:player] if score @s ncmFailedIIB matches 1.. run kick @s[name=Yorb] NoCheatMinus: You are shooting projectiles too quickly.
execute as @e[type=minecraft:player] if score @s ncmFailedIIB matches 1.. run scoreboard players set @s ncmFailedIIB 0
