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
# Description: This funciton prints the player's check-specific statistics.
# Author:      n33d4n4m3
# ...

# Statistics

$execute unless score $(checkname) ncmRep matches -999999999..999999999 run tellraw @a[scores={ncmOperator=2}] ["",{"text":"NCM","color":"red"},{"text":": An operator attempted to retrieve the check-specific statistics of player ","color":"gray"},{"text":"$(checkname)","color":"yellow"},{"text":", but none are available.","color":"gray"}]
$execute unless score $(checkname) ncmRep matches -999999999..999999999 run return run data remove storage ncm:stats checkname

$tellraw @a[scores={ncmOperator=2}] ["",{"text":"Showing check-specific statistics of player ","color":"blue"},{"text":"$(checkname)","color":"yellow"},{"text":":","color":"blue"}]

$execute if score $(checkname) ncmFailCountMVMSF matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Movement.SurvivalFly: ","color":"gray"},{"score":{"name":"$(checkname)","objective":"ncmFailCountMVMSF"},"color":"yellow"},{"text":"x","color":"yellow"}]
$execute unless score $(checkname) ncmFailCountMVMSF matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Movement.SurvivalFly: ","color":"gray"},{"text":"/","color":"yellow"}]

$execute if score $(checkname) ncmFailCountMVMTS matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Movement.TickStride: ","color":"gray"},{"score":{"name":"$(checkname)","objective":"ncmFailCountMVMTS"},"color":"yellow"},{"text":"x","color":"yellow"}]
$execute unless score $(checkname) ncmFailCountMVMTS matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Movement.TickStride: ","color":"gray"},{"text":"/","color":"yellow"}]


$execute if score $(checkname) ncmFailCountMVMNF matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Movement.NoFall: ","color":"gray"},{"score":{"name":"$(checkname)","objective":"ncmFailCountMVMNF"},"color":"yellow"},{"text":"x","color":"yellow"}]
$execute unless score $(checkname) ncmFailCountMVMNF matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Movement.NoFall: ","color":"gray"},{"text":"/","color":"yellow"}]

$execute if score $(checkname) ncmFailCountFCC matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Fight.Criticals: ","color":"gray"},{"score":{"name":"$(checkname)","objective":"ncmFailCountFCC"},"color":"yellow"},{"text":"x","color":"yellow"}]
$execute unless score $(checkname) ncmFailCountFCC matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Fight.Criticals: ","color":"gray"},{"text":"/","color":"yellow"}]

$execute if score $(checkname) ncmFailCountFRNG matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Fight.Reach: ","color":"gray"},{"score":{"name":"$(checkname)","objective":"ncmFailCountFRNG"},"color":"yellow"},{"text":"x","color":"yellow"}]
$execute unless score $(checkname) ncmFailCountFRNG matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Fight.Reach: ","color":"gray"},{"text":"/","color":"yellow"}]

$execute if score $(checkname) ncmFailCountFD matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Fight.Direction: ","color":"gray"},{"score":{"name":"$(checkname)","objective":"ncmFailCountFD"},"color":"yellow"},{"text":"x","color":"yellow"}]
$execute unless score $(checkname) ncmFailCountFD matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Fight.Direction: ","color":"gray"},{"text":"/","color":"yellow"}]

$execute if score $(checkname) ncmFailCountFWT matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Fight.WrongTurn: ","color":"gray"},{"score":{"name":"$(checkname)","objective":"ncmFailCountFWT"},"color":"yellow"},{"text":"x","color":"yellow"}]
$execute unless score $(checkname) ncmFailCountFWT matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Fight.WrongTurn: ","color":"gray"},{"text":"/","color":"yellow"}]

$execute if score $(checkname) ncmFailCountFCV matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Fight.CompliantVelocity: ","color":"gray"},{"score":{"name":"$(checkname)","objective":"ncmFailCountFCV"},"color":"yellow"},{"text":"x","color":"yellow"}]
$execute unless score $(checkname) ncmFailCountFCV matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Fight.CompliantVelocity: ","color":"gray"},{"text":"/","color":"yellow"}]

tellraw @a[scores={ncmOperator=2}] {"text":"^ Press T to view the full statistics ^","color":"yellow"}


$execute if score $(checkname) ncmFailCountBIMB matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"BlockInteract.MissingBlock: ","color":"gray"},{"score":{"name":"$(checkname)","objective":"ncmFailCountBIMB"},"color":"yellow"},{"text":"x","color":"yellow"}]
$execute unless score $(checkname) ncmFailCountBIMB matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"BlockInteract.MissingBlock: ","color":"gray"},{"text":"/","color":"yellow"}]


$execute if score $(checkname) ncmFailCountBPAP matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"BlockPlace.Appropriate: ","color":"gray"},{"score":{"name":"$(checkname)","objective":"ncmFailCountBPAP"},"color":"yellow"},{"text":"x","color":"yellow"}]
$execute unless score $(checkname) ncmFailCountBPAP matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"BlockPlace.Appropriate: ","color":"gray"},{"text":"/","color":"yellow"}]


$execute if score $(checkname) ncmFailCountINVAP matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Inventory.Appropriate: ","color":"gray"},{"score":{"name":"$(checkname)","objective":"ncmFailCountINVAP"},"color":"yellow"},{"text":"x","color":"yellow"}]
$execute unless score $(checkname) ncmFailCountINVAP matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Inventory.Appropriate: ","color":"gray"},{"text":"/","color":"yellow"}]

$execute if score $(checkname) ncmFailCountIIB matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Inventory.InstantBow: ","color":"gray"},{"score":{"name":"$(checkname)","objective":"ncmFailCountIIB"},"color":"yellow"},{"text":"x","color":"yellow"}]
$execute unless score $(checkname) ncmFailCountIIB matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Inventory.InstantBow: ","color":"gray"},{"text":"/","color":"yellow"}]






$execute if score $(checkname) ncmFailCountCMnchsn matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Combined.Munchhausen: ","color":"gray"},{"score":{"name":"$(checkname)","objective":"ncmFailCountCMnchsn"},"color":"yellow"},{"text":"x","color":"yellow"}]
$execute unless score $(checkname) ncmFailCountCMnchsn matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Combined.Munchhausen: ","color":"gray"},{"text":"/","color":"yellow"}]

$execute if score $(checkname) ncmFailCountCBedLv matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Combined.BedLeave: ","color":"gray"},{"score":{"name":"$(checkname)","objective":"ncmFailCountCBedLv"},"color":"yellow"},{"text":"x","color":"yellow"}]
$execute unless score $(checkname) ncmFailCountCBedLv matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Combined.BedLeave: ","color":"gray"},{"text":"/","color":"yellow"}]

$execute if score $(checkname) ncmFailCountCOMEX matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Combined.Exploit: ","color":"gray"},{"score":{"name":"$(checkname)","objective":"ncmFailCountCOMEX"},"color":"yellow"},{"text":"x","color":"yellow"}]
$execute unless score $(checkname) ncmFailCountCOMEX matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Combined.Exploit: ","color":"gray"},{"text":"/","color":"yellow"}]

$execute if score $(checkname) ncmFailCountNETAP matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Network.Appropriate: ","color":"gray"},{"score":{"name":"$(checkname)","objective":"ncmFailCountNETAP"},"color":"yellow"},{"text":"x","color":"yellow"}]
$execute unless score $(checkname) ncmFailCountNETAP matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Network.Appropriate: ","color":"gray"},{"text":"/","color":"yellow"}]

$execute if score $(checkname) ncmFailCountNETUP matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Network.UnfittingPacket: ","color":"gray"},{"score":{"name":"$(checkname)","objective":"ncmFailCountNETUP"},"color":"yellow"},{"text":"x","color":"yellow"}]
$execute unless score $(checkname) ncmFailCountNETUP matches 1.. run tellraw @a[scores={ncmOperator=2}] ["",{"text":"Network.UnfittingPacket: ","color":"gray"},{"text":"/","color":"yellow"}]



data remove storage ncm:stats checkname