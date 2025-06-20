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
# Description: This funciton resets the player's statistics and their reputation.
# Author:      n33d4n4m3
# ...

# Statistics

$execute unless score $(reset) ncmRep matches -999999999..999999999 run tellraw @a[scores={ncmOperator=2}] ["",{"text":"NCM","color":"red"},{"text":": An operator attempted to reset the statistics and reputation of player ","color":"gray"},{"text":"$(reset)","color":"yellow"},{"text":", but their data isn't available.","color":"gray"}]
$execute unless score $(reset) ncmRep matches -999999999..999999999 run return run data remove storage ncm:stats reset


$scoreboard players operation $(reset) ncmRep = DataHolder ncmc_bs_rp_1
$scoreboard players reset $(reset) ncmFailCountBIMB
$scoreboard players reset $(reset) ncmFailCountBPMB
$scoreboard players reset $(reset) ncmFailCountBPAP
$scoreboard players reset $(reset) ncmFailCountFCC
$scoreboard players reset $(reset) ncmFailCountFRNG
$scoreboard players reset $(reset) ncmFailCountINVAP
$scoreboard players reset $(reset) ncmFailCountMVMSF
$scoreboard players reset $(reset) ncmFailCountMVMNF
$scoreboard players reset $(reset) ncmFailCountNETAP
$scoreboard players reset $(reset) ncmFailCountNETUP
$scoreboard players reset $(reset) ncmFailCountCMnchsn
$scoreboard players reset $(reset) ncmFailCountCBedLv
$scoreboard players reset $(reset) ncmFailCountMVMTS
$scoreboard players reset $(reset) ncmFailCountFWT
$scoreboard players reset $(reset) ncmFailCountFCV
$scoreboard players reset $(reset) ncmFailCountIIB
$scoreboard players reset $(reset) ncmFailCountFD
$scoreboard players reset $(reset) ncmFailCountCOMEX

$scoreboard players reset $(reset) ncmViolationCount
$scoreboard players reset $(reset) ncmViolationTimer
$scoreboard players reset $(reset) ncmTimeBetweenFailsSummedCount
$scoreboard players reset $(reset) ncmAverageLatencyLevel
$scoreboard players reset $(reset) ncmAveragePing
$scoreboard players reset $(reset) ncmLatencyLevelsSummedCount
$scoreboard players reset $(reset) ncmAverageTimeBetweenFails
$scoreboard players reset $(reset) ncmAverageTimeBetweenFailsInSeconds

$tellraw @a[scores={ncmOperator=2}] ["",{"text":"NCM","color":"red"},{"text":":","color":"gray"},{"text":" An operator has reset the statistics and reputation of player ","color":"gray","click_event":{"action":"suggest_command","command":"/data modify storage ncm:stats name set value "}},{"text":"$(reset)","color":"yellow"},{"text":".","color":"gray"}]
data remove storage ncm:stats reset